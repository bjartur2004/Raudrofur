###################################
## Tools - DeathCount
## von Luki2811
## Version: 1.0.0
###################################
tellraw @a ["",{"text":"\n"},{"text":"Tools - DeathCount","color":"aqua"},{"text":"\n"},{"text":"Version:","italic":true},{"text":" 1.0.0 ","color":"gold"}]
execute if score #tools-deathcount install matches 1 run tellraw @a [{"text":"LOADED !","color":"dark_green"},{"text":"\n "}]
execute unless score #tools-deathcount install matches 1 run tellraw @a [{"text":"UNLOADED !","color":"dark_red"},{"text":"\n "}]
