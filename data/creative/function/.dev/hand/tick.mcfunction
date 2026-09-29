scoreboard players add @a takis.divine.cool 0
scoreboard players add @a takis.divine.latch 0
scoreboard players remove @a[scores={takis.divine.cool=1..}] takis.divine.cool 1
execute as @a unless predicate creative:sneaking run scoreboard players set @s takis.divine.latch 0

# Convert old timed Divine Favor sessions into the indefinite toggle state.
execute as @a[tag=takis.divine_favor,tag=!takis.divine_toggle] run function creative:.dev/hand/migrate/active
execute as @a[tag=takis.divine_favor,gamemode=survival] run function creative:.dev/hand/disable/silent
execute as @a[tag=takis.divine_favor,gamemode=!creative,gamemode=!survival] run gamemode creative @s
