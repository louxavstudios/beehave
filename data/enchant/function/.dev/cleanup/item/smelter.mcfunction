scoreboard players set #old xav.cleanup 0
scoreboard players set #new xav.cleanup 0
$execute store result score #old xav.cleanup run data get entity @s $(path).components."minecraft:enchantments"."takis:liquefactio_automatica"
$execute unless score #old xav.cleanup matches 1.. store result score #old xav.cleanup run data get entity @s $(path).components."minecraft:stored_enchantments"."takis:liquefactio_automatica"
scoreboard players set #alt xav.cleanup 0
$execute store result score #alt xav.cleanup run data get entity @s $(path).components."minecraft:enchantments"."smelter:liquefactio/automatica"
$execute unless score #alt xav.cleanup matches 1.. store result score #alt xav.cleanup run data get entity @s $(path).components."minecraft:stored_enchantments"."smelter:liquefactio/automatica"
execute if score #alt xav.cleanup > #old xav.cleanup run scoreboard players operation #old xav.cleanup = #alt xav.cleanup
scoreboard players set #alt xav.cleanup 0
$execute store result score #alt xav.cleanup run data get entity @s $(path).components."minecraft:enchantments"."smelter:liquefactio_automatica"
$execute unless score #alt xav.cleanup matches 1.. store result score #alt xav.cleanup run data get entity @s $(path).components."minecraft:stored_enchantments"."smelter:liquefactio_automatica"
execute if score #alt xav.cleanup > #old xav.cleanup run scoreboard players operation #old xav.cleanup = #alt xav.cleanup
$execute store result score #new xav.cleanup run data get entity @s $(path).components."minecraft:enchantments"."xavthecave:liquefactio_automatica"
$execute unless score #new xav.cleanup matches 1.. store result score #new xav.cleanup run data get entity @s $(path).components."minecraft:stored_enchantments"."xavthecave:liquefactio_automatica"
execute if score #old xav.cleanup matches 1.. if score #old xav.cleanup > #new xav.cleanup run scoreboard players operation #new xav.cleanup = #old xav.cleanup
execute if score #old xav.cleanup matches 1.. run scoreboard players operation #level xav.cleanup = #new xav.cleanup
$execute if score #old xav.cleanup matches 1.. run item modify entity @s $(slot) enchant:cleanup/smelter
