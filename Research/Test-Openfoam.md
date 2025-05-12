#### flameSpreadWaterSuppressionPanel

blockMesh
topoSet
createPatch -overwrite
extrudeToRegionMesh -dict system/extrudeToRegionMeshDictFilm -overwrite 
[Common Applications: Thin Film Coatings: Simulate fluid flow or heat transfer in a thin layer.]
fireFoam

