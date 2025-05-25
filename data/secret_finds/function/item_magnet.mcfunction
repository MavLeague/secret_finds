# face to player
#execute at @s run tp @s ^ ^ ^.5 facing entity @p[nbt={SelectedItem:{tag:{item_magnet:1b,enchanted:1b}}}] feet
# calculate vector to player
execute as @p if items entity @s weapon.* *[minecraft:custom_data~{item_magnet:1b},minecraft:enchantment_glint_override=true] store result score #px secret_finds.data run data get entity @s Pos[0] 10
execute as @p if items entity @s weapon.* *[minecraft:custom_data~{item_magnet:1b},minecraft:enchantment_glint_override=true] store result score #py secret_finds.data run data get entity @s Pos[1] 10
execute as @p if items entity @s weapon.* *[minecraft:custom_data~{item_magnet:1b},minecraft:enchantment_glint_override=true] store result score #pz secret_finds.data run data get entity @s Pos[2] 10

execute store result score #ix secret_finds.data run data get entity @s Pos[0] 10
execute store result score #iy secret_finds.data run data get entity @s Pos[1] 10
execute store result score #iz secret_finds.data run data get entity @s Pos[2] 10

scoreboard players operation #px secret_finds.data -= #ix secret_finds.data
scoreboard players operation #py secret_finds.data -= #iy secret_finds.data
scoreboard players operation #pz secret_finds.data -= #iz secret_finds.data

execute store result entity @s Motion[0] double 0.02 run scoreboard players get #px secret_finds.data
execute store result entity @s Motion[1] double 0.015 run scoreboard players get #py secret_finds.data
execute store result entity @s Motion[2] double 0.02 run scoreboard players get #pz secret_finds.data
