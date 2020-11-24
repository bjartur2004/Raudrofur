###################################
## Tools - Cores
## von Luki2811
## Version: 1.2
###################################
execute if score #tools-cores install matches 0..1 run function tools-streaming-video-info:info
execute if score #tools-cores install matches 0..1 run function tools-clock:info
execute if score #tools-cores install matches 0..1 run function tools-spectator-change:info
execute if score #tools-cores install matches 0..1 run function tools-welcome-message:info
execute if score #tools-cores install matches 0..1 run function tools-deathcount:info
##
execute if score #tools-cores install matches 0..1 run tellraw @a ["",{"text":"\n"},{"text":"Tools - Cores","color":"aqua"},{"text":"\n"},{"text":"Version:","italic":true},{"text":" 1.2.0","color":"gold"}]
execute if score #tools-cores install matches 1 run tellraw @a [{"text":"LOADED !","color":"dark_green"},{"text":"\n "}]
execute if score #tools-cores install matches 0 run tellraw @a [{"text":"UNLOADED !","color":"dark_red"},{"text":"\n "}]
