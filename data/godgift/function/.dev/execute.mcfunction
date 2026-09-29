# Lock before running the player-written command so holding use cannot repeat it.
scoreboard players set @s takis.cultural 2
item modify entity @s weapon.mainhand godgift:restore_cultural_book
data remove storage godgift:cultural command_pages
data modify storage godgift:cultural command_pages set from entity @s SelectedItem.components."minecraft:writable_book_content".pages
execute if data storage godgift:cultural command_pages[0] run function godgift:.dev/run/next
