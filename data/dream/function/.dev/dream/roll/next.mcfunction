# Draw a fresh 1–19 percent chance, then test an independent percentile roll
# against it. The chance is therefore always strictly below 20 percent.
execute store result score #chance takis.dream run random value 1..19
execute store result score #roll takis.dream run random value 1..100
scoreboard players set #success takis.dream 0
execute if score #roll takis.dream <= #chance takis.dream run scoreboard players set #success takis.dream 1
function dream:.dev/dream/apply
