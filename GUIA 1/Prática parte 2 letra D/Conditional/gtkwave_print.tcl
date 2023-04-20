# This is really useful open TCL script contribution from GlenNicholls obtained at: https://github.com/VUnit/vunit/issues/455
# Note hierarchy depth to display in waveform viewer
set depth 2

set top_level top; # change top only if applicable

# don't change this
set num_facs  [ gtkwave::getNumFacs ]
set dump_name [ gtkwave::getDumpFileName ]
set dmt       [ gtkwave::getDumpType ]

# create list with all elements
set elements [list]
for {set i 0} {$i < $num_facs} {incr i} {
    lappend elements [ gtkwave::getFacName $i ]
}

# Now display hierarchy depth in waveform viewer
set wave [list]
foreach element $elements {
  # initial length of element
  set i_len [string length $element]

  # final length of element after removing dots
  set f_len [string length [string map {. ""} $element]]

  # thus number of dots
  set n_dots [expr {$i_len-$f_len}]

  # if the number equals the required hierarchy, then we got one
  if {$n_dots == $depth} {
    lappend wave $element
  }
}

gtkwave::/Edit/Insert_Blank
# append all to waveform viewer
set num_added [ gtkwave::addSignalsFromList $wave ]
puts "$wave"

# The comand bellow was obtained from another useful TCL script from: https://ughe.github.io/2018/11/13/gtkwave-automation
# Zoom full
gtkwave::/Time/Zoom/Zoom_Full