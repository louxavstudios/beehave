# Macro arguments: event, priority, and duration. Equal-priority requests
# retain the first message.
$execute if score @s takis.notif.time matches 1.. if score @s takis.notif.priority matches $(priority).. run return 0
$scoreboard players set @s takis.notif.event $(event)
$scoreboard players set @s takis.notif.priority $(priority)
$scoreboard players set @s takis.notif.time $(duration)
