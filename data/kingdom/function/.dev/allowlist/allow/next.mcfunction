data modify storage kingdom:kingdom allow_current set from storage kingdom:kingdom allow_work[0]
# Item-modifier names serialize as structured text ({text:"Player"}), while
# ordinary anvil-renamed name tags may serialize as the direct string "Player".
# Normalize both representations into allow_args.text for the macro selector.
data modify storage kingdom:kingdom allow_args set value {}
execute if data storage kingdom:kingdom allow_current.components."minecraft:custom_name".text run data modify storage kingdom:kingdom allow_args.text set from storage kingdom:kingdom allow_current.components."minecraft:custom_name".text
execute if data storage kingdom:kingdom allow_current.components."minecraft:custom_name" unless data storage kingdom:kingdom allow_current.components."minecraft:custom_name".text run data modify storage kingdom:kingdom allow_args.text set from storage kingdom:kingdom allow_current.components."minecraft:custom_name"
data modify storage kingdom:kingdom allow_args.allowed_tag set from storage kingdom:kingdom allow_tag
execute if data storage kingdom:kingdom allow_current{id:"minecraft:name_tag"} if data storage kingdom:kingdom allow_args.text run function kingdom:.dev/allowlist/allow/player with storage kingdom:kingdom allow_args
data remove storage kingdom:kingdom allow_work[0]
execute if data storage kingdom:kingdom allow_work[0] run function kingdom:.dev/allowlist/allow/next
