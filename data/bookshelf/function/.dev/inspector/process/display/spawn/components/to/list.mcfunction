# converts new 1.20.5 stored enchantment component structure to a previous format of a list of {id:,lvl:}
  ## NOTE: a more substantial rewrite may be possible in the future if we get a way to iterate over the nbt keys dynamically
  # keeping this format enables most of the module to remain intact for the 1.20.5 update quickly, though may be less efficient overall

# @s = text display
# at chiseled bookshelf, selected book slot
# run from process_display/spawn/list_enchantments

data modify storage bookshelf:inspector enchantments set value []















































## beet 0.105.0 is missing enchantment tag support. Uncomment in a future version to auto-pull ids from the vanilla jar.
# from beet.contrib.vanilla import Vanilla
# vanilla = ctx.inject(Vanilla).mount("data/minecraft/tags/enchantment/tooltip_order.json")
# ALL_ENCHANTMENTS = vanilla.data.enchantment_tags["minecraft:tooltip_order"].data["values"]


execute if data storage bookshelf:inspector levels."minecraft:binding_curse" run data modify storage bookshelf:inspector enchantments append value {id:"minecraft:binding_curse"}
execute if data storage bookshelf:inspector levels."minecraft:binding_curse" run data modify storage bookshelf:inspector enchantments[{id:"minecraft:binding_curse"}].lvl set from storage bookshelf:inspector levels."minecraft:binding_curse"
execute if data storage bookshelf:inspector levels."minecraft:vanishing_curse" run data modify storage bookshelf:inspector enchantments append value {id:"minecraft:vanishing_curse"}
execute if data storage bookshelf:inspector levels."minecraft:vanishing_curse" run data modify storage bookshelf:inspector enchantments[{id:"minecraft:vanishing_curse"}].lvl set from storage bookshelf:inspector levels."minecraft:vanishing_curse"
execute if data storage bookshelf:inspector levels."minecraft:riptide" run data modify storage bookshelf:inspector enchantments append value {id:"minecraft:riptide"}
execute if data storage bookshelf:inspector levels."minecraft:riptide" run data modify storage bookshelf:inspector enchantments[{id:"minecraft:riptide"}].lvl set from storage bookshelf:inspector levels."minecraft:riptide"
execute if data storage bookshelf:inspector levels."minecraft:channeling" run data modify storage bookshelf:inspector enchantments append value {id:"minecraft:channeling"}
execute if data storage bookshelf:inspector levels."minecraft:channeling" run data modify storage bookshelf:inspector enchantments[{id:"minecraft:channeling"}].lvl set from storage bookshelf:inspector levels."minecraft:channeling"
execute if data storage bookshelf:inspector levels."minecraft:wind_burst" run data modify storage bookshelf:inspector enchantments append value {id:"minecraft:wind_burst"}
execute if data storage bookshelf:inspector levels."minecraft:wind_burst" run data modify storage bookshelf:inspector enchantments[{id:"minecraft:wind_burst"}].lvl set from storage bookshelf:inspector levels."minecraft:wind_burst"
execute if data storage bookshelf:inspector levels."minecraft:frost_walker" run data modify storage bookshelf:inspector enchantments append value {id:"minecraft:frost_walker"}
execute if data storage bookshelf:inspector levels."minecraft:frost_walker" run data modify storage bookshelf:inspector enchantments[{id:"minecraft:frost_walker"}].lvl set from storage bookshelf:inspector levels."minecraft:frost_walker"
execute if data storage bookshelf:inspector levels."minecraft:sharpness" run data modify storage bookshelf:inspector enchantments append value {id:"minecraft:sharpness"}
execute if data storage bookshelf:inspector levels."minecraft:sharpness" run data modify storage bookshelf:inspector enchantments[{id:"minecraft:sharpness"}].lvl set from storage bookshelf:inspector levels."minecraft:sharpness"
execute if data storage bookshelf:inspector levels."minecraft:smite" run data modify storage bookshelf:inspector enchantments append value {id:"minecraft:smite"}
execute if data storage bookshelf:inspector levels."minecraft:smite" run data modify storage bookshelf:inspector enchantments[{id:"minecraft:smite"}].lvl set from storage bookshelf:inspector levels."minecraft:smite"
execute if data storage bookshelf:inspector levels."minecraft:bane_of_arthropods" run data modify storage bookshelf:inspector enchantments append value {id:"minecraft:bane_of_arthropods"}
execute if data storage bookshelf:inspector levels."minecraft:bane_of_arthropods" run data modify storage bookshelf:inspector enchantments[{id:"minecraft:bane_of_arthropods"}].lvl set from storage bookshelf:inspector levels."minecraft:bane_of_arthropods"
execute if data storage bookshelf:inspector levels."minecraft:impaling" run data modify storage bookshelf:inspector enchantments append value {id:"minecraft:impaling"}
execute if data storage bookshelf:inspector levels."minecraft:impaling" run data modify storage bookshelf:inspector enchantments[{id:"minecraft:impaling"}].lvl set from storage bookshelf:inspector levels."minecraft:impaling"
execute if data storage bookshelf:inspector levels."minecraft:power" run data modify storage bookshelf:inspector enchantments append value {id:"minecraft:power"}
execute if data storage bookshelf:inspector levels."minecraft:power" run data modify storage bookshelf:inspector enchantments[{id:"minecraft:power"}].lvl set from storage bookshelf:inspector levels."minecraft:power"
execute if data storage bookshelf:inspector levels."minecraft:density" run data modify storage bookshelf:inspector enchantments append value {id:"minecraft:density"}
execute if data storage bookshelf:inspector levels."minecraft:density" run data modify storage bookshelf:inspector enchantments[{id:"minecraft:density"}].lvl set from storage bookshelf:inspector levels."minecraft:density"
execute if data storage bookshelf:inspector levels."minecraft:breach" run data modify storage bookshelf:inspector enchantments append value {id:"minecraft:breach"}
execute if data storage bookshelf:inspector levels."minecraft:breach" run data modify storage bookshelf:inspector enchantments[{id:"minecraft:breach"}].lvl set from storage bookshelf:inspector levels."minecraft:breach"
execute if data storage bookshelf:inspector levels."minecraft:piercing" run data modify storage bookshelf:inspector enchantments append value {id:"minecraft:piercing"}
execute if data storage bookshelf:inspector levels."minecraft:piercing" run data modify storage bookshelf:inspector enchantments[{id:"minecraft:piercing"}].lvl set from storage bookshelf:inspector levels."minecraft:piercing"
execute if data storage bookshelf:inspector levels."minecraft:sweeping_edge" run data modify storage bookshelf:inspector enchantments append value {id:"minecraft:sweeping_edge"}
execute if data storage bookshelf:inspector levels."minecraft:sweeping_edge" run data modify storage bookshelf:inspector enchantments[{id:"minecraft:sweeping_edge"}].lvl set from storage bookshelf:inspector levels."minecraft:sweeping_edge"
execute if data storage bookshelf:inspector levels."minecraft:multishot" run data modify storage bookshelf:inspector enchantments append value {id:"minecraft:multishot"}
execute if data storage bookshelf:inspector levels."minecraft:multishot" run data modify storage bookshelf:inspector enchantments[{id:"minecraft:multishot"}].lvl set from storage bookshelf:inspector levels."minecraft:multishot"
execute if data storage bookshelf:inspector levels."minecraft:fire_aspect" run data modify storage bookshelf:inspector enchantments append value {id:"minecraft:fire_aspect"}
execute if data storage bookshelf:inspector levels."minecraft:fire_aspect" run data modify storage bookshelf:inspector enchantments[{id:"minecraft:fire_aspect"}].lvl set from storage bookshelf:inspector levels."minecraft:fire_aspect"
execute if data storage bookshelf:inspector levels."minecraft:flame" run data modify storage bookshelf:inspector enchantments append value {id:"minecraft:flame"}
execute if data storage bookshelf:inspector levels."minecraft:flame" run data modify storage bookshelf:inspector enchantments[{id:"minecraft:flame"}].lvl set from storage bookshelf:inspector levels."minecraft:flame"
execute if data storage bookshelf:inspector levels."minecraft:knockback" run data modify storage bookshelf:inspector enchantments append value {id:"minecraft:knockback"}
execute if data storage bookshelf:inspector levels."minecraft:knockback" run data modify storage bookshelf:inspector enchantments[{id:"minecraft:knockback"}].lvl set from storage bookshelf:inspector levels."minecraft:knockback"
execute if data storage bookshelf:inspector levels."minecraft:punch" run data modify storage bookshelf:inspector enchantments append value {id:"minecraft:punch"}
execute if data storage bookshelf:inspector levels."minecraft:punch" run data modify storage bookshelf:inspector enchantments[{id:"minecraft:punch"}].lvl set from storage bookshelf:inspector levels."minecraft:punch"
execute if data storage bookshelf:inspector levels."minecraft:protection" run data modify storage bookshelf:inspector enchantments append value {id:"minecraft:protection"}
execute if data storage bookshelf:inspector levels."minecraft:protection" run data modify storage bookshelf:inspector enchantments[{id:"minecraft:protection"}].lvl set from storage bookshelf:inspector levels."minecraft:protection"
execute if data storage bookshelf:inspector levels."minecraft:blast_protection" run data modify storage bookshelf:inspector enchantments append value {id:"minecraft:blast_protection"}
execute if data storage bookshelf:inspector levels."minecraft:blast_protection" run data modify storage bookshelf:inspector enchantments[{id:"minecraft:blast_protection"}].lvl set from storage bookshelf:inspector levels."minecraft:blast_protection"
execute if data storage bookshelf:inspector levels."minecraft:fire_protection" run data modify storage bookshelf:inspector enchantments append value {id:"minecraft:fire_protection"}
execute if data storage bookshelf:inspector levels."minecraft:fire_protection" run data modify storage bookshelf:inspector enchantments[{id:"minecraft:fire_protection"}].lvl set from storage bookshelf:inspector levels."minecraft:fire_protection"
execute if data storage bookshelf:inspector levels."minecraft:projectile_protection" run data modify storage bookshelf:inspector enchantments append value {id:"minecraft:projectile_protection"}
execute if data storage bookshelf:inspector levels."minecraft:projectile_protection" run data modify storage bookshelf:inspector enchantments[{id:"minecraft:projectile_protection"}].lvl set from storage bookshelf:inspector levels."minecraft:projectile_protection"
execute if data storage bookshelf:inspector levels."minecraft:feather_falling" run data modify storage bookshelf:inspector enchantments append value {id:"minecraft:feather_falling"}
execute if data storage bookshelf:inspector levels."minecraft:feather_falling" run data modify storage bookshelf:inspector enchantments[{id:"minecraft:feather_falling"}].lvl set from storage bookshelf:inspector levels."minecraft:feather_falling"
execute if data storage bookshelf:inspector levels."minecraft:fortune" run data modify storage bookshelf:inspector enchantments append value {id:"minecraft:fortune"}
execute if data storage bookshelf:inspector levels."minecraft:fortune" run data modify storage bookshelf:inspector enchantments[{id:"minecraft:fortune"}].lvl set from storage bookshelf:inspector levels."minecraft:fortune"
execute if data storage bookshelf:inspector levels."minecraft:looting" run data modify storage bookshelf:inspector enchantments append value {id:"minecraft:looting"}
execute if data storage bookshelf:inspector levels."minecraft:looting" run data modify storage bookshelf:inspector enchantments[{id:"minecraft:looting"}].lvl set from storage bookshelf:inspector levels."minecraft:looting"
execute if data storage bookshelf:inspector levels."minecraft:silk_touch" run data modify storage bookshelf:inspector enchantments append value {id:"minecraft:silk_touch"}
execute if data storage bookshelf:inspector levels."minecraft:silk_touch" run data modify storage bookshelf:inspector enchantments[{id:"minecraft:silk_touch"}].lvl set from storage bookshelf:inspector levels."minecraft:silk_touch"
execute if data storage bookshelf:inspector levels."minecraft:luck_of_the_sea" run data modify storage bookshelf:inspector enchantments append value {id:"minecraft:luck_of_the_sea"}
execute if data storage bookshelf:inspector levels."minecraft:luck_of_the_sea" run data modify storage bookshelf:inspector enchantments[{id:"minecraft:luck_of_the_sea"}].lvl set from storage bookshelf:inspector levels."minecraft:luck_of_the_sea"
execute if data storage bookshelf:inspector levels."minecraft:efficiency" run data modify storage bookshelf:inspector enchantments append value {id:"minecraft:efficiency"}
execute if data storage bookshelf:inspector levels."minecraft:efficiency" run data modify storage bookshelf:inspector enchantments[{id:"minecraft:efficiency"}].lvl set from storage bookshelf:inspector levels."minecraft:efficiency"
execute if data storage bookshelf:inspector levels."minecraft:quick_charge" run data modify storage bookshelf:inspector enchantments append value {id:"minecraft:quick_charge"}
execute if data storage bookshelf:inspector levels."minecraft:quick_charge" run data modify storage bookshelf:inspector enchantments[{id:"minecraft:quick_charge"}].lvl set from storage bookshelf:inspector levels."minecraft:quick_charge"
execute if data storage bookshelf:inspector levels."minecraft:lunge" run data modify storage bookshelf:inspector enchantments append value {id:"minecraft:lunge"}
execute if data storage bookshelf:inspector levels."minecraft:lunge" run data modify storage bookshelf:inspector enchantments[{id:"minecraft:lunge"}].lvl set from storage bookshelf:inspector levels."minecraft:lunge"
execute if data storage bookshelf:inspector levels."minecraft:lure" run data modify storage bookshelf:inspector enchantments append value {id:"minecraft:lure"}
execute if data storage bookshelf:inspector levels."minecraft:lure" run data modify storage bookshelf:inspector enchantments[{id:"minecraft:lure"}].lvl set from storage bookshelf:inspector levels."minecraft:lure"
execute if data storage bookshelf:inspector levels."minecraft:respiration" run data modify storage bookshelf:inspector enchantments append value {id:"minecraft:respiration"}
execute if data storage bookshelf:inspector levels."minecraft:respiration" run data modify storage bookshelf:inspector enchantments[{id:"minecraft:respiration"}].lvl set from storage bookshelf:inspector levels."minecraft:respiration"
execute if data storage bookshelf:inspector levels."minecraft:aqua_affinity" run data modify storage bookshelf:inspector enchantments append value {id:"minecraft:aqua_affinity"}
execute if data storage bookshelf:inspector levels."minecraft:aqua_affinity" run data modify storage bookshelf:inspector enchantments[{id:"minecraft:aqua_affinity"}].lvl set from storage bookshelf:inspector levels."minecraft:aqua_affinity"
execute if data storage bookshelf:inspector levels."minecraft:soul_speed" run data modify storage bookshelf:inspector enchantments append value {id:"minecraft:soul_speed"}
execute if data storage bookshelf:inspector levels."minecraft:soul_speed" run data modify storage bookshelf:inspector enchantments[{id:"minecraft:soul_speed"}].lvl set from storage bookshelf:inspector levels."minecraft:soul_speed"
execute if data storage bookshelf:inspector levels."minecraft:swift_sneak" run data modify storage bookshelf:inspector enchantments append value {id:"minecraft:swift_sneak"}
execute if data storage bookshelf:inspector levels."minecraft:swift_sneak" run data modify storage bookshelf:inspector enchantments[{id:"minecraft:swift_sneak"}].lvl set from storage bookshelf:inspector levels."minecraft:swift_sneak"
execute if data storage bookshelf:inspector levels."minecraft:depth_strider" run data modify storage bookshelf:inspector enchantments append value {id:"minecraft:depth_strider"}
execute if data storage bookshelf:inspector levels."minecraft:depth_strider" run data modify storage bookshelf:inspector enchantments[{id:"minecraft:depth_strider"}].lvl set from storage bookshelf:inspector levels."minecraft:depth_strider"
execute if data storage bookshelf:inspector levels."minecraft:thorns" run data modify storage bookshelf:inspector enchantments append value {id:"minecraft:thorns"}
execute if data storage bookshelf:inspector levels."minecraft:thorns" run data modify storage bookshelf:inspector enchantments[{id:"minecraft:thorns"}].lvl set from storage bookshelf:inspector levels."minecraft:thorns"
execute if data storage bookshelf:inspector levels."minecraft:loyalty" run data modify storage bookshelf:inspector enchantments append value {id:"minecraft:loyalty"}
execute if data storage bookshelf:inspector levels."minecraft:loyalty" run data modify storage bookshelf:inspector enchantments[{id:"minecraft:loyalty"}].lvl set from storage bookshelf:inspector levels."minecraft:loyalty"
execute if data storage bookshelf:inspector levels."minecraft:unbreaking" run data modify storage bookshelf:inspector enchantments append value {id:"minecraft:unbreaking"}
execute if data storage bookshelf:inspector levels."minecraft:unbreaking" run data modify storage bookshelf:inspector enchantments[{id:"minecraft:unbreaking"}].lvl set from storage bookshelf:inspector levels."minecraft:unbreaking"
execute if data storage bookshelf:inspector levels."minecraft:infinity" run data modify storage bookshelf:inspector enchantments append value {id:"minecraft:infinity"}
execute if data storage bookshelf:inspector levels."minecraft:infinity" run data modify storage bookshelf:inspector enchantments[{id:"minecraft:infinity"}].lvl set from storage bookshelf:inspector levels."minecraft:infinity"
execute if data storage bookshelf:inspector levels."minecraft:mending" run data modify storage bookshelf:inspector enchantments append value {id:"minecraft:mending"}
execute if data storage bookshelf:inspector levels."minecraft:mending" run data modify storage bookshelf:inspector enchantments[{id:"minecraft:mending"}].lvl set from storage bookshelf:inspector levels."minecraft:mending"
