# Usage: /function godgift:logs {clear:0}
# Use clear:0 to export all logs or clear:1 to permanently clear them.
$scoreboard players set #log.clear takis.cultural $(clear)
execute if score #log.clear takis.cultural matches 0 run function godgift:.dev/log/public/give
execute if score #log.clear takis.cultural matches 1 run function godgift:.dev/log/public/clear
