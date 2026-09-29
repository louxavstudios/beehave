data modify storage godgift:cultural box_current set value []
data modify storage godgift:cultural box_current set from block ~ ~ ~ Items
data modify storage godgift:cultural box_previous set value []
data modify storage godgift:cultural box_previous set from entity @s data.last_items
scoreboard players set #box.changed takis.cultural 0
execute store success score #box.changed takis.cultural run data modify storage godgift:cultural box_previous set from storage godgift:cultural box_current
execute if score #box.changed takis.cultural matches 1 run function godgift:.dev/log/import/start
