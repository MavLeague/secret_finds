# init
scoreboard players reset @s secret_finds.warped_fungus_on_a_stick

# enchantment toggle
execute if data entity @s SelectedItem.components.minecraft:enchantment_glint_override if items entity @s weapon *[custom_data~{toggle_enchant:1b}] run function secret_finds:toggle_enchanted

# dash
execute unless entity @s[tag=timeout] if items entity @s weapon *[!minecraft:damage=100,minecraft:custom_data~{dash:1b}] run function secret_finds:dash/main

# player_switch
execute if items entity @s weapon *[custom_data~{player_switch:1b},!damage=100] run function secret_finds:player_switch/main

# grid_placer
execute if items entity @s weapon *[custom_data~{grid_placer:1b}] if items entity @s weapon.offhand * anchored eyes positioned ^ ^ ^ anchored feet run function secret_finds:grid_placer/setup


# debug
execute if items entity @s weapon.* *[custom_data~{test:1b}] run say aboww
