execute store result score @s takis.roll run random value 1..4
execute if score @s takis.roll matches 1 run function worldedit:.dev/durability/damage/mainhand
