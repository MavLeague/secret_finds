execute unless block ~ ~ ~ #air run function secret_finds:grid_placer/set_rotation

scoreboard players remove @s secret_finds.raycast.steps 1
execute if score @s secret_finds.raycast.steps matches 1.. if score @s secret_finds.raycast.success matches 0 positioned ^ ^ ^.1 run function secret_finds:grid_placer/loop