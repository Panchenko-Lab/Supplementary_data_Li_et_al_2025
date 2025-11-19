# Load structure and trajectory
set mol [mol new md.pdb type pdb waitfor all]
mol addfile md_traj.xtc type xtc waitfor all mol $mol

set sel_nuc1 [atomselect $mol "(serial 42680 to 54585) or (serial 11907 to 16558)"]

set nframes [molinfo $mol get numframes]

set outfile [open "rg_nuc1.dat" w]
puts $outfile "# frame\tRg_nuc1_Angstrom"

for {set i 0} {$i < $nframes} {incr i} {
    $sel_nuc1 frame $i

    set rg [measure rgyr $sel_nuc1 weight mass]

    puts $outfile "$i\t$rg"
}

close $outfile

$sel_nuc1 delete
quit
