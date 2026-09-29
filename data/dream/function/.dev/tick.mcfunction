# Roll the next Bad Dream outcome immediately after a recorded death.
execute if entity @a[scores={takis.deaths=1..}] run function dream:.dev/dream/on/death
