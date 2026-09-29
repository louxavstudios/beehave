# Generated persistent allowlist setup.
scoreboard players add #v1 kingdom.meta 0
execute unless data storage kingdom:kingdom allowlists.kondom if data storage kingdom:kingdom allowlist run data modify storage kingdom:kingdom allowlists.kondom set from storage kingdom:kingdom allowlist
execute unless data storage kingdom:kingdom allowlists.kondom run data modify storage kingdom:kingdom allowlists.kondom set value [{Slot:0b,id:"minecraft:name_tag",count:1,components:{"minecraft:custom_name":{"text":"xavthecave","color":"green","italic":false},"minecraft:lore":[{"text":"Allowed to build in Kondom","color":"dark_gray","italic":false}]}}]
scoreboard players add #v2 kingdom.meta 0
execute unless data storage kingdom:kingdom allowlists.lulu_village run data modify storage kingdom:kingdom allowlists.lulu_village set value [{Slot:0b,id:"minecraft:name_tag",count:1,components:{"minecraft:custom_name":{"text":"hahaAngee_","color":"green","italic":false},"minecraft:lore":[{"text":"Allowed to build in Lulu Village","color":"dark_gray","italic":false}]}}]
scoreboard players add #v3 kingdom.meta 0
execute unless data storage kingdom:kingdom allowlists.sashx_anarchy run data modify storage kingdom:kingdom allowlists.sashx_anarchy set value [{Slot:0b,id:"minecraft:name_tag",count:1,components:{"minecraft:custom_name":{"text":"Sashimir","color":"green","italic":false},"minecraft:lore":[{"text":"Allowed to build in Sashx Anarchy","color":"dark_gray","italic":false}]}}]
scoreboard players add #v4 kingdom.meta 0
execute unless data storage kingdom:kingdom allowlists.loisland run data modify storage kingdom:kingdom allowlists.loisland set value [{Slot:0b,id:"minecraft:name_tag",count:1,components:{"minecraft:custom_name":{"text":"loangoncalves","color":"green","italic":false},"minecraft:lore":[{"text":"Allowed to build in Loisland","color":"dark_gray","italic":false}]}}]
function kingdom:.dev/generated/migrate/boxes
function kingdom:.dev/generated/rebuild/players
