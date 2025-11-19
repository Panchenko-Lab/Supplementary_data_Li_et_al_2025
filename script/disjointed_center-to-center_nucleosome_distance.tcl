set mol [mol new md.pdb type pdb waitfor all]
mol addfile md_traj.xtc type xtc waitfor all mol $mol

set sel1 [atomselect $mol "serial 42680 to 54585"]
set sel2 [atomselect $mol "serial 54586 to 66491"]

set nframes [molinfo $mol get numframes]

set outfile [open "com_dist_nuc1_nuc3.dat" w]
puts $outfile "# frame\tCOM_distance_Angstrom"

for {set i 0} {$i < $nframes} {incr i} {
    $sel1 frame $i
    $sel2 frame $i

    set com1 [measure center $sel1 weight mass]
    set com2 [measure center $sel2 weight mass]

    # Distance between COMs
    set diff [vecsub $com1 $com2]
    set dist [veclength $diff]

    # Write: frame_index   distance(Å)
    puts $outfile "$i\t$dist"
}

close $outfile

$sel1 delete
$sel2 delete

quit
