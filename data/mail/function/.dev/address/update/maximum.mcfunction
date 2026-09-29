# A nested function makes each comparison observe the previous marker's update.
execute if score @s mail.sync > #maximum mail.sync run scoreboard players operation #maximum mail.sync = @s mail.sync
