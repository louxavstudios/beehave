# Mark one repair before changing the block so a damaged anvil cannot continue
# immediately from chipped to pristine during the same interaction.
execute if score @s takis.anvil matches 0 if block ~ ~ ~ minecraft:damaged_anvil[facing=north] run scoreboard players set @s takis.anvil 1
execute if score @s takis.anvil matches 0 if block ~ ~ ~ minecraft:damaged_anvil[facing=east] run scoreboard players set @s takis.anvil 1
execute if score @s takis.anvil matches 0 if block ~ ~ ~ minecraft:damaged_anvil[facing=south] run scoreboard players set @s takis.anvil 1
execute if score @s takis.anvil matches 0 if block ~ ~ ~ minecraft:damaged_anvil[facing=west] run scoreboard players set @s takis.anvil 1
execute if score @s takis.anvil matches 1 if block ~ ~ ~ minecraft:damaged_anvil[facing=north] run summon minecraft:marker ~ ~ ~ {Tags:["takis.anvil_restore","takis.anvil_to_chipped","takis.anvil_north"]}
execute if score @s takis.anvil matches 1 if block ~ ~ ~ minecraft:damaged_anvil[facing=east] run summon minecraft:marker ~ ~ ~ {Tags:["takis.anvil_restore","takis.anvil_to_chipped","takis.anvil_east"]}
execute if score @s takis.anvil matches 1 if block ~ ~ ~ minecraft:damaged_anvil[facing=south] run summon minecraft:marker ~ ~ ~ {Tags:["takis.anvil_restore","takis.anvil_to_chipped","takis.anvil_south"]}
execute if score @s takis.anvil matches 1 if block ~ ~ ~ minecraft:damaged_anvil[facing=west] run summon minecraft:marker ~ ~ ~ {Tags:["takis.anvil_restore","takis.anvil_to_chipped","takis.anvil_west"]}

execute if score @s takis.anvil matches 0 if block ~ ~ ~ minecraft:chipped_anvil[facing=north] run scoreboard players set @s takis.anvil 2
execute if score @s takis.anvil matches 0 if block ~ ~ ~ minecraft:chipped_anvil[facing=east] run scoreboard players set @s takis.anvil 2
execute if score @s takis.anvil matches 0 if block ~ ~ ~ minecraft:chipped_anvil[facing=south] run scoreboard players set @s takis.anvil 2
execute if score @s takis.anvil matches 0 if block ~ ~ ~ minecraft:chipped_anvil[facing=west] run scoreboard players set @s takis.anvil 2
execute if score @s takis.anvil matches 2 if block ~ ~ ~ minecraft:chipped_anvil[facing=north] run summon minecraft:marker ~ ~ ~ {Tags:["takis.anvil_restore","takis.anvil_to_pristine","takis.anvil_north"]}
execute if score @s takis.anvil matches 2 if block ~ ~ ~ minecraft:chipped_anvil[facing=east] run summon minecraft:marker ~ ~ ~ {Tags:["takis.anvil_restore","takis.anvil_to_pristine","takis.anvil_east"]}
execute if score @s takis.anvil matches 2 if block ~ ~ ~ minecraft:chipped_anvil[facing=south] run summon minecraft:marker ~ ~ ~ {Tags:["takis.anvil_restore","takis.anvil_to_pristine","takis.anvil_south"]}
execute if score @s takis.anvil matches 2 if block ~ ~ ~ minecraft:chipped_anvil[facing=west] run summon minecraft:marker ~ ~ ~ {Tags:["takis.anvil_restore","takis.anvil_to_pristine","takis.anvil_west"]}

# Invalidating the block for one complete player tick closes the menu that
# vanilla opened before the interaction statistic reached this function.
execute if score @s takis.anvil matches 1..2 run setblock ~ ~ ~ minecraft:air

execute if score @s takis.anvil matches 1..2 run item modify entity @s weapon.mainhand anvil:consume
execute if score @s takis.anvil matches 1..2 run playsound minecraft:block.anvil.use block @a[distance=..16] ~ ~ ~ 0.7 1.25
execute if score @s takis.anvil matches 1..2 run particle minecraft:happy_villager ~ ~0.4 ~ 0.35 0.25 0.35 0.05 8 normal
