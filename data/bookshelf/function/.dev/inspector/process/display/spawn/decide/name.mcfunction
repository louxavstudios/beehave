# decide the name of the text_display
# @s = text display
# at chiseled bookshelf, selected book slot
# run from process_display/spawn/init

scoreboard players set $name_given takis.bs.data 0

# if book is named use that (decide color based on item)
execute if data storage bookshelf:inspector book_data{id:"minecraft:enchanted_book"}.components."minecraft:custom_name" store success score $name_given takis.bs.data run data modify storage bookshelf:inspector text append value [{text:"",color:"yellow"},{nbt:"book_data.components.'minecraft:custom_name'",storage:"bookshelf:inspector",interpret:true}]
execute unless score $name_given takis.bs.data matches 1 if data storage bookshelf:inspector book_data.components."minecraft:enchantments" if data storage bookshelf:inspector book_data.components."minecraft:custom_name" unless data storage bookshelf:inspector book_data{id:"minecraft:enchanted_book"} store success score $name_given takis.bs.data run data modify storage bookshelf:inspector text append value [{text:"",color:"aqua"},{nbt:"book_data.components.'minecraft:custom_name'",storage:"bookshelf:inspector",interpret:true}]
execute unless score $name_given takis.bs.data matches 1 store success score $name_given takis.bs.data run data modify storage bookshelf:inspector text append from storage bookshelf:inspector book_data.components."minecraft:custom_name"

# if not and book & quill use the title
execute unless score $name_given takis.bs.data matches 1 store success score $name_given takis.bs.data if data storage bookshelf:inspector book_data.components."minecraft:written_book_content".title if data storage bookshelf:inspector book_data.components."minecraft:enchantments" run data modify storage bookshelf:inspector text append value [{text:"",color:"aqua"},{nbt:"book_data.components.'minecraft:written_book_content'.title.raw",storage:"bookshelf:inspector",interpret:true}]
execute unless score $name_given takis.bs.data matches 1 store success score $name_given takis.bs.data if data storage bookshelf:inspector book_data.components."minecraft:written_book_content".title run data modify storage bookshelf:inspector text append value {nbt:"book_data.components.'minecraft:written_book_content'.title.raw",storage:"bookshelf:inspector",interpret:true}

# if not and (enchanted) book use translation key
execute unless score $name_given takis.bs.data matches 1 store success score $name_given takis.bs.data if data storage bookshelf:inspector book_data{id:"minecraft:enchanted_book"} run data modify storage bookshelf:inspector text append value {translate:"item.minecraft.enchanted_book",color:"yellow"}
execute unless score $name_given takis.bs.data matches 1 store success score $name_given takis.bs.data if data storage bookshelf:inspector book_data{id:"minecraft:book"} run data modify storage bookshelf:inspector text append value {translate:"item.minecraft.book"}
execute unless score $name_given takis.bs.data matches 1 store success score $name_given takis.bs.data if data storage bookshelf:inspector book_data{id:"minecraft:book"}.components."minecraft:enchantments" run data modify storage bookshelf:inspector text append value {translate:"item.minecraft.book",color:"aqua"}
execute unless score $name_given takis.bs.data matches 1 store success score $name_given takis.bs.data if data storage bookshelf:inspector book_data{id:"minecraft:writable_book"} run data modify storage bookshelf:inspector text append value {translate:"item.minecraft.writable_book"}
execute unless score $name_given takis.bs.data matches 1 store success score $name_given takis.bs.data if data storage bookshelf:inspector book_data{id:"minecraft:writable_book"}.components."minecraft:enchantments" run data modify storage bookshelf:inspector text append value {translate:"item.minecraft.writable_book",color:"aqua"}
execute unless score $name_given takis.bs.data matches 1 store success score $name_given takis.bs.data if data storage bookshelf:inspector book_data{id:"minecraft:knowledge_book"} run data modify storage bookshelf:inspector text append value {translate:"item.minecraft.knowledge_book",color:"light_purple"}

# if written book also display the author
execute if data storage bookshelf:inspector book_data{id:"minecraft:written_book"} run data modify storage bookshelf:inspector text append value {translate:"book.byAuthor",with:[{nbt:"book_data.components.'minecraft:written_book_content'.author",storage:"bookshelf:inspector",interpret:true}],color:"gray"}

# if enchanted book with enchantments also display the enchantments
execute if data storage bookshelf:inspector book_data{id:"minecraft:enchanted_book"}.components."minecraft:stored_enchantments" run function bookshelf:.dev/inspector/process/display/spawn/list/enchantments
