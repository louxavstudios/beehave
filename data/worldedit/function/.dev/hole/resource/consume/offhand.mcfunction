scoreboard players set #offhand worldedit.hole 0
$execute if items entity @s weapon.offhand $(block) store result score #offhand worldedit.hole run data get entity @s Inventory[{Slot:-106b}].count 1
execute if score #offhand worldedit.hole matches 1.. if score #offhand worldedit.hole <= #remaining worldedit.hole run function worldedit:.dev/hole/resource/consume/offhand/all
execute if score #offhand worldedit.hole > #remaining worldedit.hole run function worldedit:.dev/hole/resource/consume/offhand/part
