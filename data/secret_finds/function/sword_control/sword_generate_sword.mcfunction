# hinterausrichtung

execute unless score @s secret_finds.sword_control.id matches 0.. run function secret_finds:sword_control/sword_score

# 0 Base
summon area_effect_cloud ^ ^ ^ {Tags:["sword_control.base","sword_control"],Duration:1}

teleport @e[tag=sword_control.base,limit=1,sort=nearest] ^-0.001 ^ ^ facing entity @s

# 1 Base
execute at @e[tag=sword_control.base] run summon area_effect_cloud ^ ^ ^ {Tags:["sword_control.base1","sword_control"],Duration:1}

execute as @e[tag=sword_control.base,limit=1] at @s run teleport @e[tag=sword_control.base1,limit=1,sort=nearest] ^0.01 ^ ^ facing entity @e[tag=sword_control.base,limit=1]

# 2 Base
execute at @e[tag=sword_control.base1] run summon area_effect_cloud ^ ^ ^ {Tags:["sword_control.base2","sword_control"],Duration:1}

execute at @e[tag=sword_control.base1,limit=1] as @e[tag=sword_control.base1,limit=1] run teleport @e[tag=sword_control.base2,limit=1,sort=nearest] ^ ^ ^0.001 facing entity @e[tag=sword_control.base1,limit=1]

# summon cyrcle

execute at @e[tag=sword_control.base2] run summon area_effect_cloud ^2 ^2 ^1 {Duration:40,Tags:["sword_control.circle1","sword_control.summon","sword_control"]}

#Tag cyrcle

scoreboard players operation #curent secret_finds.sword_control.id = @s secret_finds.sword_control.id

execute as @e[type=area_effect_cloud,tag=sword_control.summon,tag=sword_control,distance=..8] unless score @s secret_finds.sword_control.id matches 0.. run scoreboard players operation @s secret_finds.sword_control.id = #curent secret_finds.sword_control.id

# orientation cyrcle

data modify entity @e[tag=sword_control.circle1,limit=1,sort=nearest] Rotation set from entity @s Rotation

# summon sword

execute at @s as @e[type=area_effect_cloud,tag=sword_control.summon,tag=sword_control,distance=..8] at @s run summon item_display ~ ~ ~ {glow_color_override:0b,teleport_duration:2,NoGravity:1b,interpolation_duration:50,Tags:["sword_control","sword_control.sword"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0.6532815f,0.2705981f,-0.2705981f,0.6532815f],translation:[0f,0f,0.1f],scale:[0f,0f,0f]},item:{id:"minecraft:iron_sword",count:1},brightness:{sky:15,block:15}}

# tag sword

execute as @e[tag=sword_control.sword,distance=..8] unless score @s secret_finds.sword_control.id matches 0.. run scoreboard players operation @s secret_finds.sword_control.id = #curent secret_finds.sword_control.id

# sword orientation

execute as @s at @e[type=area_effect_cloud,tag=sword_control.circle1,distance=..8] run data modify entity @e[tag=sword_control.sword,limit=1,sort=nearest] Rotation set from entity @s Rotation


# sword animation

execute as @e[tag=sword_control.sword,distance=..8] run data modify entity @s transformation.scale set value [1f,1f,1f]
execute as @e[tag=sword_control.sword,distance=..8] run data modify entity @s start_interpolation set value -1


