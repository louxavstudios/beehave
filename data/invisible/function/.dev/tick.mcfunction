# Remember which frames were empty before interaction. Vanilla inserts a
# phantom membrane before the interaction advancement runs; this state lets the
# toggle restore it without disturbing an existing displayed item.
execute as @a if items entity @s weapon.mainhand minecraft:phantom_membrane at @s run function invisible:.dev/frame/cache/nearby
execute as @a unless items entity @s weapon.mainhand minecraft:phantom_membrane if items entity @s weapon.offhand minecraft:phantom_membrane at @s run function invisible:.dev/frame/cache/nearby
