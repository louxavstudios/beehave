# Give ordinary crop seeds food components when a player holds them. They can
# still be planted normally by using them on farmland; using them in the air
# eats one seed instead.
execute as @a if items entity @s weapon.mainhand #seeds:edible/seeds unless items entity @s weapon.mainhand *[minecraft:consumable] run item modify entity @s weapon.mainhand seeds:make_seeds_edible
execute as @a if items entity @s weapon.offhand #seeds:edible/seeds unless items entity @s weapon.offhand *[minecraft:consumable] run item modify entity @s weapon.offhand seeds:make_seeds_edible
