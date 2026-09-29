data modify storage kingdom:kingdom notify_work set value []
data modify storage kingdom:kingdom notify_work set from storage kingdom:kingdom box_current
execute if data storage kingdom:kingdom notify_work[0] run function kingdom:.dev/allowlist/notify/next
