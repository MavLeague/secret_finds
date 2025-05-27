
execute as @s[tag=!secret_finds.sneak,tag=!secret_finds.elytra] at @s positioned ^ ^ ^-.1 run summon creeper ~ ~1.62 ~ {NoGravity:1b,Silent:1b,DeathTime:10,NoAI:1b,ExplosionRadius:-1b,Fuse:0,ignited:1b,attributes:[{id:"minecraft:scale",base:0}]}
execute as @s[tag=!secret_finds.sneak,tag=!secret_finds.elytra] at @s positioned ^ ^ ^-.1 run summon creeper ~ ~1.62 ~ {NoGravity:1b,Silent:1b,DeathTime:10,NoAI:1b,ExplosionRadius:-1b,Fuse:0,ignited:1b,attributes:[{id:"minecraft:scale",base:0}]}

execute as @s[tag=secret_finds.sneak,tag=!secret_finds.elytra] at @s positioned ^ ^ ^-.1 run summon creeper ~ ~1.12 ~ {NoGravity:1b,Silent:1b,DeathTime:10,NoAI:1b,ExplosionRadius:-1b,Fuse:0,ignited:1b,attributes:[{id:"minecraft:scale",base:0}]}
execute as @s[tag=secret_finds.sneak,tag=!secret_finds.elytra] at @s positioned ^ ^ ^-.1 run summon creeper ~ ~1.12 ~ {NoGravity:1b,Silent:1b,DeathTime:10,NoAI:1b,ExplosionRadius:-1b,Fuse:0,ignited:1b,attributes:[{id:"minecraft:scale",base:0}]}

execute as @s[tag=secret_finds.elytra] at @s positioned ^ ^ ^-.1 run summon creeper ~ ~.4 ~ {NoGravity:1b,Silent:1b,DeathTime:10,NoAI:1b,ExplosionRadius:-1b,Fuse:0,ignited:1b,attributes:[{id:"minecraft:scale",base:0}]}
execute as @s[tag=secret_finds.elytra] at @s positioned ^ ^ ^-.1 run summon creeper ~ ~.4 ~ {NoGravity:1b,Silent:1b,DeathTime:10,NoAI:1b,ExplosionRadius:-1b,Fuse:0,ignited:1b,attributes:[{id:"minecraft:scale",base:0}]}

scoreboard players add @s secret_finds.timeout 80
tag @s add secret_finds.nofalldamage

# add damage
scoreboard players set @s secret_finds.item_modifier -10
item modify entity @s weapon secret_finds:add_damage

#say booooost