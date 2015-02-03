# The code below will read all the game information for you.
# On each game turn, information will be available on the standard input, you will be sent:
# -> the total number of visible enemies
# -> for each enemy, its name and distance from you
# The system will wait for you to write an enemy name on the standard output.
# Once you have designated a target:
# -> the cannon will shoot
# -> the enemies will move
# -> new info will be available for you to read on the standard input.


# game loop
while true; do
    closest_enemy=""
    min_dist=1000
    # count: The number of current enemy ships within range
    read count
    for (( i=0; i<count; i++ )); do
        # enemy: The name of this enemy
        # dist: The distance to your cannon of this enemy
        read enemy dist
        if [ $dist -lt $min_dist ] ; then
            min_dist=$dist
            closest_enemy=$enemy
        fi
    done

    # Write an action using echo
    # To debug: echo "Debug messages..." >&2

    echo $closest_enemy
done
