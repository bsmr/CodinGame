# Auto-generated code below aims at helping you parse
# the standard input according to the problem statement.

# LX: the X position of the light of power
# LY: the Y position of the light of power
# TX: Thor's starting X position
# TY: Thor's starting Y position
read LX LY TX TY

# game loop
while true; do
    # E: The level of Thor's remaining energy, representing the number of moves he can still make.
    read E
    
    MX=""
    MY=""
    DX=$(($LX-$TX))
    DY=$(($LY-$TY))
    
    echo "DX=${DX},DY=${DY}" >&2
    
    if [ $DY -lt 0 ]
    then
        if [ $TY -lt 18 ]
        then
            MY="N"
            TY=$(($TY-1))
        fi
    else
        if [ $DY -gt 0 -a $TY -ge 0 ]
        then
            MY="S"
            TY=$(($TY+1))
        fi
    fi
    
    if [ $DX -lt 0 ]
    then
        if [ $TX -lt 40 ]
        then
            MX="W"
            TX=$(($TX-1))
        fi
    else
        if [ $DX -gt 0 -a $TX -ge 0 ]
        then
            MX="E"
            TX=$(($TX+1))
        fi
    fi

    # Write an action using echo
    # To debug: echo "Debug messages..." >&2

    echo "${MY}${MX}"
done
