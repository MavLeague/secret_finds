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
