data modify storage kingdom:kingdom notify_args set value {kingdom:"Loisland"}
function kingdom:.dev/allowlist/notify/start
data modify storage kingdom:kingdom allowlists.loisland set from storage kingdom:kingdom box_current
scoreboard players add #v4 kingdom.meta 1
function kingdom:.dev/generated/loisland/sync/all
function kingdom:.dev/generated/rebuild/players
