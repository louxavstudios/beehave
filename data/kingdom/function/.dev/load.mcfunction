scoreboard objectives add kingdom.block.x dummy
scoreboard objectives add kingdom.block.z dummy
scoreboard objectives add kingdom.chunk.x dummy
scoreboard objectives add kingdom.chunk.z dummy
scoreboard objectives add kingdom.inside dummy
scoreboard objectives add kingdom.current dummy
scoreboard objectives add kingdom.previous dummy
scoreboard objectives add kingdom.box.id dummy
scoreboard objectives add kingdom.box.ver dummy
scoreboard objectives add kingdom.meta dummy
scoreboard objectives add kingdom.access.ver dummy
scoreboard players set #sixteen kingdom.meta 16
scoreboard players add #scan kingdom.meta 0
scoreboard players set #phase kingdom.meta 0
# Force every online player through the regenerated lookup after /reload.
scoreboard players set @a kingdom.inside 0
function kingdom:.dev/generated/setup

tellraw @a {"text":"Loaded Kingdom","color":"yellow"}
