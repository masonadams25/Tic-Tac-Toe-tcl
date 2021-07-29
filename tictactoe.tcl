#!/usr/bin/tclsh


proc wincheck {a b c} {
 if {$a == $b} {
        if {$b == $c} {
                if {$a == "X"} {
                        puts "X has won!"
                        exit
                } else {
                        puts "O has won!"
                        exit
                }
        }
 }
}

proc print {a} {
        set b ${a}
        puts $b
}


#Creates the empty board with a number from 0-8 corresponding to a place
for { set index 0 } { $index < 9 } { incr index } {
        set board($index) $index
}



#Prints out the board
puts " $board(0) | $board(1) |  $board(2)"
puts " $board(3) | $board(4) |  $board(5)"
puts " $board(6) | $board(7) |  $board(8)"

set move 1

# Takes in the users input for a move
while {$move >= 0 } {
        puts "Enter X's move"
        gets stdin move
        if {$move < 0} {
                exit
}
        set board($move) "X"

#Checks to see if someone has won
#rows
wincheck $board(0) $board(1) $board(2)
wincheck $board(3) $board(4) $board(5)
wincheck $board(6) $board(7) $board(8)

#collumns
wincheck $board(0) $board(3) $board(6)
wincheck $board(1) $board(4) $board(7)
wincheck $board(2) $board(5) $board(8)

#diagonals
wincheck $board(0) $board(4) $board(8)
wincheck $board(2) $board(4) $board(6)

#Prints the new board
puts " $board(0) | $board(1) |  $board(2)"
puts " $board(3) | $board(4) |  $board(5)"
puts " $board(6) | $board(7) |  $board(8)"

#Takes in the users input for a move
puts "Enter O's move"
        gets stdin move
        if {$move < 0} {
                exit
}
        set board($move) "O"

#Checks to see if someone has won
#rows
wincheck $board(0) $board(1) $board(2)
wincheck $board(3) $board(4) $board(5)
wincheck $board(6) $board(7) $board(8)

#collumns
wincheck $board(0) $board(3) $board(6)
wincheck $board(1) $board(4) $board(7)
wincheck $board(2) $board(5) $board(8)

#diagonals
wincheck $board(0) $board(4) $board(8)
wincheck $board(2) $board(4) $board(6)

#Prints the new board
puts " $board(0) | $board(1) |  $board(2)"
puts " $board(3) | $board(4) |  $board(5)"
puts " $board(6) | $board(7) |  $board(8)"


}

