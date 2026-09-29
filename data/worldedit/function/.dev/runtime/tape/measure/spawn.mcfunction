$execute positioned $(x) $(y) $(z) align xyz run summon minecraft:text_display ~0.5 ~1.5 ~0.5 {Tags:["takis.tape_text","takis.tape_centered","takis.tape_centered_v2","takis.tape_new"],billboard:"center",alignment:"center",background:0,shadow:1b,see_through:0b,view_range:1.0f,text:{text:"$(number)",color:"white",bold:false,italic:false}}
$execute positioned $(x) $(y) $(z) align xyz run summon minecraft:interaction ~0.5 ~1.15 ~0.5 {Tags:["takis.tape_hitbox","takis.tape_centered","takis.tape_centered_v2","takis.tape_new"],width:0.7f,height:0.7f,response:1b}
scoreboard players operation @e[tag=takis.tape_new,limit=2,sort=nearest] takis.measure.id = #current takis.measure.id
tag @e[tag=takis.tape_new] remove takis.tape_new
