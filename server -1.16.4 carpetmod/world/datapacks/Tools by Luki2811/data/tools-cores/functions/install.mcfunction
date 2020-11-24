###################################
## Tools - Cores
## von Luki2811
## Version: 1.2
###################################
scoreboard objectives add time dummy
scoreboard objectives add install dummy
scoreboard objectives add language trigger {"text":"Language"}
scoreboard objectives add deutsch trigger {"text":"Deutsch"}
scoreboard objectives add english trigger {"text":"English"}
scoreboard objectives add franz trigger {"text":"Français"}
scoreboard players set #tools-cores install 1
scoreboard players set #sprache install 0
tellraw @a[tag=de-de] ["",{"text":"- - - - - - - - - - - - - - - ","color":"yellow"},{"text":"\nTools - Cores\nwurde installiert !\n"},{"text":"- - - - - - - - - - - - - - - ","color":"yellow"}]
tellraw @a[tag=en-en] ["",{"text":"- - - - - - - - - - - - - - - ","color":"yellow"},{"text":"\nTools - Cores\nhas been installed !\n"},{"text":"- - - - - - - - - - - - - - - ","color":"yellow"}]
tellraw @a[tag=fr-fr] ["",{"text":"- - - - - - - - - - - - - - - ","color":"yellow"},{"text":"\nTools - Cores\na été installé !\n"},{"text":"- - - - - - - - - - - - - - - ","color":"yellow"}]
function tools-cores:core
