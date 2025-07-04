Nvidia Physicsnemo's vortex_shedding with mgn work on my pc after so many tweaking. Now I have use other data and modify the code.

### our packages
1. pytorch 2.4.0 + cuda 12.4
2. dgl for 2.4.0 + cuda 12.4
3. torch-scatter for torch 2.4.0 + cuda 12.4


| torch           | 2.4.0+cu124     |
| --------------- | --------------- |
| torch_cluster   | 1.6.3+pt24cu124 |
| torch-geometric | 2.6.1           |
| torch_scatter   | 2.1.2+pt24cu124 |


<H1> <center>Python 3.11 </H1></center>

```bash
pip install torch==2.4.0 torchvision==0.19.0 torchaudio==2.4.0 --index-url https://download.pytorch.org/whl/cu124
```

```bash
pip install  dgl -f https://data.dgl.ai/wheels/torch-2.4/cu124/repo.html
```

```bash
pip install torch-scatter -f https://data.pyg.org/whl/torch-2.4.0+cu124.html
```

For Mac
```zsh
pip install torch-scatter -f https://data.pyg.org/whl/torch-2.2.2+cpu.html
```

```bash
pip install torch_geometric
```

<center><b>requirement text</center></b>

```
torch==2.4.0 torchvision==0.19.0 torchaudio==2.4.0 --index-url https://download.pytorch.org/whl/cu124
dgl -f https://data.dgl.ai/wheels/torch-2.4/cu124/repo.html
torch-scatter -f https://data.pyg.org/whl/torch-2.4.0+cu124.html
torch_geometric
matplotlib
```

<center><b>suppress all tensorflow warnings</center></b>

```
os.environ['TF_CPP_MIN_LOG_LEVEL'] = '3'
```

<center><h1>.tfrecord file keys</center></h1>
Feature keys found in the first record:
- node_type
- pressure
- cells
- mesh_pos
- velocity



node_type: shape=(1923,)
pressure: shape=(1153800,)
cells: shape=(10836,)
mesh_pos: shape=(3846,)
velocity: shape=(2307600,)

```python
import os
os.environ['TF_CPP_MIN_LOG_LEVEL'] = '3'
import tensorflow as tf
import numpy as np

def get_shape_of_bytes_feature(value_bytes, dtype=np.float32):
    array = np.frombuffer(value_bytes, dtype=dtype)
    return array.shape, array

# Load your TFRecord file
raw_dataset = tf.data.TFRecordDataset('test.tfrecord')

# Inspect shapes from first record
for raw_record in raw_dataset.take(1):
    example = tf.train.Example()
    example.ParseFromString(raw_record.numpy())

    for key, feature in example.features.feature.items():
        kind = feature.WhichOneof("kind")
        value = getattr(feature, kind).value[0]  # usually just one entry per key
        if kind == "bytes_list":
            shape, decoded = get_shape_of_bytes_feature(value)
            print(f"{key}: shape={shape}")
        else:
            print(f"{key}: shape=({len(getattr(feature, kind).value)},) [type: {kind}]")
```

<center>to see some .tfrecord file data</center>

```python
import tensorflow as tf
import pandas as pd
import numpy as np

# Adjust your feature description to your TFRecord's keys & types
feature_description = {
    'node_type': tf.io.FixedLenFeature([], tf.string),
    'pressure': tf.io.FixedLenFeature([], tf.string),
    'velocity': tf.io.FixedLenFeature([], tf.string),
    'mesh_pos': tf.io.FixedLenFeature([], tf.string),
    'cells': tf.io.FixedLenFeature([], tf.string),
}

def _parse_function(example_proto):
    return tf.io.parse_single_example(example_proto, feature_description)

def decode_bytes_feature(value_bytes, dtype=np.float32):
    return np.frombuffer(value_bytes, dtype=dtype)

tfrecord_path = 'your_file.tfrecord'
raw_dataset = tf.data.TFRecordDataset(tfrecord_path)
parsed_dataset = raw_dataset.map(_parse_function)

records = []
for parsed_record in parsed_dataset.take(10):  # adjust number of records
    record = {}
    for key in feature_description:
        raw_value = parsed_record[key].numpy()
        if feature_description[key].dtype == tf.string:
            # decode bytes to float array or keep as string based on key
            if key == 'node_type':  # example of a string label
                record[key] = raw_value.decode('utf-8')
            else:
                record[key] = decode_bytes_feature(raw_value).tolist()
        else:
            record[key] = raw_value
    records.append(record)

df = pd.DataFrame(records)
print(df)
```

<center>Conversion Script</center>
```python
import tensorflow as tf
import h5py

tfrecord_path = 'your_data.tfrecord'
h5_path = 'converted_data.h5'

feature_description = {
    'node_type': tf.io.FixedLenFeature([], tf.string),
    'pressure': tf.io.FixedLenFeature([], tf.string),
    'cells': tf.io.FixedLenFeature([], tf.string),
    'mesh_pos': tf.io.FixedLenFeature([], tf.string),
    'velocity': tf.io.FixedLenFeature([], tf.string),
}

def _parse_function(example_proto):
    parsed = tf.io.parse_single_example(example_proto, feature_description)

    node_type = tf.io.decode_raw(parsed['node_type'], tf.float32)
    pressure = tf.io.decode_raw(parsed['pressure'], tf.float32)
    cells = tf.io.decode_raw(parsed['cells'], tf.int32)
    mesh_pos = tf.io.decode_raw(parsed['mesh_pos'], tf.float32)
    velocity = tf.io.decode_raw(parsed['velocity'], tf.float32)

    return {
        'node_type': node_type,
        'pressure': pressure,
        'cells': cells,
        'mesh_pos': mesh_pos,
        'velocity': velocity,
    }

dataset = tf.data.TFRecordDataset(tfrecord_path)
dataset = dataset.map(_parse_function)

with h5py.File(h5_path, 'w') as hf:
    for i, record in enumerate(dataset):
        hf.create_dataset(f'node_type_{i}', data=record['node_type'].numpy())
        hf.create_dataset(f'pressure_{i}', data=record['pressure'].numpy())
        hf.create_dataset(f'cells_{i}', data=record['cells'].numpy())
        hf.create_dataset(f'mesh_pos_{i}', data=record['mesh_pos'].numpy())
        hf.create_dataset(f'velocity_{i}', data=record['velocity'].numpy())

```

<center>Too see .h5  data</center>
```python
import h5py

h5_path = 'your_file.h5'

with h5py.File(h5_path, 'r') as hf:
    keys = list(hf.keys())
    print("Keys in the HDF5 file:")
    for k in keys:
        print(f" - {k}")
```
