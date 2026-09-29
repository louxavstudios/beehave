# Move the offhand page into shared storage while preserving player execution context.
scoreboard players set @s takis.cultural 3
item modify entity @s weapon.offhand godgift:restore_cultural_book
data remove storage godgift:cultural command_pages
data modify storage godgift:cultural command_pages set from entity @s Inventory[{Slot:-106b}].components."minecraft:writable_book_content".pages
execute if data storage godgift:cultural command_pages[0] run function godgift:.dev/run/next
