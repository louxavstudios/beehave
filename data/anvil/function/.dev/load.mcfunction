scoreboard objectives add takis.ray dummy
scoreboard objectives add takis.anvil dummy
scoreboard objectives add takis.anvil.use minecraft.custom:minecraft.interact_with_anvil
scoreboard objectives add takis.anvil.delay dummy
scoreboard players set #phase takis.anvil.delay 0

tellraw @a {"text":"Loaded Anvil","color":"yellow"}
