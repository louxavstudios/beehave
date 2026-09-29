# add enchantments to the list 1 by 1
# @s = text display
# at chiseled bookshelf, selected book slot
# run from process_display/spawn/list_enchantments
# run from here

# get id and lvl of enchantment
data modify storage bookshelf:inspector new_enchant.id set string storage bookshelf:inspector enchantments[0].id 10
execute store result storage bookshelf:inspector new_enchant.lvl int 1 run data get storage bookshelf:inspector enchantments[0].lvl
execute store result score $enchant_lvl takis.bs.data run data get storage bookshelf:inspector new_enchant.lvl

# get corresponding text using macro's
function bookshelf:.dev/inspector/process/display/spawn/eval/enchantment with storage bookshelf:inspector new_enchant

# cleanup
data remove storage bookshelf:inspector new_enchant

# repeat for each enchant on the book, max 3
scoreboard players remove $enchantments_max takis.bs.data 1
data remove storage bookshelf:inspector enchantments[0]
execute if score $enchantments_max takis.bs.data matches 0 store result score $enchantment_count takis.bs.data run data get storage bookshelf:inspector enchantments
execute if score $enchantments_max takis.bs.data matches 0 if score $enchantment_count takis.bs.data matches 1 run function bookshelf:.dev/inspector/process/display/spawn/process/enchantments
execute if score $enchantments_max takis.bs.data matches 0 if score $enchantment_count takis.bs.data matches 2.. run data modify storage bookshelf:inspector enchantment_list append value {translate:"container.shulkerBox.more",with:[{score:{name:"$enchantment_count",objective:"takis.bs.data"}}]}
execute if score $enchantments_max takis.bs.data matches 1.. if data storage bookshelf:inspector enchantments[0] run function bookshelf:.dev/inspector/process/display/spawn/process/enchantments
