scoreboard players add @a takis.scuba.time 0
scoreboard players add @a takis.scuba.wet 0
scoreboard players add @a takis.scuba.tick 0
scoreboard players add @a takis.scuba.air 0
execute as @a unless items entity @s armor.head minecraft:leather_helmet[minecraft:custom_data~{takis_scuuuba:true}] run function scuuuba:.dev/not/wearing
execute as @a at @s anchored eyes positioned ^ ^ ^ if items entity @s armor.head minecraft:leather_helmet[minecraft:custom_data~{takis_scuuuba:true}] if block ~ ~ ~ minecraft:water run function scuuuba:.dev/underwater
execute as @a at @s anchored eyes positioned ^ ^ ^ if items entity @s armor.head minecraft:leather_helmet[minecraft:custom_data~{takis_scuuuba:true}] if block ~ ~ ~ minecraft:bubble_column run function scuuuba:.dev/underwater
execute as @a at @s anchored eyes positioned ^ ^ ^ if items entity @s armor.head minecraft:leather_helmet[minecraft:custom_data~{takis_scuuuba:true}] unless block ~ ~ ~ minecraft:water unless block ~ ~ ~ minecraft:bubble_column run function scuuuba:.dev/reset
