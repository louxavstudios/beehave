execute as @e[type=minecraft:item] run function enchant:.dev/cleanup/slot {slot:"contents",path:"Item"}
execute as @e[type=minecraft:item_frame] run function enchant:.dev/cleanup/slot {slot:"contents",path:"item"}
execute as @e[type=minecraft:glow_item_frame] run function enchant:.dev/cleanup/slot {slot:"contents",path:"item"}
execute as @e[type=minecraft:chest_minecart] run function enchant:.dev/cleanup/container
execute as @e[type=minecraft:hopper_minecart] run function enchant:.dev/cleanup/container
execute as @e[type=!minecraft:player,type=!minecraft:item,type=!minecraft:item_frame,type=!minecraft:glow_item_frame,type=!minecraft:chest_minecart,type=!minecraft:hopper_minecart] run function enchant:.dev/cleanup/equipment
