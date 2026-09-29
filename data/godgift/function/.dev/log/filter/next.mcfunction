data modify storage godgift:cultural filter_current set from storage godgift:cultural filter_work[0]
data remove storage godgift:cultural filter_work[0]
scoreboard players set #filter.match takis.cultural 1
execute store result score #current0 takis.cultural run data get storage godgift:cultural filter_current.owner[0]
execute store result score #current1 takis.cultural run data get storage godgift:cultural filter_current.owner[1]
execute store result score #current2 takis.cultural run data get storage godgift:cultural filter_current.owner[2]
execute store result score #current3 takis.cultural run data get storage godgift:cultural filter_current.owner[3]
execute unless score #current0 takis.cultural = #target0 takis.cultural run scoreboard players set #filter.match takis.cultural 0
execute unless score #current1 takis.cultural = #target1 takis.cultural run scoreboard players set #filter.match takis.cultural 0
execute unless score #current2 takis.cultural = #target2 takis.cultural run scoreboard players set #filter.match takis.cultural 0
execute unless score #current3 takis.cultural = #target3 takis.cultural run scoreboard players set #filter.match takis.cultural 0
execute if score #filter.match takis.cultural matches 1 run function godgift:.dev/log/filter/append
execute if data storage godgift:cultural filter_work[0] run function godgift:.dev/log/filter/next
