#particle
execute at @e[type=minecraft:area_effect_cloud,tag=sword_control.summon] run function darkness:sword_control/particle


#fliegen der schwerter
execute as @e[sort=nearest,tag=sword_control.sword,limit=4,type=minecraft:item_display] at @s if block ^ ^ ^.5 #darkness:sword_control_through run tp @s ^ ^ ^.25
#lenkende Schwerter
execute as @a[tag=sword_control.player] run function darkness:sword_control/sword_sync

#execute at @e[tag=sword_control.sword ] unless block ~ ~ ~ #darkness:sword_control_through run summon tnt ~ ~ ~
#execute as @e[tag=sword_control.sword] at @s unless block ~ ~ ~ #darkness:sword_control_through run kill @s