scoreboard players set #old xav.cleanup 0
scoreboard players set #new xav.cleanup 0
$execute store result score #old xav.cleanup run data get entity @s $(path).components."minecraft:enchantments"."takis:tree_capitator"
$execute unless score #old xav.cleanup matches 1.. store result score #old xav.cleanup run data get entity @s $(path).components."minecraft:stored_enchantments"."takis:tree_capitator"
scoreboard players set #alt xav.cleanup 0
$execute store result score #alt xav.cleanup run data get entity @s $(path).components."minecraft:enchantments"."tree:tree_capitator"
$execute unless score #alt xav.cleanup matches 1.. store result score #alt xav.cleanup run data get entity @s $(path).components."minecraft:stored_enchantments"."tree:tree_capitator"
execute if score #alt xav.cleanup > #old xav.cleanup run scoreboard players operation #old xav.cleanup = #alt xav.cleanup
$execute store result score #new xav.cleanup run data get entity @s $(path).components."minecraft:enchantments"."xavthecave:tree_capitator"
$execute unless score #new xav.cleanup matches 1.. store result score #new xav.cleanup run data get entity @s $(path).components."minecraft:stored_enchantments"."xavthecave:tree_capitator"
execute if score #old xav.cleanup matches 1.. if score #old xav.cleanup > #new xav.cleanup run scoreboard players operation #new xav.cleanup = #old xav.cleanup
execute if score #old xav.cleanup matches 1.. run scoreboard players operation #level xav.cleanup = #new xav.cleanup
$execute if score #old xav.cleanup matches 1.. run item modify entity @s $(slot) enchant:cleanup/tree
