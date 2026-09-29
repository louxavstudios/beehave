scoreboard players add #phase takis.guides 1
execute if score #phase takis.guides matches 20.. run scoreboard players set #phase takis.guides 0
# Inventory-wide conversions are distributed instead of running every tick.
execute if score #phase takis.guides matches 17 as @a run function guides:.dev/prepare/inventory
# Poll mutable synchronized boxes once per second on separate phases.
execute if score #phase takis.guides matches 9 run function guides:.dev/runtime
