data modify storage kingdom:kingdom notify_args set value {kingdom:"Lulu Village"}
function kingdom:.dev/allowlist/notify/start
data modify storage kingdom:kingdom allowlists.lulu_village set from storage kingdom:kingdom box_current
scoreboard players add #v2 kingdom.meta 1
function kingdom:.dev/generated/lulu/village/sync/all
function kingdom:.dev/generated/rebuild/players
