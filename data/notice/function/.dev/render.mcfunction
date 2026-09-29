# One actionbar channel for every Takis notification. Higher-priority requests
# replace lower ones before this function runs, so only the winner is rendered.
execute if score @s takis.notif.event matches 1 run title @s actionbar {text:"Kingdom allowlist updated",color:"white"}
execute if score @s takis.notif.event matches 2 run title @s actionbar {text:"Crouch and right click with an iron ingot to repair",color:"yellow"}
execute if score @s takis.notif.event matches 3 run title @s actionbar {text:"Some players have beds in their inventory",color:"gray"}
execute if score @s takis.notif.event matches 4 run title @s actionbar {text:"Some players are close to a bed",color:"gray"}
execute if score @s takis.notif.event matches 5 run title @s actionbar {text:"The Book from God was given",color:"white"}
execute if score @s takis.notif.event matches 6 run title @s actionbar {text:"Chest replacement is blocked for security reasons.",color:"red"}
execute if score @s takis.notif.event matches 10 run title @s actionbar {text:"Divine Favor enabled: Creative mode",color:"white"}
execute if score @s takis.notif.event matches 11 run title @s actionbar {text:"Divine Favor disabled: Survival mode",color:"white"}
execute if score @s takis.notif.event matches 13 run title @s actionbar {text:"You have entered Kondom, the territory is owned by xavthecave",color:"white"}
execute if score @s takis.notif.event matches 14 run title @s actionbar {text:"You have entered Loisland, the territory is owned by loangoncalves",color:"white"}
execute if score @s takis.notif.event matches 15 run title @s actionbar {text:"You have entered Lulu Village, the territory is owned by hahaAngee_",color:"white"}
execute if score @s takis.notif.event matches 16 run title @s actionbar {text:"You have entered Sashx Anarchy, the territory is owned by Sashimir",color:"white"}
execute if score @s takis.notif.event matches 17 run title @s actionbar {text:"You have exited Kondom, xavthecave wishes you well",color:"white"}
execute if score @s takis.notif.event matches 18 run title @s actionbar {text:"You have exited Loisland, loangoncalves wishes you well",color:"white"}
execute if score @s takis.notif.event matches 19 run title @s actionbar {text:"You have exited Lulu Village, hahaAngee_ wishes you well",color:"white"}
execute if score @s takis.notif.event matches 20 run title @s actionbar {text:"You have exited Sashx Anarchy, Sashimir wishes you well",color:"white"}
execute if score @s takis.notif.event matches 21 run title @s actionbar {text:"-2 Credit: Changing gamemode is prohibited. Stay in Survival.",color:"red"}
execute if score @s takis.notif.event matches 22 run title @s actionbar {text:"-1 Credit: Do not attack lourat08. Help others to improve your score.",color:"red"}
execute if score @s takis.notif.event matches 23 run title @s actionbar {text:"-2 Credit: Do not attack hahaAngee_. Help others to improve your score.",color:"red"}
execute if score @s takis.notif.event matches 24 run title @s actionbar {text:"+2 Credit: You bred passive mobs. Keep caring for animals.",color:"green"}
execute if score @s takis.notif.event matches 25 run title @s actionbar {text:"+1 Credit: You traded with a villager. Support the community.",color:"green"}
execute if score @s takis.notif.event matches 26 run title @s actionbar {text:"Credit depleted. No prison cells are configured yet.",color:"dark_red"}
execute if score @s takis.notif.event matches 27 run title @s actionbar {text:"Credit depleted. You have been assigned to a prison cell.",color:"dark_red"}
execute if score @s takis.notif.event matches 28 run title @s actionbar {text:"+1 Credit: You repaired an iron golem. Keep protecting the community.",color:"green"}
execute if score @s takis.notif.event matches 29 run title @s actionbar {text:"Mail sent successfully!",color:"green"}
