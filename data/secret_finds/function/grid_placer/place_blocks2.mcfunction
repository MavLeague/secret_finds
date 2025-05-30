execute if entity @s[gamemode=!creative] store result score #grid_placer.count secret_finds.data run data get entity @s equipment.offhand.count

execute if entity @s[gamemode=creative] run scoreboard players set #grid_placer.count secret_finds.data 8

scoreboard players add #grid_placer.count secret_finds.data 1

# 1 0 0
execute unless data storage secret_finds:data {grid_placer:{axis:"x"}} if block ~1 ~ ~ #air if score #grid_placer.count secret_finds.data matches 1.. run scoreboard players remove #grid_placer.count secret_finds.data 1
execute unless data storage secret_finds:data {grid_placer:{axis:"x"}} if block ~1 ~ ~ #air if score #grid_placer.count secret_finds.data matches 1.. run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~

# 0 1 0
execute unless data storage secret_finds:data {grid_placer:{axis:"y"}} if block ~ ~1 ~ #air if score #grid_placer.count secret_finds.data matches 1.. run scoreboard players remove #grid_placer.count secret_finds.data 1
execute unless data storage secret_finds:data {grid_placer:{axis:"y"}} if block ~ ~1 ~ #air if score #grid_placer.count secret_finds.data matches 1.. run clone ~ ~ ~ ~ ~ ~ ~ ~1 ~

# 1 1 0
execute if data storage secret_finds:data {grid_placer:{axis:"z"}} if block ~1 ~1 ~ #air if score #grid_placer.count secret_finds.data matches 1.. run scoreboard players remove #grid_placer.count secret_finds.data 1
execute if data storage secret_finds:data {grid_placer:{axis:"z"}} if block ~1 ~1 ~ #air if score #grid_placer.count secret_finds.data matches 1.. run clone ~ ~ ~ ~ ~ ~ ~1 ~1 ~

# 0 0 1
execute unless data storage secret_finds:data {grid_placer:{axis:"z"}} if block ~ ~ ~1 #air if score #grid_placer.count secret_finds.data matches 1.. run scoreboard players remove #grid_placer.count secret_finds.data 1
execute unless data storage secret_finds:data {grid_placer:{axis:"z"}} if block ~ ~ ~1 #air if score #grid_placer.count secret_finds.data matches 1.. run clone ~ ~ ~ ~ ~ ~ ~ ~ ~1

# 1 0 1
execute if data storage secret_finds:data {grid_placer:{axis:"y"}} if block ~1 ~ ~1 #air if score #grid_placer.count secret_finds.data matches 1.. run scoreboard players remove #grid_placer.count secret_finds.data 1
execute if data storage secret_finds:data {grid_placer:{axis:"y"}} if block ~1 ~ ~1 #air if score #grid_placer.count secret_finds.data matches 1.. run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~1

# 0 1 1
execute if data storage secret_finds:data {grid_placer:{axis:"x"}} if block ~ ~1 ~1 #air if score #grid_placer.count secret_finds.data matches 1.. run scoreboard players remove #grid_placer.count secret_finds.data 1
execute if data storage secret_finds:data {grid_placer:{axis:"x"}} if block ~ ~1 ~1 #air if score #grid_placer.count secret_finds.data matches 1.. run clone ~ ~ ~ ~ ~ ~ ~ ~1 ~1

# -1 0 0
execute unless data storage secret_finds:data {grid_placer:{axis:"x"}} if block ~-1 ~ ~ #air if score #grid_placer.count secret_finds.data matches 1.. run scoreboard players remove #grid_placer.count secret_finds.data 1
execute unless data storage secret_finds:data {grid_placer:{axis:"x"}} if block ~-1 ~ ~ #air if score #grid_placer.count secret_finds.data matches 1.. run clone ~ ~ ~ ~ ~ ~ ~-1 ~ ~

# 0 -1 0
execute unless data storage secret_finds:data {grid_placer:{axis:"y"}} if block ~ ~-1 ~ #air if score #grid_placer.count secret_finds.data matches 1.. run scoreboard players remove #grid_placer.count secret_finds.data 1
execute unless data storage secret_finds:data {grid_placer:{axis:"y"}} if block ~ ~-1 ~ #air if score #grid_placer.count secret_finds.data matches 1.. run clone ~ ~ ~ ~ ~ ~ ~ ~-1 ~

# -1 -1 0
execute if data storage secret_finds:data {grid_placer:{axis:"z"}} if block ~-1 ~-1 ~ #air if score #grid_placer.count secret_finds.data matches 1.. run scoreboard players remove #grid_placer.count secret_finds.data 1
execute if data storage secret_finds:data {grid_placer:{axis:"z"}} if block ~-1 ~-1 ~ #air if score #grid_placer.count secret_finds.data matches 1.. run clone ~ ~ ~ ~ ~ ~ ~-1 ~-1 ~

# 0 0 -1
execute unless data storage secret_finds:data {grid_placer:{axis:"z"}} if block ~ ~ ~-1 #air if score #grid_placer.count secret_finds.data matches 1.. run scoreboard players remove #grid_placer.count secret_finds.data 1
execute unless data storage secret_finds:data {grid_placer:{axis:"z"}} if block ~ ~ ~-1 #air if score #grid_placer.count secret_finds.data matches 1.. run clone ~ ~ ~ ~ ~ ~ ~ ~ ~-1

# -1 0 -1
execute if data storage secret_finds:data {grid_placer:{axis:"y"}} if block ~-1 ~ ~-1 #air if score #grid_placer.count secret_finds.data matches 1.. run scoreboard players remove #grid_placer.count secret_finds.data 1
execute if data storage secret_finds:data {grid_placer:{axis:"y"}} if block ~-1 ~ ~-1 #air if score #grid_placer.count secret_finds.data matches 1.. run clone ~ ~ ~ ~ ~ ~ ~-1 ~ ~-1

# 0 -1-1
execute if data storage secret_finds:data {grid_placer:{axis:"x"}} if block ~ ~-1 ~-1 #air if score #grid_placer.count secret_finds.data matches 1.. run scoreboard players remove #grid_placer.count secret_finds.data 1
execute if data storage secret_finds:data {grid_placer:{axis:"x"}} if block ~ ~-1 ~-1 #air if score #grid_placer.count secret_finds.data matches 1.. run clone ~ ~ ~ ~ ~ ~ ~ ~-1 ~-1

# -1 1 0
execute if data storage secret_finds:data {grid_placer:{axis:"z"}} if block ~-1 ~1 ~ #air if score #grid_placer.count secret_finds.data matches 1.. run scoreboard players remove #grid_placer.count secret_finds.data 1
execute if data storage secret_finds:data {grid_placer:{axis:"z"}} if block ~-1 ~1 ~ #air if score #grid_placer.count secret_finds.data matches 1.. run clone ~ ~ ~ ~ ~ ~ ~-1 ~1 ~

# 0 1 -1
execute if data storage secret_finds:data {grid_placer:{axis:"x"}} if block ~ ~1 ~-1 #air if score #grid_placer.count secret_finds.data matches 1.. run scoreboard players remove #grid_placer.count secret_finds.data 1
execute if data storage secret_finds:data {grid_placer:{axis:"x"}} if block ~ ~1 ~-1 #air if score #grid_placer.count secret_finds.data matches 1.. run clone ~ ~ ~ ~ ~ ~ ~ ~1 ~-1

# 1 -1 0
execute if data storage secret_finds:data {grid_placer:{axis:"z"}} if block ~1 ~-1 ~ #air if score #grid_placer.count secret_finds.data matches 1.. run scoreboard players remove #grid_placer.count secret_finds.data 1
execute if data storage secret_finds:data {grid_placer:{axis:"z"}} if block ~1 ~-1 ~ #air if score #grid_placer.count secret_finds.data matches 1.. run clone ~ ~ ~ ~ ~ ~ ~1 ~-1 ~

# 0 -1 1
execute if data storage secret_finds:data {grid_placer:{axis:"x"}} if block ~ ~-1 ~1 #air if score #grid_placer.count secret_finds.data matches 1.. run scoreboard players remove #grid_placer.count secret_finds.data 1
execute if data storage secret_finds:data {grid_placer:{axis:"x"}} if block ~ ~-1 ~1 #air if score #grid_placer.count secret_finds.data matches 1.. run clone ~ ~ ~ ~ ~ ~ ~ ~-1 ~1

# -1 0 1
execute if data storage secret_finds:data {grid_placer:{axis:"y"}} if block ~-1 ~ ~1 #air if score #grid_placer.count secret_finds.data matches 1.. run scoreboard players remove #grid_placer.count secret_finds.data 1
execute if data storage secret_finds:data {grid_placer:{axis:"y"}} if block ~-1 ~ ~1 #air if score #grid_placer.count secret_finds.data matches 1.. run clone ~ ~ ~ ~ ~ ~ ~-1 ~ ~1

# 1 0 -1
execute if data storage secret_finds:data {grid_placer:{axis:"y"}} if block ~1 ~ ~-1 #air if score #grid_placer.count secret_finds.data matches 1.. run scoreboard players remove #grid_placer.count secret_finds.data 1
execute if data storage secret_finds:data {grid_placer:{axis:"y"}} if block ~1 ~ ~-1 #air if score #grid_placer.count secret_finds.data matches 1.. run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~-1


scoreboard players remove #grid_placer.count secret_finds.data 1

scoreboard players operation @s secret_finds.item_modifier = #grid_placer.count secret_finds.data
execute as @s[gamemode=!creative] run item modify entity @s weapon.offhand secret_finds:set_count
