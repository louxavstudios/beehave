data modify storage kingdom:kingdom box_current set value []
data modify storage kingdom:kingdom box_current set from block ~ ~ ~ Items
data modify storage kingdom:kingdom box_old set value []
data modify storage kingdom:kingdom box_old set from entity @s data.last_items
data modify storage kingdom:kingdom box_previous set value []
data modify storage kingdom:kingdom box_previous set from entity @s data.last_items
scoreboard players set #box.changed kingdom.meta 0
execute store success score #box.changed kingdom.meta run data modify storage kingdom:kingdom box_previous set from storage kingdom:kingdom box_current
execute if score #box.changed kingdom.meta matches 1 run function kingdom:.dev/generated/kondom/import
