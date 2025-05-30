execute store result score #Yaw secret_finds.data run data get entity @s Rotation[0]
execute store result score #Pitch secret_finds.data run data get entity @s Rotation[1]

# determin axis
data modify storage secret_finds:data grid_placer.axis set value "z"
execute if score #Pitch secret_finds.data matches -44..44 if score #Yaw secret_finds.data matches -135..-45 run data modify storage secret_finds:data grid_placer.axis set value "x" 
execute if score #Pitch secret_finds.data matches -44..44 if score #Yaw secret_finds.data matches 45..135 run data modify storage secret_finds:data grid_placer.axis set value "x"
execute unless score #Pitch secret_finds.data matches -44..44 run data modify storage secret_finds:data grid_placer.axis set value "y"

# remove vars
scoreboard players reset #Yaw secret_finds.data
scoreboard players reset #Pitch secret_finds.data

scoreboard players set @s secret_finds.raycast.success 1

# set blocks
function secret_finds:grid_placer/place_blocks2