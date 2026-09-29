execute as @a at @s run function bed:.dev/check
scoreboard players set #bed.mode takis.bed.scan 0
execute if entity @a[scores={takis.bed.near=1}] run scoreboard players set #bed.mode takis.bed.scan 1
execute unless entity @a[scores={takis.bed.near=1}] as @a run function bed:.dev/check/inventory
execute if entity @a[scores={takis.bed.near=2}] run scoreboard players set #bed.mode takis.bed.scan 2
scoreboard players set #bed.current takis.bed.scan 0
execute store result score #bed.current takis.bed.scan run execute if entity @a[scores={takis.bed.near=1..2}]
scoreboard players set #bed.changed takis.bed.scan 0
execute unless score #bed.current takis.bed.scan = #bed.previous takis.bed.scan run scoreboard players set #bed.changed takis.bed.scan 1
execute unless score #bed.mode takis.bed.scan = #bed.previous.mode takis.bed.scan run scoreboard players set #bed.changed takis.bed.scan 1
execute if score #bed.changed takis.bed.scan matches 1 run function bed:.dev/announce
scoreboard players operation #bed.previous takis.bed.scan = #bed.current takis.bed.scan
scoreboard players operation #bed.previous.mode takis.bed.scan = #bed.mode takis.bed.scan
