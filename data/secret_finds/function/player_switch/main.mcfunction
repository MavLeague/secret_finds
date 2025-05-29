# teleport if someone is around
execute unless entity @s[tag=secret_finds.player_switch.player_ready] at @s if entity @n[tag=secret_finds.player_switch.player_ready,distance=..10] run function secret_finds:player_switch/teleport

# toggle tag if noone is around
execute if entity @s[tag=secret_finds.player_switch.player_ready] at @s run tag @s add secret_finds.player_switch.player_ready.old

execute unless entity @s[tag=secret_finds.player_switch.player_ready] at @s unless entity @n[tag=secret_finds.player_switch.player_ready,distance=..10] run tag @s add secret_finds.player_switch.player_ready

execute if entity @s[tag=secret_finds.player_switch.player_ready.old] at @s run tag @s remove secret_finds.player_switch.player_ready

tag @s remove secret_finds.player_switch.player_ready.old
