**Question 1(a):** কম্পিউটারের ফাংশনাল ইউনিট চিত্রসহ বর্ণনা করুন।  
**Translation:** Describe the functional units of a computer with a diagram.

#### **Description of Functional Units**

1. **Input Unit:** This unit is the gateway for feeding data and instructions into the computer system. It converts the input from a human-readable form (like keystrokes or mouse clicks) into a machine-understandable binary format.
    
    - **Function:** To accept data and instructions from the outside world.
        
    - **Examples:** Keyboard, mouse, scanner, microphone.
        
2. **Central Processing Unit (CPU):** Often called the "brain" of the computer, the CPU is the primary component that performs most of the processing. It interprets and executes program instructions. The CPU has two main components:
    
    - **Arithmetic Logic Unit (ALU):** The ALU performs all arithmetic operations (addition, subtraction, multiplication, division) and logical operations (comparisons like AND, OR, NOT, greater than, less than).
        
    - **Control Unit (CU):** The CU directs and coordinates the operations of the entire computer. It fetches instructions from memory, decodes them, and generates control signals to manage the flow of information between the CPU, memory, and I/O devices. It does not process data but acts as the system's manager.
        
3. **Memory Unit:** This unit stores data, instructions, and intermediate results of processing. It makes this information available to the CPU and other units as needed.
    
    - **Function:** To store information temporarily (in Primary Memory) or permanently (in Secondary Memory).
        
    - **Primary Memory (e.g., RAM):** This is the main, volatile memory where programs and data are stored while the CPU is actively using them.
        
    - **Secondary Memory (e.g., HDD, SSD):** This is non-volatile storage used to hold data and programs for the long term, even when the computer is turned off.
        
4. **Output Unit:** This unit presents the processed data (information) from the computer to the user. It converts the machine-coded results from binary form back into a human-readable format.
    
    - **Function:** To display or present the results of data processing.
        
    - **Examples:** Monitor (VDU), printer, speakers.

Of course. Here are the answers to the remaining questions, following the same format.

***

### **Question 1(b)**

**Original:** (খ) Volatile ও Non-volatile মেমরি কী? উদাহরণ দিন।
**Translation:** What are Volatile and Non-volatile memory? Give examples.
**Marks:** 2.5

#### **Answer:**

**Volatile Memory**
Volatile memory is a type of computer memory that requires a constant power supply to retain the stored information. If the power is interrupted or turned off, all data stored in it is lost. It is typically used for primary storage due to its high speed, allowing the CPU to access data and running programs quickly.

*   **Key Characteristic:** Data is temporary and is erased without power.
*   **Example:** **RAM (Random Access Memory)**. All the applications you are currently running and the files you have open are stored in RAM.

**Non-volatile Memory**
Non-volatile memory is a type of computer memory that can retain stored information even when it is not powered. This makes it suitable for long-term storage of data and programs.

*   **Key Characteristic:** Data is permanent and is retained even after the power is turned off.
*   **Examples:**
    *   **ROM (Read-Only Memory):** Contains firmware like the BIOS.
    *   **Hard Disk Drive (HDD):** Traditional magnetic storage.
    *   **Solid-State Drive (SSD):** Flash-based storage.
    *   **Flash Drives (Pen Drives)** and **SD Cards**.

---

### **Question 2(a)**

**Original:** (ক) ওয়েব ব্রাউজার এবং সার্চ ইঞ্জিনের মধ্যে পার্থক্যসমূহ লিখুন।
**Translation:** Write the differences between a web browser and a search engine.
**Marks:** 2.5

#### **Answer:**

The key differences between a web browser and a search engine are as follows:

| Basis of Difference | Web Browser | Search Engine |
| :--- | :--- | :--- |
| **Primary Function** | A software application used to access, retrieve, and display information from the World Wide Web. | A web-based tool or website that indexes web content and allows users to search for that information using keywords. |
| **Nature** | It is a client-side software program installed on a user's device (computer, phone). | It is a service, typically accessed through its website. It does not need to be installed. |
| **Dependency** | It can function without a search engine to directly access websites via their URLs. | It requires a web browser to be accessed and used by a user. |
| **Core Technology** | Renders HTML, CSS, and JavaScript to display web pages. | Uses complex algorithms (crawlers, indexers, and search algorithms) to find and rank web pages. |
| **Examples** | Google Chrome, Mozilla Firefox, Microsoft Edge, Safari. | Google, Bing, DuckDuckGo, Yahoo!. |

---

### **Question 2(b)**

**Original:** (খ) Spyware- এর কাজ কী? উদাহরণ দিন।
**Translation:** What is the function of Spyware? Give an example.
**Marks:** 2.5

#### **Answer:**

Spyware is a type of malicious software (malware) that secretly infects a computer and gathers information about a user, their computer activity, and their data without their consent or knowledge.

**Function of Spyware:**
The primary function of spyware is surveillance. It operates covertly in the background to:
*   **Monitor and Record Activity:** It can track browsing habits, search history, and websites visited.
*   **Log Keystrokes:** Keylogger spyware records every key pressed on the keyboard, which can capture sensitive information like passwords, credit card numbers, and private messages.
*   **Steal Personal Information:** It can scan files on the hard drive and steal personal data, contact lists, and financial information.
*   **Hijack System Settings:** Some spyware can change a browser's homepage or search settings and redirect the user to malicious websites.

The collected information is then transmitted to a third party, who may use it for identity theft, financial fraud, or to sell to advertisers.

**Example:**
A well-known and sophisticated example of spyware is **Pegasus**, developed by the NSO Group. It can be covertly installed on mobile phones and is capable of harvesting a vast amount of data, including texts, emails, and calls, as well as secretly activating the phone's microphone and camera.

---

### **Question 3(a)**

**Original:** (ক) অথেন্টিকেশন বলতে কী বোঝায়? টু-ফ্যাক্টর অথেন্টিকেশনের বর্ণনা দিন।
**Translation:** What is meant by authentication? Describe Two-Factor Authentication (2FA).
**Marks:** 2.5

#### **Answer:**

**Authentication**
Authentication is the process of verifying the identity of a user, process, or device. It is a security measure designed to confirm that an entity is who or what it claims to be, typically as a prerequisite for granting access to secured systems or resources.

**Two-Factor Authentication (2FA)**
Two-Factor Authentication (2FA) is an enhanced security method that requires a user to provide two different types of evidence—or factors—to prove their identity. A password alone is a single factor. 2FA adds a second layer of security, making it much harder for an unauthorized person to gain access.

The three common categories of authentication factors are:
1.  **Knowledge Factor:** Something only the user knows (e.g., a password, PIN).
2.  **Possession Factor:** Something only the user has (e.g., a mobile phone, a hardware security key, a smart card).
3.  **Inherence Factor:** Something the user is (e.g., a fingerprint, facial recognition, voiceprint).

In a typical 2FA setup, a user first enters their password (first factor). Then, they must provide a second factor, such as a one-time code sent to their phone (possession factor), before access is granted.

---

### **Question 3(b)**

**Original:** (খ) ডিজিটাল সিগনেচার এবং প্রচলিত সিগনেচারের মধ্যে পার্থক্য লিখুন।
**Translation:** Write the differences between a digital signature and a conventional (handwritten) signature.
**Marks:** 2.5

#### **Answer:**

| Basis of Difference | Digital Signature | Conventional (Handwritten) Signature |
| :--- | :--- | :--- |
| **Form** | It is a cryptographic, mathematical scheme used to verify the authenticity of digital messages or documents. It is not visible. | It is a physical, handwritten depiction of a person's name or a unique mark on a physical document. |
| **Security** | Highly secure. It is tamper-evident; any change to the document after signing invalidates the signature. | Can be forged or copied. It is difficult to detect minor alterations to the document after signing. |
| **Verification** | Verified by a mathematical algorithm using the signer's public key. The verification process is automated and reliable. | Verified by visual comparison, often by a human expert. This process is subjective and can be prone to error. |
| **Purpose & Information** | Verifies the **authenticity** (who sent it), **integrity** (it wasn't altered), and **non-repudiation** (the sender cannot deny sending it). | Primarily indicates the signer's identity and their intent or consent regarding the document's content. |
| **Appearance** | It is an electronic code attached to the data, not a visual representation of a signature (though it can be linked to one). | It has a unique visual appearance specific to the individual. |

---

### **Question 4(a)**

**Original:** (ক) একটি কম্পিউটার সিস্টেমে BIOS- এর মূল ভূমিকা কী কী?
**Translation:** What are the main roles of BIOS in a computer system?
**Marks:** 2.5

#### **Answer:**

The BIOS (Basic Input/Output System) is firmware stored on a chip on the computer's motherboard. Its main roles are critical for starting the computer and managing hardware.

The key roles of the BIOS are:
1.  **POST (Power-On Self-Test):** When the computer is turned on, the BIOS performs a diagnostic test of the major hardware components, such as the CPU, memory (RAM), keyboard, and storage drives, to ensure they are working correctly.
2.  **Bootstrap Loader:** After the POST is successfully completed, the BIOS locates the operating system on a storage device (like an SSD or HDD) and loads its initial files (the bootloader) into the system's RAM. This process hands over control of the computer to the operating system.
3.  **Low-Level Hardware Initialization:** The BIOS contains basic drivers that allow the CPU to communicate with essential hardware components like the keyboard, mouse, and display screen before the operating system's more advanced drivers are loaded.
4.  **System Configuration (CMOS Setup):** The BIOS provides a user-accessible interface (the CMOS setup utility) to configure hardware settings, such as the system date and time, boot device order, and other low-level system parameters. These settings are stored in a special battery-backed memory called CMOS RAM.

---

### **Question 4(b)**

**Original:** (খ) কম্পিউটারের ALU- এর মূল কাজ কী?
**Translation:** What is the main function of a computer's ALU?
**Marks:** 2.5

#### **Answer:**

The Arithmetic Logic Unit (ALU) is a fundamental digital circuit within the Central Processing Unit (CPU) of a computer. It is the component responsible for performing all the computational tasks.

The main functions of the ALU are divided into two categories:

1.  **Arithmetic Operations:** The ALU performs all basic mathematical calculations on binary data. This includes:
    *   **Addition**
    *   **Subtraction**
    *   **Multiplication**
    *   **Division**
    *   Operations like increment (add one) and decrement (subtract one).

2.  **Logical Operations:** The ALU performs logical comparisons and manipulations, which are essential for decision-making within a program. These operations include:
    *   **Comparisons:** Determining if one value is greater than, less than, or equal to another.
    *   **Boolean Logic:** Performing operations such as **AND**, **OR**, **NOT**, and **XOR**.

In essence, the ALU is the "calculator" of the CPU, executing all the arithmetic and logical instructions passed to it by the Control Unit.

---

### **Question 5(a)**

**Original:** (ক) উদাহরণসহ সিস্টেম সফটওয়্যার এবং অ্যাপ্লিকেশন সফটওয়্যারের মধ্যে পার্থক্য লিখুন।
**Translation:** Write the differences between system software and application software with examples.
**Marks:** 2.5

#### **Answer:**

| Basis of Difference | System Software | Application Software |
| :--- | :--- | :--- |
| **Primary Purpose** | Designed to manage and control the computer's hardware and provide a platform for application software to run. | Designed to perform specific tasks for the end-user. It helps users accomplish activities like writing, browsing, or calculating. |
| **Interaction** | Interacts directly with the computer hardware. It runs in the background and is generally not directly used by the end-user. | Interacts with the user. Users directly run and use these programs to get their work done. |
| **Dependency** | Application software is dependent on system software to function. It cannot run without an operating system. | System software is independent and can run without any application software installed. |
| **Generality** | It is general-purpose and essential for the basic functioning of the computer. | It is specific-purpose, and its installation is based on the user's needs. The computer can function without it. |
| **Examples** | **Operating Systems** (Windows, macOS, Linux), **Device Drivers**, **Firmware** (BIOS), **Utility Programs** (Antivirus, Disk Defragmenter). | **Word Processors** (MS Word), **Web Browsers** (Chrome), **Spreadsheet Software** (MS Excel), **Media Players** (VLC), **Games**. |

---

### **Question 5(b)**

**Original:** (খ) Database এ Primary key কেন ব্যবহার হয়? ব্যাখ্যা করুন।
**Translation:** Why is a Primary Key used in a Database? Explain.
**Marks:** 2.5

#### **Answer:**

A Primary Key is a special relational database table column (or combination of columns) designated to uniquely identify each record (row) in that table. It is used for several crucial reasons:

1.  **Ensuring Unique Identification:** The main purpose of a primary key is to guarantee that every record in a table is unique. It enforces entity integrity by not allowing duplicate or NULL (empty) values in the primary key column. This prevents data redundancy and ensures data accuracy.

2.  **Establishing Relationships:** Primary keys are fundamental to creating relationships between tables. A primary key from one table can be used as a **Foreign Key** in another table. This link allows data from multiple tables to be combined logically, which is the foundation of a relational database. For example, a `CustomerID` primary key in a `Customers` table can be used as a foreign key in an `Orders` table to link each order to a specific customer.

3.  **Faster Data Retrieval:** Database systems automatically create an index on the primary key column. An index works like an index in a book, allowing the database to find and retrieve specific rows much faster, which significantly improves the performance of search queries and data sorting operations.

---

### **Question 6(a)**

**Original:** (ক) ট্রান্সফরমারের কার্যপ্রণালি চিত্রসহ ব্যাখ্যা করুন।
**Translation:** Explain the working principle of a transformer with a diagram.
**Marks:** 2.5

#### **Answer:**

The working principle of a transformer is **mutual induction**. It is a static device that transfers electrical energy from one circuit to another through electromagnetic induction, usually with a change in voltage and current levels.

**Working Principle:**
A transformer consists of two insulated coils of wire, the **primary winding** and the **secondary winding**, wound on a common laminated soft iron core.

1.  When an alternating voltage (AC) source is connected to the primary winding, it drives an alternating current through it.
2.  This alternating current produces a continuously changing magnetic flux in the iron core.
3.  The soft iron core concentrates this changing magnetic flux and links it with the secondary winding.
4.  According to Faraday's Law of Electromagnetic Induction, this changing magnetic flux induces an alternating electromotive force (EMF), or voltage, across the secondary winding.

The ratio of the secondary voltage to the primary voltage is equal to the ratio of the number of turns in the secondary winding to the number of turns in the primary winding.

**Diagram:**

```mermaid
graph TD
    subgraph Transformer
        direction LR
        P[Primary Winding <br> (Np turns)]
        S[Secondary Winding <br> (Ns turns)]
        Core((Laminated Iron Core))
    end
    
    AC_In[AC Input Voltage <br> (Vp)] --> P
    S --> Load[AC Output Voltage <br> (Vs) <br> to Load]
    P -- Magnetic Flux (Φ) --> Core
    Core -- Magnetic Flux (Φ) --> S
    
    linkStyle 2 stroke-width:2px,stroke-dasharray: 5 5,stroke:blue;
    linkStyle 3 stroke-width:2px,stroke-dasharray: 5 5,stroke:blue;
```
*   If Ns > Np, it is a **step-up transformer** (Vs > Vp).
*   If Ns < Np, it is a **step-down transformer** (Vs < Vp).

---

### **Question 6(b)**

**Original:** (খ) npn ট্রানজিস্টর কেন উচ্চ ফ্রিকোয়েন্সির বর্তনীতে ব্যবহার করা হয়?
**Translation:** Why is an NPN transistor used in high-frequency circuits?
**Marks:** 2.5

#### **Answer:**

NPN transistors are generally preferred over PNP transistors for use in high-frequency circuits primarily due to the **higher mobility of electrons** compared to holes.

**Explanation:**
1.  **Charge Carriers:** In an NPN transistor, the majority charge carriers responsible for conducting current are **electrons**. In a PNP transistor, the majority charge carriers are **holes** (the absence of an electron).

2.  **Mobility:** Electrons are subatomic particles with very low mass. Holes, while a conceptual representation, behave as positive charge carriers and have a much lower effective mobility because their movement involves the sequential shifting of electrons from one covalent bond to another. Electrons can move more freely and quickly through the semiconductor crystal lattice than holes. In silicon, the mobility of electrons is roughly 2 to 3 times greater than that of holes.

3.  **High-Frequency Performance:** A transistor's ability to operate at high frequencies depends on how quickly its charge carriers can travel across the base region. Because electrons in an NPN transistor move faster, the transistor can switch on and off more rapidly. This results in a shorter transit time, a higher cutoff frequency (fT), and better amplification performance for high-frequency signals. Therefore, NPN transistors provide superior speed and gain in high-frequency applications like amplifiers and oscillators.

---

### **Question 7(a)**

**Original:** (ক) আদর্শ ভোল্টেজ উৎস বলতে কী বুঝায়? ব্যাখ্যা করুন।
**Translation:** What is meant by an ideal voltage source? Explain.
**Marks:** 2.5

#### **Answer:**

An **ideal voltage source** is a theoretical two-terminal circuit element that provides a constant, specified voltage across its terminals regardless of the amount of current drawn from it or the load resistance connected to it.

**Explanation:**
The key characteristic of an ideal voltage source is that it has **zero internal resistance (R_internal = 0)**.

In the real world, all practical voltage sources (like batteries or power supplies) have some amount of internal resistance. This internal resistance causes a voltage drop within the source itself when current flows. The terminal voltage (V_terminal) of a real source is given by the equation:
`V_terminal = V_ideal - I * R_internal`

For an ideal source, since `R_internal = 0`, the equation becomes:
`V_terminal = V_ideal`

This means an ideal voltage source can supply any amount of current without its terminal voltage changing. While no such source exists in reality, the concept is extremely useful in circuit analysis and theory because it simplifies calculations and helps in understanding the fundamental behavior of circuits. A good quality real-world power supply is designed to have a very low internal resistance to approximate an ideal source.

---

### **Question 7(b)**

**Original:** (খ) বিভিন্ন ধরনের সার্কিট ব্রেকারের কার্যাবলি ব্যাখ্যা করুন।
**Translation:** Explain the function of different types of circuit breakers.
**Marks:** 2.5

#### **Answer:**

A circuit breaker is an automatic electrical switch designed to protect an electrical circuit from damage caused by excess current from an overload or a short circuit. Its basic function is to interrupt the current flow after a fault is detected. Different types of circuit breakers use different mechanisms to detect and interrupt faults.

Here are the functions of some common types:

1.  **Thermal Circuit Breaker:**
    *   **Function:** Protects against **overloads**. It uses a bimetallic strip composed of two different metals bonded together. When a sustained overcurrent flows, the strip heats up and bends due to the different thermal expansion rates of the metals. This bending action trips a spring-loaded switch, opening the circuit. They are slow-acting and do not trip on brief, harmless current surges.

2.  **Magnetic Circuit Breaker:**
    *   **Function:** Protects against **short circuits**. It uses an electromagnet (solenoid). A large and sudden surge in current, typical of a short circuit, creates a strong magnetic field in the solenoid. This field instantly pulls a plunger or armature, which trips the switch mechanism and breaks the circuit very quickly.

3.  **Thermal-Magnetic Circuit Breaker (MCB):**
    *   **Function:** Provides dual protection against both **overloads and short circuits**. This is the most common type used in homes and businesses. It combines both a bimetallic strip (for thermal overload protection) and a solenoid (for magnetic short-circuit protection) in a single unit, offering comprehensive circuit safety.

---

### **Question 8(a)**

**Original:** (ক) Kirchhoff এর সূত্রসমূহ বিবৃত ও ব্যাখ্যা করুন।
**Translation:** State and explain Kirchhoff's laws.
**Marks:** 2.5

#### **Answer:**

Kirchhoff's laws are two fundamental rules that govern the conservation of charge and energy in electrical circuits.

**1. Kirchhoff's Current Law (KCL) - The First Law**

*   **Statement:** The algebraic sum of all currents entering and leaving a node (or junction) in a circuit is equal to zero.
*   **Explanation:** This law is based on the **principle of conservation of charge**. It means that charge cannot accumulate at a junction. Therefore, the total amount of current flowing into any node must be exactly equal to the total amount of current flowing out of that same node.
    *   Mathematically: `ΣI_in = ΣI_out` or `ΣI_node = 0`.

**2. Kirchhoff's Voltage Law (KVL) - The Second Law**

*   **Statement:** The algebraic sum of all the voltages around any closed loop or path in a circuit is equal to zero.
*   **Explanation:** This law is based on the **principle of conservation of energy**. It implies that if you start at any point in a closed loop and travel around it, the sum of all the voltage drops (across resistors, etc.) must be equal to the sum of all the voltage rises (from sources like batteries). By the time you return to the starting point, the net change in electrical potential must be zero.
    *   Mathematically: `ΣV_loop = 0` or `ΣV_rises = ΣV_drops`.

---

### **Question 8(b)**

**Original:** (খ) Kirchhoff এর সূত্র ব্যবহার করে হুইটস্টোন ব্রিজ নীতি প্রতিপাদন করুন।
**Translation:** Derive the Wheatstone bridge principle using Kirchhoff's laws.
**Marks:** 2.5

#### **Answer:**

A Wheatstone bridge is a circuit used to measure an unknown electrical resistance. Its principle can be derived using Kirchhoff's laws.

**Circuit Diagram:**
A Wheatstone bridge consists of four resistors (R₁, R₂, R₃, and Rₓ), a galvanometer (G), and a voltage source (E).

```
      A
     / \
    /   \
   R₁    R₂
  /       \
 /         \
B-----(G)----D
 \         /
  \       /
   R₃    Rₓ
    \   /
     \ /
      C
      |
     (E)
      |
```

**Derivation:**
The bridge is said to be **balanced** when no current flows through the galvanometer (Ig = 0). This occurs when the potential at node B is equal to the potential at node D (V_B = V_D).

Let's apply Kirchhoff's laws to the circuit under this balanced condition:

1.  **Apply KVL to loop ABDA:**
    Starting from A and moving clockwise:
    `-(I₁ * R₁) + (Ig * G) + (I₂ * R₂) = 0`
    Since the bridge is balanced, `Ig = 0`. The equation simplifies to:
    `-(I₁ * R₁) + (I₂ * R₂) = 0`
    **`I₁ * R₁ = I₂ * R₂` — (Equation 1)**

2.  **Apply KVL to loop BCDB:**
    Starting from B and moving clockwise:
    `-(I₃ * R₃) + (I₄ * Rₓ) - (Ig * G) = 0`
    Since `Ig = 0`, the equation becomes:
    `-(I₃ * R₃) + (I₄ * Rₓ) = 0`
    **`I₃ * R₃ = I₄ * Rₓ` — (Equation 2)**

3.  **Apply KCL at nodes B and D:**
    *   At node B: `I₁ = Ig + I₃`. Since `Ig = 0`, then `I₁ = I₃`.
    *   At node D: `I₂ + Ig = I₄`. Since `Ig = 0`, then `I₂ = I₄`.

4.  **Combine the Equations:**
    Now, divide Equation 1 by Equation 2:
    `(I₁ * R₁) / (I₃ * R₃) = (I₂ * R₂) / (I₄ * Rₓ)`

    Substitute `I₁ = I₃` and `I₂ = I₄` into the equation:
    `(I₁ * R₁) / (I₁ * R₃) = (I₂ * R₂) / (I₂ * Rₓ)`

    The currents `I₁` and `I₂` cancel out, leaving the condition for a balanced bridge:
    **`R₁ / R₃ = R₂ / Rₓ`**

This is the principle of the Wheatstone bridge. If three resistances are known, the fourth unknown resistance (Rₓ) can be calculated.