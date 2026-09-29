scoreboard players set @s takis.unbreaking 0
execute store result score @s takis.unbreaking run data get entity @s equipment.mainhand.components."minecraft:enchantments"."minecraft:unbreaking"
scoreboard players set @s takis.threshold 1000
execute if score @s takis.unbreaking matches 1 run scoreboard players set @s takis.threshold 500
execute if score @s takis.unbreaking matches 2 run scoreboard players set @s takis.threshold 333
execute if score @s takis.unbreaking matches 3 run scoreboard players set @s takis.threshold 250
execute if score @s takis.unbreaking matches 4 run scoreboard players set @s takis.threshold 200
execute if score @s takis.unbreaking matches 5 run scoreboard players set @s takis.threshold 167
execute if score @s takis.unbreaking matches 6 run scoreboard players set @s takis.threshold 143
execute if score @s takis.unbreaking matches 7 run scoreboard players set @s takis.threshold 125
execute if score @s takis.unbreaking matches 8 run scoreboard players set @s takis.threshold 111
execute if score @s takis.unbreaking matches 9 run scoreboard players set @s takis.threshold 100
execute if score @s takis.unbreaking matches 10.. run scoreboard players set @s takis.threshold 91
execute store result score @s takis.roll run random value 1..1000
scoreboard players set @s takis.durability 0
execute store result score @s takis.durability run data get entity @s equipment.mainhand.components."minecraft:damage"
execute if score @s takis.roll <= @s takis.threshold if score @s takis.durability matches 63.. run playsound minecraft:entity.item.break player @s ~ ~ ~ 0.8 1.0
execute if score @s takis.roll <= @s takis.threshold if score @s takis.durability matches 63.. run item replace entity @s weapon.mainhand with minecraft:air
execute if score @s takis.roll <= @s takis.threshold if score @s takis.durability matches ..62 run item modify entity @s weapon.mainhand worldedit:damage
