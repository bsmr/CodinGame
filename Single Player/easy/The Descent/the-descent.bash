# Auto-generated code below aims at helping you parse
# the standard input according to the problem statement.

# game loop
while true; do
    read SX SY
    MAX_HEIGHT=0
    MAX_INDEX=""
    for (( i=0; i<8; i++ )); do
        # MH: represents the height of one mountain, from 9 to 0. Mountain heights are provided from left to right.
        read MH
        if [ $MH -gt $MAX_HEIGHT ]
        then
            MAX_HEIGHT=$MH
            MAX_INDEX=$i
        fi
    done

    #echo "HOLD" # either:  FIRE (ship is firing its phase cannons) or HOLD (ship is not firing).
    if [ "$SX" = "$MAX_INDEX" ]
    then
        echo "FIRE"
    else
        echo "HOLD"
    fi
done
