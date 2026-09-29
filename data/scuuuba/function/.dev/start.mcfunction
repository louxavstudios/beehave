scoreboard players set @s takis.scuba.wet 1
scoreboard players set @s takis.scuba.tick 0
execute store result score @s takis.scuba.time run random value 45..60
execute store result storage scuuuba:scuuuba effect.seconds int 1 run scoreboard players get @s takis.scuba.time
function scuuuba:.dev/apply/air with storage scuuuba:scuuuba effect
