loot give @s loot godgift:book
tellraw @a [{"text":"The Book from God was given to ","color":"gold","bold":true},{"selector":"@s","color":"yellow"},{"text":".","color":"gold"}]
execute as @a at @s run playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 1 1
