data modify storage kingdom:kingdom notify_args set value {kingdom:"Sashx Anarchy"}
function kingdom:.dev/allowlist/notify/start
data modify storage kingdom:kingdom allowlists.sashx_anarchy set from storage kingdom:kingdom box_current
scoreboard players add #v3 kingdom.meta 1
function kingdom:.dev/generated/sashx/anarchy/sync/all
function kingdom:.dev/generated/rebuild/players
