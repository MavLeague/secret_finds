# add damages
scoreboard players set @s secret_finds.item_modifier -5
item modify entity @s weapon secret_finds:add_damage

scoreboard players set @n[tag=secret_finds.player_switch.player_ready] secret_finds.item_modifier -5
item modify entity @n[tag=secret_finds.player_switch.player_ready] weapon secret_finds:add_damage

# drop item for armor_stands
execute as @n[tag=secret_finds.player_switch.player_ready] if entity @s[type=armor_stand] at @s run summon item ~ ~ ~ {Tags:["secret_finds","secret_finds.player_switch","secret_finds.player_switch.item"],Item:{id:stone}}
execute as @n[tag=secret_finds.player_switch.player_ready] if entity @s[type=armor_stand] at @s run item replace entity @n[tag=secret_finds.player_switch.item] container.0 from entity @s weapon.mainhand
execute as @n[tag=secret_finds.player_switch.player_ready] if entity @s[type=armor_stand] at @s run item replace entity @s weapon.mainhand with minecraft:air

# teleport
summon area_effect_cloud ~ ~ ~ {Tags:["secret_finds","secret_finds.player_switch","secret_finds.player_switch.anchor"],Radius:0f,Duration:0,Particle:{type:"reverse_portal"}}
execute at @s run tp @n[tag=secret_finds.player_switch.anchor] ~ ~ ~ ~ ~
execute at @n[tag=secret_finds.player_switch.player_ready] run tp @s ~ ~ ~ ~ ~
execute at @n[tag=secret_finds.player_switch.anchor] run tp @n[tag=secret_finds.player_switch.player_ready] ~ ~ ~ ~ ~
tag @n[tag=secret_finds.player_switch.player_ready] add secret_finds.player_switch.teleported
tag @s add secret_finds.player_switch.teleported
