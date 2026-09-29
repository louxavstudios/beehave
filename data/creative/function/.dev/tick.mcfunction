scoreboard players add #phase takis.divine.calc 1
execute if score #phase takis.divine.calc matches 20.. run scoreboard players set #phase takis.divine.calc 0
# A Book or Book and Quill named Divine Favor becomes the Creative Hand.
# Legacy Creative Commons books migrate automatically.
execute if score #phase takis.divine.calc matches 19 as @a run function creative:.dev/hand/prepare/inventory
execute as @a run function creative:.dev/hand/prepare/slot {slot:"weapon.mainhand"}
execute as @a run function creative:.dev/hand/prepare/slot {slot:"weapon.offhand"}
function creative:.dev/hand/tick
