execute if score @s takis.scuba.wet matches 0 run function scuuuba:.dev/start
execute if score @s takis.scuba.time matches 1.. run scoreboard players add @s takis.scuba.tick 1
execute if score @s takis.scuba.time matches 1.. if score @s takis.scuba.tick matches 20.. run function scuuuba:.dev/countdown
execute if score @s takis.scuba.time matches 0 store result score @s takis.scuba.air run data get entity @s Air
execute if score @s takis.scuba.time matches 0 if score @s takis.scuba.air matches ..0 run effect give @s minecraft:resistance 2 4 true
execute if score @s takis.scuba.time matches 0 if score @s takis.scuba.air matches ..0 run scoreboard players add @s takis.scuba.tick 1
execute if score @s takis.scuba.time matches 0 if score @s takis.scuba.air matches 1.. run scoreboard players set @s takis.scuba.tick 0
execute if score @s takis.scuba.tick matches 20.. run function scuuuba:.dev/damage
