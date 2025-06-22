## Item interaction
# sneaking tag
execute as @a if score @s secret_finds.sneak matches 1.. run tag @s add secret_finds.sneak
execute as @a[tag=secret_finds.sneak] unless score @s secret_finds.sneak matches 1.. run tag @s remove secret_finds.sneak
execute as @a if score @s secret_finds.sneak matches 1.. run scoreboard players reset @s secret_finds.sneak

# elytra tag
execute as @a if score @s secret_finds.elytra matches 1.. run tag @s add secret_finds.elytra
execute as @a[tag=secret_finds.elytra] unless score @s secret_finds.elytra matches 1.. run tag @s remove secret_finds.elytra
execute as @a if score @s secret_finds.elytra matches 1.. run scoreboard players reset @s secret_finds.elytra

# click detection
execute as @a at @s if score @s secret_finds.warped_fungus_on_a_stick matches 1.. run function secret_finds:click_detection

# ability timeout
execute as @a[tag=!timeout] if score @s secret_finds.timeout matches 1.. run tag @s add timeout
execute as @a[tag=timeout] if score @s secret_finds.timeout matches ..0 run tag @s remove timeout
execute as @a if score @s secret_finds.timeout matches 1.. run scoreboard players remove @s secret_finds.timeout 1
execute as @a[tag=timeout] run function secret_finds:timeout_display


## Item effects
# item magnet
execute as @a at @s if items entity @s weapon.* *[minecraft:custom_data~{item_magnet:1b},minecraft:enchantment_glint_override=true] at @s as @e[type=item,distance=..10] run function secret_finds:item_magnet

# dash
execute as @a[tag=secret_finds.nofalldamage] at @s unless data entity @s attributes[{id:"minecraft:fall_damage_multiplier",base:0.0d}] at @s run attribute @s fall_damage_multiplier base set 0
execute as @a[tag=secret_finds.nofalldamage,scores={secret_finds.timeout=..1}] at @s if data entity @s attributes[{id:"minecraft:fall_damage_multiplier",base:0.0d}] run attribute @s fall_damage_multiplier base set 1.0
execute as @a[tag=secret_finds.nofalldamage,scores={secret_finds.timeout=..1}] if data entity @s attributes[{id:"minecraft:fall_damage_multiplier",base:1.0d}] at @s run tag @s remove secret_finds.nofalldamage

# player switch
execute as @a[tag=secret_finds.player_switch.player_ready,tag=!secret_finds.player_switch.teleported] at @s run function secret_finds:player_switch/idle
execute as @a[tag=secret_finds.player_switch.player_ready,tag=secret_finds.player_switch.teleported] at @s run tag @s remove secret_finds.player_switch.player_ready
execute as @a[tag=!secret_finds.player_switch.player_ready,tag=secret_finds.player_switch.teleported] at @s run tag @s remove secret_finds.player_switch.teleported

execute as @a[tag=!secret_finds.player_switch.player_ready] at @s if items entity @s weapon *[custom_data~{player_switch:1b}] if data entity @s {SelectedItem:{components:{"minecraft:custom_model_data":{floats:[1f]}}}} run function secret_finds:toggle_custom_model_data

execute as @e[type=armor_stand,tag=!secret_finds.player_switch.player_ready] at @s if items entity @s weapon *[custom_data~{player_switch:1b},!damage=100] run tag @s add secret_finds.player_switch.player_ready
execute as @e[type=armor_stand,tag=secret_finds.player_switch.player_ready] at @s unless items entity @s weapon *[custom_data~{player_switch:1b},!damage=100] run tag @s remove secret_finds.player_switch.player_ready

execute as @e[type=armor_stand] at @s if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{periodic_tick:40}} if entity @n[type=item,distance=..1,nbt={Item:{components:{"minecraft:custom_data":{player_switch:1b}}}}] run item replace entity @s weapon.mainhand from entity @n[type=item,distance=..1,nbt={Item:{components:{"minecraft:custom_data":{player_switch:1b}}}}] container.0
execute as @e[type=armor_stand] at @s if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{periodic_tick:40}} if entity @n[type=item,distance=..1,nbt={Item:{components:{"minecraft:custom_data":{player_switch:1b}}}}] run kill @n[type=item,distance=..1,nbt={Item:{components:{"minecraft:custom_data":{player_switch:1b}}}}]
