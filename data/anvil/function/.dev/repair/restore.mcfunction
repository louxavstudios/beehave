# Restore only into the air left by the repair. Never overwrite a block another
# player placed during the brief close-menu delay.
execute if block ~ ~ ~ minecraft:air if entity @s[tag=takis.anvil_to_chipped,tag=takis.anvil_north] run setblock ~ ~ ~ minecraft:chipped_anvil[facing=north]
execute if block ~ ~ ~ minecraft:air if entity @s[tag=takis.anvil_to_chipped,tag=takis.anvil_east] run setblock ~ ~ ~ minecraft:chipped_anvil[facing=east]
execute if block ~ ~ ~ minecraft:air if entity @s[tag=takis.anvil_to_chipped,tag=takis.anvil_south] run setblock ~ ~ ~ minecraft:chipped_anvil[facing=south]
execute if block ~ ~ ~ minecraft:air if entity @s[tag=takis.anvil_to_chipped,tag=takis.anvil_west] run setblock ~ ~ ~ minecraft:chipped_anvil[facing=west]
execute if block ~ ~ ~ minecraft:air if entity @s[tag=takis.anvil_to_pristine,tag=takis.anvil_north] run setblock ~ ~ ~ minecraft:anvil[facing=north]
execute if block ~ ~ ~ minecraft:air if entity @s[tag=takis.anvil_to_pristine,tag=takis.anvil_east] run setblock ~ ~ ~ minecraft:anvil[facing=east]
execute if block ~ ~ ~ minecraft:air if entity @s[tag=takis.anvil_to_pristine,tag=takis.anvil_south] run setblock ~ ~ ~ minecraft:anvil[facing=south]
execute if block ~ ~ ~ minecraft:air if entity @s[tag=takis.anvil_to_pristine,tag=takis.anvil_west] run setblock ~ ~ ~ minecraft:anvil[facing=west]
kill @s
