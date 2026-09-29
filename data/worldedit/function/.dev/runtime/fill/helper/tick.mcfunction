# Convert a wooden axe renamed exactly "worldedit" into the Fill Helper.
scoreboard players add #phase worldedit.perf 1
execute if score #phase worldedit.perf matches 20.. run scoreboard players set #phase worldedit.perf 0

execute as @a if items entity @s weapon.mainhand minecraft:wooden_axe[minecraft:custom_data~{takis_fill_helper:true}] unless items entity @s weapon.mainhand *[minecraft:custom_data~{takis_fill_helper_v11:true},minecraft:enchantments~[{enchantments:"xavthecave:fill_helper",levels:{min:1}}]] run item modify entity @s weapon.mainhand worldedit:make
execute as @a if items entity @s weapon.mainhand minecraft:wooden_axe[minecraft:custom_name="worldedit"] unless items entity @s weapon.mainhand *[minecraft:custom_data~{takis_fill_helper_v11:true},minecraft:enchantments~[{enchantments:"xavthecave:fill_helper",levels:{min:1}}]] run item modify entity @s weapon.mainhand worldedit:make
execute as @a if items entity @s weapon.mainhand minecraft:wooden_axe[minecraft:custom_name~{text:"worldedit"}] unless items entity @s weapon.mainhand *[minecraft:custom_data~{takis_fill_helper_v11:true},minecraft:enchantments~[{enchantments:"xavthecave:fill_helper",levels:{min:1}}]] run item modify entity @s weapon.mainhand worldedit:make
execute if score #phase worldedit.perf matches 3 as @a run function worldedit:.dev/guides/prepare/inventory
execute if score #phase worldedit.perf matches 13 run function worldedit:.dev/guides/tick

# Upgrade already-placed Tape measures to the exact block-center layout as
# their chunks load. V2 also corrects the former doubled X/Z half-block offset.
execute if score #phase worldedit.perf matches 0 as @e[type=minecraft:text_display,tag=takis.tape_text,tag=!takis.tape_centered] at @s run tp @s ~-0.5 ~0.45 ~-0.5
execute if score #phase worldedit.perf matches 1 run tag @e[type=minecraft:text_display,tag=takis.tape_text,tag=!takis.tape_centered] add takis.tape_centered_v2
execute if score #phase worldedit.perf matches 2 run tag @e[type=minecraft:text_display,tag=takis.tape_text,tag=!takis.tape_centered] add takis.tape_centered
execute if score #phase worldedit.perf matches 3 as @e[type=minecraft:text_display,tag=takis.tape_text,tag=takis.tape_centered,tag=!takis.tape_centered_v2] at @s run tp @s ~-0.5 ~ ~-0.5
execute if score #phase worldedit.perf matches 4 run tag @e[type=minecraft:text_display,tag=takis.tape_text,tag=!takis.tape_centered_v2] add takis.tape_centered_v2
execute if score #phase worldedit.perf matches 5 as @e[type=minecraft:interaction,tag=takis.tape_hitbox,tag=!takis.tape_centered] at @s run tp @s ~-0.5 ~0.43 ~-0.5
execute if score #phase worldedit.perf matches 6 run tag @e[type=minecraft:interaction,tag=takis.tape_hitbox,tag=!takis.tape_centered] add takis.tape_centered_v2
execute if score #phase worldedit.perf matches 7 run tag @e[type=minecraft:interaction,tag=takis.tape_hitbox,tag=!takis.tape_centered] add takis.tape_centered
execute if score #phase worldedit.perf matches 8 as @e[type=minecraft:interaction,tag=takis.tape_hitbox,tag=takis.tape_centered,tag=!takis.tape_centered_v2] at @s run tp @s ~-0.5 ~ ~-0.5
execute if score #phase worldedit.perf matches 9 run tag @e[type=minecraft:interaction,tag=takis.tape_hitbox,tag=!takis.tape_centered_v2] add takis.tape_centered_v2

# Collapse duplicate right-click triggers received during the same interaction.
scoreboard players add @a takis.fill.click 0
scoreboard players remove @a[scores={takis.fill.click=1..}] takis.fill.click 1

function worldedit:.dev/tick
function worldedit:.dev/hole/tick
