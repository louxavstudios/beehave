# Usage: /function law:control {enabled:1}
# Use 1 to enable Law and 0 to disable it.
$scoreboard players set #enabled law.control $(enabled)
execute if score #enabled law.control matches 1.. run scoreboard objectives setdisplay list law.credit
execute if score #enabled law.control matches 0 run scoreboard players set @a law.notice 0
execute if score #enabled law.control matches 0 run scoreboard players set @a law.event 0
execute if score #enabled law.control matches 0 run scoreboard objectives setdisplay list
