# Make the consume trigger reusable and roll a uniform cost from 3 through 11.
# Those nine equally likely values have an exact average of 7.
advancement revoke @s only xp:bottle/consume/glass/bottle
scoreboard players set @s takis.xp.bottle 0
execute store result score @s takis.xp.available run experience query @s points
execute if entity @s[level=2..] store result score @s takis.xp.bottle run random value 3..11
execute if entity @s[level=1] if score @s takis.xp.available matches 4.. store result score @s takis.xp.bottle run random value 3..11

# Deduct the full rolled number of points. Eligibility guarantees at least 11
# total XP, so every successful bottle preserves the uniform distribution.
execute if score @s takis.xp.bottle matches 3 run experience add @s -3 points
execute if score @s takis.xp.bottle matches 4 run experience add @s -4 points
execute if score @s takis.xp.bottle matches 5 run experience add @s -5 points
execute if score @s takis.xp.bottle matches 6 run experience add @s -6 points
execute if score @s takis.xp.bottle matches 7 run experience add @s -7 points
execute if score @s takis.xp.bottle matches 8 run experience add @s -8 points
execute if score @s takis.xp.bottle matches 9 run experience add @s -9 points
execute if score @s takis.xp.bottle matches 10 run experience add @s -10 points
execute if score @s takis.xp.bottle matches 11 run experience add @s -11 points
execute if score @s takis.xp.bottle matches 3..11 run give @s minecraft:experience_bottle 1
execute if score @s takis.xp.bottle matches 3..11 at @s run playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ 0.8 1.0

# A prepared bottle can be transferred or kept after losing XP. Rechecking here
# prevents a free experience bottle and refunds the consumed empty bottle.
execute unless score @s takis.xp.bottle matches 3..11 run give @s minecraft:glass_bottle 1
