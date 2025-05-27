
execute at @s run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["dash.vector"],Duration:3b}
data modify entity @e[sort=nearest,limit=1,tag=dash.vector,distance=..1] Rotation[0] set from entity @s Rotation[0]

ride @s mount @e[sort=nearest,limit=1,tag=dash.vector,distance=..1]
ride @s dismount


execute at @e[sort=nearest,limit=1,tag=dash.vector,distance=..1] positioned ^ ^ ^-.1 run summon creeper ~ ~1.52 ~ {NoGravity:1b,Silent:1b,DeathTime:10,NoAI:1b,ExplosionRadius:-1b,Fuse:4,ignited:1b,attributes:[{id:"minecraft:scale",base:0}]}
execute at @e[sort=nearest,limit=1,tag=dash.vector,distance=..1] positioned ^ ^ ^-.1 run summon creeper ~ ~1.52 ~ {NoGravity:1b,Silent:1b,DeathTime:10,NoAI:1b,ExplosionRadius:-1b,Fuse:4,ignited:1b,attributes:[{id:"minecraft:scale",base:0}]}

scoreboard players add @s secret_finds.timeout 20
execute as @s[gamemode=!creative,gamemode=!spectator] run xp add @s -100 points
