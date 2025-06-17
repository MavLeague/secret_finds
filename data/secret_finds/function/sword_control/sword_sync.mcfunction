#execute as @e[tag=sword_control.sword] if block ~ ~ ~ #darkness:sword_control_through run data modify entity @e[tag=sword_control.sword,limit=1] Rotation set from entity @s Rotation

scoreboard players operation #curent sword_control.tag = @s sword_control.tag

data modify storage darkness:temp sword_control.Rotation set from entity @s Rotation

execute as @e[tag=sword_control.sword] if score @s sword_control.tag = #curent sword_control.tag run data modify entity @s Rotation set from storage darkness:temp sword_control.Rotation




























