# Auto-generated code below aims at helping you parse
# the standard input according to the problem statement.

# R: the length of the road before the gap.
read R
# G: the length of the gap.
read G
# L: the length of the landing platform.
read L

# game loop
while true
do
    # S: the motorbike's speed.
    read S
    # X: the position on the road of the motorbike.
    read X
    
    ACT="JUMP"
    
    T=$(( $G + 1 ))
    if [ $(( $X + $S )) -lt $(( $R + $G )) ]
    then
        ACT="WAIT"
        
        if [ $S -lt $T ]
        then
            ACT="SPEED"
        fi
        
        if [ $S -gt $T ]
        then
            ACT="SLOW"
        fi
    fi
    
    if [ $X -gt $R ]
    then
        ACT="SLOW"
    fi
    
    echo $ACT
done
