summon area_effect_cloud ~ ~ ~ {Tags:["secret_finds","secret_finds.player_switch","secret_finds.player_switch.anchor"],Radius:0f,Duration:0,Particle:{type:"reverse_portal"}}
execute at @s run tp @n[tag=secret_finds.player_switch.anchor] ~ ~ ~ ~ ~
execute at @n[tag=secret_finds.player_switch.player_ready] run tp @s ~ ~ ~ ~ ~
execute at @n[tag=secret_finds.player_switch.anchor] run tp @n[tag=secret_finds.player_switch.player_ready] ~ ~ ~ ~ ~
tag @n[tag=secret_finds.player_switch.player_ready] add secret_finds.player_switch.teleported
tag @s add secret_finds.player_switch.teleported


# add damages
scoreboard players set @s secret_finds.item_modifier -5
item modify entity @s weapon secret_finds:add_damage

scoreboard players set @n[tag=secret_finds.player_switch.player_ready] secret_finds.item_modifier -5
item modify entity @n[tag=secret_finds.player_switch.player_ready] weapon secret_finds:add_damage
