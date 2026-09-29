
# The enchantment supplies the exact struck-block position. Determine the
# action from that block instead of rechecking item slots during the callback;
# the tick handler verifies crouching when the block finishes breaking.
execute if block ~ ~ ~ #tree:tree/logs align xyz run function tree:.dev/queue
execute if block ~ ~ ~ #minecraft:leaves align xyz run function tree:.dev/leaves/queue
