data modify storage kingdom:kingdom notify_args set value {kingdom:"Kondom"}
function kingdom:.dev/allowlist/notify/start
data modify storage kingdom:kingdom allowlists.kondom set from storage kingdom:kingdom box_current
scoreboard players add #v1 kingdom.meta 1
function kingdom:.dev/generated/kondom/sync/all
function kingdom:.dev/generated/rebuild/players
