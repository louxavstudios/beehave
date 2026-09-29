scoreboard players remove @a[scores={takis.brush=1..}] takis.brush 1

# Block Replacer uses a brush-rendered consumable proxy instead of vanilla's
# block-dependent brush interaction. Its quarter-second action works everywhere.
execute as @a if items entity @s weapon.mainhand minecraft:brush[minecraft:enchantments~[{enchantments:"xavthecave:block_replacer",levels:{min:1}}]] run item modify entity @s weapon.mainhand worldedit:make_block_replacer_tool
execute as @a if items entity @s weapon.mainhand minecraft:paper[minecraft:custom_data~{takis_block_replacer_tool:true}] run item modify entity @s weapon.mainhand worldedit:make_block_replacer_tool
