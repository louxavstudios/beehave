# Migrate only when the selected stack actually contains a legacy ID. The
# item functions preserve the greatest old/current level and remove aliases.
execute if data entity @s SelectedItem.components."minecraft:enchantments"."takis:vein_mining" run function enchant:.dev/cleanup/item/vein {slot:"weapon.mainhand",path:"SelectedItem"}
execute if data entity @s SelectedItem.components."minecraft:stored_enchantments"."takis:vein_mining" run function enchant:.dev/cleanup/item/vein {slot:"weapon.mainhand",path:"SelectedItem"}
execute if data entity @s SelectedItem.components."minecraft:enchantments"."vein:vein_mining" run function enchant:.dev/cleanup/item/vein {slot:"weapon.mainhand",path:"SelectedItem"}
execute if data entity @s SelectedItem.components."minecraft:stored_enchantments"."vein:vein_mining" run function enchant:.dev/cleanup/item/vein {slot:"weapon.mainhand",path:"SelectedItem"}

execute if data entity @s SelectedItem.components."minecraft:enchantments"."takis:tree_capitator" run function enchant:.dev/cleanup/item/tree {slot:"weapon.mainhand",path:"SelectedItem"}
execute if data entity @s SelectedItem.components."minecraft:stored_enchantments"."takis:tree_capitator" run function enchant:.dev/cleanup/item/tree {slot:"weapon.mainhand",path:"SelectedItem"}
execute if data entity @s SelectedItem.components."minecraft:enchantments"."tree:tree_capitator" run function enchant:.dev/cleanup/item/tree {slot:"weapon.mainhand",path:"SelectedItem"}
execute if data entity @s SelectedItem.components."minecraft:stored_enchantments"."tree:tree_capitator" run function enchant:.dev/cleanup/item/tree {slot:"weapon.mainhand",path:"SelectedItem"}

execute if data entity @s SelectedItem.components."minecraft:enchantments"."takis:liquefactio_automatica" run function enchant:.dev/cleanup/item/smelter {slot:"weapon.mainhand",path:"SelectedItem"}
execute if data entity @s SelectedItem.components."minecraft:stored_enchantments"."takis:liquefactio_automatica" run function enchant:.dev/cleanup/item/smelter {slot:"weapon.mainhand",path:"SelectedItem"}
execute if data entity @s SelectedItem.components."minecraft:enchantments"."smelter:liquefactio/automatica" run function enchant:.dev/cleanup/item/smelter {slot:"weapon.mainhand",path:"SelectedItem"}
execute if data entity @s SelectedItem.components."minecraft:stored_enchantments"."smelter:liquefactio/automatica" run function enchant:.dev/cleanup/item/smelter {slot:"weapon.mainhand",path:"SelectedItem"}
execute if data entity @s SelectedItem.components."minecraft:enchantments"."smelter:liquefactio_automatica" run function enchant:.dev/cleanup/item/smelter {slot:"weapon.mainhand",path:"SelectedItem"}
execute if data entity @s SelectedItem.components."minecraft:stored_enchantments"."smelter:liquefactio_automatica" run function enchant:.dev/cleanup/item/smelter {slot:"weapon.mainhand",path:"SelectedItem"}
