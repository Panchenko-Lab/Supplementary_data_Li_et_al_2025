# Open the cryo-ET map and the PDB
open cryo_ET_map_1.mrc
open tri-nuc_without_tail_frame1.pdb

volume #1 voxelSize 5.51

view #1,2

fitmap #2 inMap #1 resolution 16 search 1000 clusterAngle 200 clusterShift 24

save fitted_tri-nuc_without_tail_frame1.pdb models #2

save fitted_session.cxs
