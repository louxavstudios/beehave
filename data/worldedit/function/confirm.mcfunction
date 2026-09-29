execute unless score @s worldedit.paste matches 1 run return run tellraw @s {"text":"WorldEdit: no paste preview to confirm","color":"gray"}
function worldedit:.dev/internal/history/save/undo
function worldedit:.dev/internal/paste/macro with storage worldedit:runtime region
scoreboard players set @s worldedit.paste 0
function worldedit:.dev/notification/sound/run
