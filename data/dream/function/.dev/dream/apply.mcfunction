# A successful next outcome temporarily overrides both death gamerules. A
# normal outcome restores the values that existed before Bad Dream initialized.
execute if score #success takis.dream matches 1 run gamerule keep_inventory true
execute if score #success takis.dream matches 1 run gamerule immediate_respawn true
execute if score #success takis.dream matches 0 if score #base.keep takis.dream matches 0 run gamerule keep_inventory false
execute if score #success takis.dream matches 0 if score #base.keep takis.dream matches 1 run gamerule keep_inventory true
execute if score #success takis.dream matches 0 run gamerule immediate_respawn false
