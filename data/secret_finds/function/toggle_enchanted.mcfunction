item modify entity @s weapon secret_finds:toggle_enchanted
execute at @s if items entity @s weapon *[minecraft:enchantment_glint_override=True] run playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ 0.5 1
execute at @s if items entity @s weapon *[minecraft:enchantment_glint_override=False] run playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ 0.5 0.98
