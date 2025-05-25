# init
scoreboard players reset @s secret_finds.warped_fungus_on_a_stick

# enchantment toggle
execute if data entity @s SelectedItem.components.minecraft:enchantment_glint_override if items entity @s weapon *[custom_data~{toggle_enchant:1b}] run function secret_finds:toggle_enchanted

# dash
execute unless entity @s[tag=timeout] if entity @s[gamemode=!creative] if data entity @s SelectedItem.components.minecraft:custom_data.dash if score @s anima.current matches 8.. run function secret_finds:dash/main
execute unless entity @s[tag=timeout] if entity @s[gamemode=creative] if data entity @s SelectedItem.components.minecraft:custom_data.dash run function secret_finds:dash/main
