# Player protection remains responsive, but the large lookup runs only after a
# chunk or dimension change.
execute as @a at @s run function kingdom:.dev/player/tick
