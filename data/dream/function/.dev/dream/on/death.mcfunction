# Store the percentage that governed this death on every player who died during
# this tick. Simultaneous deaths necessarily share the world-gamerule outcome.
scoreboard players operation @a[scores={takis.deaths=1..}] takis.dream = #chance takis.dream
scoreboard players set @a[scores={takis.deaths=1..}] takis.deaths 0
function dream:.dev/dream/roll/next
