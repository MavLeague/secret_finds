execute if data entity @s {SelectedItem:{components:{"minecraft:custom_model_data":{floats:[0f]}}}} run scoreboard players set @s secret_finds.item_modifier 1
execute if data entity @s {SelectedItem:{components:{"minecraft:custom_model_data":{floats:[1f]}}}} run scoreboard players set @s secret_finds.item_modifier 0

execute if data entity @s SelectedItem.components.minecraft:custom_model_data.floats run item modify entity @s weapon secret_finds:set_custom_model_data

