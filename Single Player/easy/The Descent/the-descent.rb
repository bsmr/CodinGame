STDOUT.sync = true # DO NOT REMOVE
# Auto-generated code below aims at helping you parse
# the standard input according to the problem statement.

# game loop
loop do
    $SX, $SY = gets.split(" ").collect {|x| x.to_i}

    $MAX_HEIGHT = 0
    $MAX_INDEX  = nil
    
    8.times do |idx|
        # represents the height of one mountain, from 9 to 0. Mountain heights are provided from left to right.
        $MH = gets.to_i
        if $MH > $MAX_HEIGHT
            $MAX_HEIGHT = $MH
            $MAX_INDEX = idx
        end
    end
    
    # Write an action using puts
    # To debug: STDERR.puts "Debug messages..."
    #STDERR.puts "SX:#{$SX}, SY:#{$SY}, MAX_INDEX:#{$MAX_INDEX}"
    
    #puts "HOLD" # either:  FIRE (ship is firing its phase cannons) or HOLD (ship is not firing).
    if $SX === $MAX_INDEX
        puts "FIRE"
    else
        puts "HOLD"
    end
end
