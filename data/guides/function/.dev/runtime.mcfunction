# Refresh only after a template version change/reload and discover old boxes when viewed.
execute if score #ready takis.guides matches 0 as @a[limit=1] at @s run function guides:.dev/rebuild/template
execute as @e[type=minecraft:marker,tag=takis.guides_box] at @s unless block ~ ~ ~ minecraft:white_shulker_box run kill @s
execute as @e[type=minecraft:marker,tag=takis.guides_box] at @s unless score @s takis.guides = #version takis.guides run function guides:.dev/sync/one
execute as @a run scoreboard players set @s takis.ray 0
execute as @a at @s anchored eyes positioned ^ ^ ^0.1 run function guides:.dev/find/box
