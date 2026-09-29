scoreboard players set @s takis.scuba.tick 0
scoreboard players set @s takis.unbreaking 0
execute store result score @s takis.unbreaking run data get entity @s equipment.head.components."minecraft:enchantments"."minecraft:unbreaking"
scoreboard players set @s takis.threshold 1000
execute if score @s takis.unbreaking matches 1 run scoreboard players set @s takis.threshold 800
execute if score @s takis.unbreaking matches 2 run scoreboard players set @s takis.threshold 733
execute if score @s takis.unbreaking matches 3 run scoreboard players set @s takis.threshold 700
execute if score @s takis.unbreaking matches 4 run scoreboard players set @s takis.threshold 680
execute if score @s takis.unbreaking matches 5 run scoreboard players set @s takis.threshold 667
execute if score @s takis.unbreaking matches 6 run scoreboard players set @s takis.threshold 657
execute if score @s takis.unbreaking matches 7 run scoreboard players set @s takis.threshold 650
execute if score @s takis.unbreaking matches 8 run scoreboard players set @s takis.threshold 644
execute if score @s takis.unbreaking matches 9 run scoreboard players set @s takis.threshold 640
execute if score @s takis.unbreaking matches 10.. run scoreboard players set @s takis.threshold 636
execute store result score @s takis.roll run random value 1..1000
scoreboard players set @s takis.durability 0
execute store result score @s takis.durability run data get entity @s equipment.head.components."minecraft:damage"
execute if score @s takis.roll <= @s takis.threshold if score @s takis.durability matches 63.. at @s run playsound minecraft:block.glass.break player @s ~ ~ ~ 1.0 1.0
execute if score @s takis.roll <= @s takis.threshold if score @s takis.durability matches 63.. run item replace entity @s armor.head with minecraft:air
execute if score @s takis.roll <= @s takis.threshold if score @s takis.durability matches ..62 at @s run playsound minecraft:block.glass.hit player @s ~ ~ ~ 0.65 0.7
execute if score @s takis.roll <= @s takis.threshold if score @s takis.durability matches ..62 run item modify entity @s armor.head scuuuba:damage
