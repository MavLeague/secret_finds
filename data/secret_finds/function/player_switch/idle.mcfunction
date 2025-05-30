# particle display
particle reverse_portal ~ ~.5 ~ 0.1 0.25 0.1 0.01 2
particle minecraft:glow ~ ~.1 ~ 0.3 0.0 0.3 0.01 5

# remove conditions
execute unless entity @n[tag=secret_finds.player_switch.position_marker,distance=...01] run tag @s remove secret_finds.player_switch.player_ready
execute unless items entity @s weapon *[custom_data~{player_switch:1b}] run tag @s remove secret_finds.player_switch.player_ready

# ---
summon area_effect_cloud ~ ~ ~ {Tags:["secret_finds","secret_finds.player_switch","secret_finds.player_switch.position_marker"],Radius:0f,Duration:0,Particle:{type:"reverse_portal"}}
