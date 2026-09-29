# Standalone WorldEdit/Fill Helper initialization.
# Existing objective values and player selections remain compatible with the
# former implementation embedded in the Takis datapack.
scoreboard objectives add takis.fill.id dummy
scoreboard objectives add takis.fill.ray dummy
scoreboard objectives add takis.fill.found dummy
scoreboard objectives add takis.fill.tx dummy
scoreboard objectives add takis.fill.ty dummy
scoreboard objectives add takis.fill.tz dummy
scoreboard objectives add takis.fill.x1 dummy
scoreboard objectives add takis.fill.y1 dummy
scoreboard objectives add takis.fill.z1 dummy
scoreboard objectives add takis.fill.x2 dummy
scoreboard objectives add takis.fill.y2 dummy
scoreboard objectives add takis.fill.z2 dummy
scoreboard objectives add takis.fill.min dummy
scoreboard objectives add takis.fill.max dummy
scoreboard objectives add takis.fill.size dummy
scoreboard objectives add takis.fill.state dummy
scoreboard objectives add takis.fill.click dummy
scoreboard objectives add takis.tape.id dummy
scoreboard objectives add takis.tape.x1 dummy
scoreboard objectives add takis.tape.y1 dummy
scoreboard objectives add takis.tape.z1 dummy
scoreboard objectives add takis.tape.x2 dummy
scoreboard objectives add takis.tape.y2 dummy
scoreboard objectives add takis.tape.z2 dummy
scoreboard objectives add takis.measure.id dummy
scoreboard objectives add takis.tape.index dummy
scoreboard objectives add takis.tape.steps dummy
scoreboard objectives add takis.tape.math dummy
scoreboard objectives add takis.tape.ray dummy
scoreboard objectives add worldedit.guides dummy
scoreboard objectives add worldedit.perf dummy
scoreboard objectives add worldedit.size.x dummy
scoreboard objectives add worldedit.size.y dummy
scoreboard objectives add worldedit.size.z dummy
scoreboard objectives add worldedit.result dummy
scoreboard objectives add worldedit.undo dummy
scoreboard objectives add worldedit.redo dummy
scoreboard objectives add worldedit.copy dummy
scoreboard objectives add worldedit.paste dummy
scoreboard objectives add worldedit.count dummy
scoreboard objectives add worldedit.cx dummy
scoreboard objectives add worldedit.cy dummy
scoreboard objectives add worldedit.cz dummy
scoreboard objectives add worldedit.math dummy
scoreboard objectives add worldedit.dir dummy
scoreboard objectives add worldedit.yaw dummy
scoreboard objectives add worldedit.pitch dummy
scoreboard objectives add worldedit.amount dummy
scoreboard objectives add worldedit.step dummy
scoreboard objectives add worldedit.dx dummy
scoreboard objectives add worldedit.dy dummy
scoreboard objectives add worldedit.dz dummy
scoreboard objectives add worldedit.hole dummy
scoreboard objectives add worldedit.holy dummy
scoreboard objectives add worldedit.hx1 dummy
scoreboard objectives add worldedit.hy1 dummy
scoreboard objectives add worldedit.hz1 dummy
scoreboard objectives add worldedit.hx2 dummy
scoreboard objectives add worldedit.hy2 dummy
scoreboard objectives add worldedit.hz2 dummy
scoreboard players set #phase worldedit.perf 9
scoreboard players add #next takis.fill.id 0
scoreboard players add #next takis.tape.id 0
scoreboard players add #next takis.measure.id 0
scoreboard players set #-1 takis.fill.size -1
execute unless data storage worldedit:fill_helper cache.players run data modify storage worldedit:fill_helper cache.players set value []
scoreboard players set #ready worldedit.guides 0

# Clear transient helpers and old outlines on reload. A player can immediately
# draw a fresh, correctly aligned selection.
execute in minecraft:overworld run kill @e[type=minecraft:item_display,tag=takis.fill_cache_probe]
execute in minecraft:the_nether run kill @e[type=minecraft:item_display,tag=takis.fill_cache_probe]
execute in minecraft:the_end run kill @e[type=minecraft:item_display,tag=takis.fill_cache_probe]
execute in minecraft:overworld run kill @e[type=minecraft:block_display,tag=takis.fill_box]
execute in minecraft:the_nether run kill @e[type=minecraft:block_display,tag=takis.fill_box]
execute in minecraft:the_end run kill @e[type=minecraft:block_display,tag=takis.fill_box]
execute in minecraft:overworld run kill @e[type=minecraft:marker,tag=worldedit.command_pos]
execute in minecraft:the_nether run kill @e[type=minecraft:marker,tag=worldedit.command_pos]
execute in minecraft:the_end run kill @e[type=minecraft:marker,tag=worldedit.command_pos]
execute in minecraft:overworld run kill @e[type=minecraft:marker,tag=worldedit.hole.node]
execute in minecraft:the_nether run kill @e[type=minecraft:marker,tag=worldedit.hole.node]
execute in minecraft:the_end run kill @e[type=minecraft:marker,tag=worldedit.hole.node]
execute in minecraft:overworld run kill @e[type=minecraft:marker,tag=worldedit.holy.tracker]
execute in minecraft:the_nether run kill @e[type=minecraft:marker,tag=worldedit.holy.tracker]
execute in minecraft:the_end run kill @e[type=minecraft:marker,tag=worldedit.holy.tracker]
scoreboard players set @a takis.fill.state 0
scoreboard players set @a worldedit.paste 0

# Rebuild and synchronize the standalone WorldEdit guide library. If no player
# is online during server startup, guides/tick builds it after the first join.
execute as @a[limit=1] at @s run function worldedit:.dev/guides/rebuild/template


function worldedit:.dev/load

tellraw @a {"text":"Loaded Worldedit","color":"yellow"}
