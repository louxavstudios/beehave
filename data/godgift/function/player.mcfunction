# Usage: /function godgift:player {player:"Name"}
$data modify storage godgift:cultural target_uuid set from entity @a[name="$(player)",limit=1] UUID
execute if data storage godgift:cultural target_uuid run function godgift:.dev/log/filter/start
