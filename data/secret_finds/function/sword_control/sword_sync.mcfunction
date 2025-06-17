#execute as @e[tag=sword_control.sword] if block ~ ~ ~ #darkness:sword_control_through run data modify entity @e[tag=sword_control.sword,limit=1] Rotation set from entity @s Rotation

scoreboard players operation #curent secret_finds.sword_control.id = @s secret_finds.sword_control.id

data modify storage darkness:temp sword_control.Rotation set from entity @s Rotation

execute as @e[tag=sword_control.sword] if score @s secret_finds.sword_control.id = #curent secret_finds.sword_control.id run data modify entity @s Rotation set from storage darkness:temp sword_control.Rotation




























