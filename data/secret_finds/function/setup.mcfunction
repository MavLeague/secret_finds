tellraw @a ["\n",{text:"Secret Finds",bold:false,color:"white"},{text:" is loaded!",bold:false,color:"white"},"\n",{text:"Version: ",color:"yellow"},{text:"1.21.5",color:"green"},{text:".1.0",color:"gray"}]

# add scoreboards
scoreboard objectives add secret_finds.data dummy
scoreboard objectives add secret_finds.item_modifier dummy
scoreboard objectives add secret_finds.warped_fungus_on_a_stick minecraft.used:minecraft.warped_fungus_on_a_stick
scoreboard objectives add secret_finds.timeout dummy
scoreboard objectives add secret_finds.sneak minecraft.custom:sneak_time
scoreboard objectives add secret_finds.elytra minecraft.custom:aviate_one_cm
scoreboard objectives add secret_finds.raycast.steps dummy
scoreboard objectives add secret_finds.raycast.success dummy
scoreboard objectives add secret_finds.sword_control.id dummy


# set variables
scoreboard players set #20 secret_finds.data 20
scoreboard players set #2 secret_finds.data 2
scoreboard players set #10 secret_finds.data 10
