# Initialize each player once. Adding zero creates the sentinel score for joins.
scoreboard players add @a law.init 0
execute as @a[scores={law.init=0}] run function law:.dev/player/init

# Keep exact-name tags on protected players for advancement predicates.
tag @a[name=!lourat08] remove law.lourat08
tag @a[name=lourat08] add law.lourat08
tag @a[name=!hahaAngee_] remove law.hahaangee
tag @a[name=hahaAngee_] add law.hahaangee

# Survival is the only permitted player mode unless Divine Favor is active.
execute as @a[gamemode=creative,tag=!takis.divine_favor] run function law:.dev/offence/gamemode
execute as @a[gamemode=adventure,tag=!takis.kingdom_restricted,tag=!takis.divine_favor] run function law:.dev/offence/gamemode
execute as @a[gamemode=spectator,tag=!takis.divine_favor] run function law:.dev/offence/gamemode

# Defensive bounds and prison state.
scoreboard players set @a[scores={law.credit=..-1}] law.credit 0
scoreboard players set @a[scores={law.credit=43..}] law.credit 42
scoreboard players set @a[scores={law.credit=1..}] law.prisoned 0
execute as @a[scores={law.credit=0,law.prisoned=0}] run function law:.dev/prison/send

# Event-specific actionbar requests. Notice resolves their priority afterward.
execute as @a[scores={law.notice=1..,law.event=1}] run function notice:.dev/law/event/1/error
execute as @a[scores={law.notice=1..,law.event=2}] run function notice:.dev/law/event/2/error
execute as @a[scores={law.notice=1..,law.event=3}] run function notice:.dev/law/event/3/error
execute as @a[scores={law.notice=1..,law.event=4}] run function notice:.dev/law/event/4/success
execute as @a[scores={law.notice=1..,law.event=5}] run function notice:.dev/law/event/5/success
execute as @a[scores={law.notice=1..,law.event=6}] run function notice:.dev/law/event/6/error
execute as @a[scores={law.notice=1..,law.event=7}] run function notice:.dev/law/event/7/error
execute as @a[scores={law.notice=1..,law.event=8}] run function notice:.dev/law/event/8/success
scoreboard players remove @a[scores={law.notice=1..}] law.notice 1
