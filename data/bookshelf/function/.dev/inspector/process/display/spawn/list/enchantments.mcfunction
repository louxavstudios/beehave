# create a list of all the enchantments
# @s = text display
# at chiseled bookshelf, selected book slot
# run from process_display/spawn/decide_name

# create array of all enchantments with levels
scoreboard players set $enchantments_max takis.bs.data 4
data modify storage bookshelf:inspector levels set from storage bookshelf:inspector book_data.components."minecraft:stored_enchantments"
function bookshelf:.dev/inspector/process/display/spawn/components/to/list
data modify storage bookshelf:inspector enchantment_list set value []
function bookshelf:.dev/inspector/process/display/spawn/process/enchantments

# add to the text
data modify storage bookshelf:inspector text append value {nbt:"enchantment_list[]",storage:"bookshelf:inspector",separator:"\n",interpret:true,color:"gray"}

# cleanup
data remove storage bookshelf:inspector enchantments
data remove storage bookshelf:inspector levels
