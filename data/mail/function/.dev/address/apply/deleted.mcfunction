data modify storage mail:mail deleted_work set value []
data modify storage mail:mail deleted_work set from storage mail:mail deleted_ids
execute if data storage mail:mail deleted_work[0] run function mail:.dev/address/apply/deleted/next