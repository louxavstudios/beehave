data modify storage kingdom:kingdom notify_current set from storage kingdom:kingdom notify_work[0]
data remove storage kingdom:kingdom notify_args.player
execute if data storage kingdom:kingdom notify_current.components."minecraft:custom_name".text run data modify storage kingdom:kingdom notify_args.player set from storage kingdom:kingdom notify_current.components."minecraft:custom_name".text
execute if data storage kingdom:kingdom notify_current.components."minecraft:custom_name" unless data storage kingdom:kingdom notify_current.components."minecraft:custom_name".text run data modify storage kingdom:kingdom notify_args.player set from storage kingdom:kingdom notify_current.components."minecraft:custom_name"
execute if data storage kingdom:kingdom notify_current{id:"minecraft:name_tag"} if data storage kingdom:kingdom notify_args.player run function kingdom:.dev/allowlist/notify/player with storage kingdom:kingdom notify_args
data modify storage kingdom:kingdom box_old append from storage kingdom:kingdom notify_current
data remove storage kingdom:kingdom notify_work[0]
execute if data storage kingdom:kingdom notify_work[0] run function kingdom:.dev/allowlist/notify/next
