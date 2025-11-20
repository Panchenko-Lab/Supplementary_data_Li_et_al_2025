### NOTE: Supplementary data for manuscript "Molecular Dynamics-Guided All-Atom Reconstruction of Cryo-ET Maps Reveals Mechanisms of Histone Tail-Mediated Chromatin Compaction" by Li_et_al_2025


This repository contains supplementary data for "Molecular Dynamics-Guided All-Atom Reconstruction of Cryo-ET Maps Reveals Mechanisms of Histone Tail-Mediated Chromatin Compaction" by Li et al.


### Software requirements and versions
Linux: Ubuntu 22.04.5 LTS 
UCSF ChimeraX version 1.7 is available at https://www.cgl.ucsf.edu/chimerax/ <br />
VMD version 1.9.3 is available at https://www.ks.uiuc.edu/Research/vmd/ <br />

### Demo
- `1. Open ChimeraX 1.7`
- `2. Import pdb and cryo-ET map.mrc files: demo/MD_frame1.pdb and demo/cryo_ET_map_1.mrc`
- `3. Set up the voxel Size in the command window: volume #1 voxelSize 6.65`
- `4. Do fitmap in the command window: fitmap #2 inMap #1 resolution 16 search 1000 clusterAngle 200 clusterShift 24`
- `5. Save the appropriate pdb conformation after fitting.`





