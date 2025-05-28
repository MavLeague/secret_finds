# calculation
scoreboard players operation #seconds secret_finds.timeout = @s secret_finds.timeout
scoreboard players operation #seconds secret_finds.timeout /= #20 secret_finds.data
    # get seconds
scoreboard players operation #ints secret_finds.timeout = @s secret_finds.timeout
scoreboard players operation #ints secret_finds.timeout /= #10 secret_finds.data
scoreboard players operation #ints secret_finds.timeout *= #10 secret_finds.data
scoreboard players operation #deciseconds secret_finds.timeout = @s secret_finds.timeout
scoreboard players operation #deciseconds secret_finds.timeout -= #ints secret_finds.timeout
    # get 10th seconds (#ints is needed to seperate the seconds from this value)

# display
title @s actionbar ["",{"text":"Cooldown: ","color":"yellow"},{"score":{"name":"#seconds","objective":"secret_finds.timeout"},"bold":true,"color":"gold"},".",{"score":{"name":"#deciseconds","objective":"secret_finds.timeout"},"bold":true,"color":"gold"}]
