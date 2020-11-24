###################################
## Tools - DeathCount
## von Luki2811
## Version: 1.0.0
###################################
scoreboard objectives remove deaths
scoreboard objectives remove deathc_settings
scoreboard objectives remove dc_settings
schedule clear tools-deathcount:core
scoreboard players set #tools-deathcount install 0

tellraw @a[tag=de-de] ["",{"text":"- - - - - - - - - - - - - - - ","color":"dark_red"},{"text":"\n"},{"text":"Tools - DeathCount\nwurde deinstalliert !","color":"yellow"},{"text":"\n"},{"text":"- - - - - - - - - - - - - - - ","color":"dark_red"}]
tellraw @a[tag=en-en] ["",{"text":"- - - - - - - - - - - - - - - ","color":"dark_red"},{"text":"\n"},{"text":"Tools - DeathCount\nhas been uninstalled !","color":"yellow"},{"text":"\n"},{"text":"- - - - - - - - - - - - - - - ","color":"dark_red"}]
tellraw @a[tag=fr-fr] ["",{"text":"- - - - - - - - - - - - - - - ","color":"dark_red"},{"text":"\n"},{"text":"Tools - DeathCount\na été désinstallé !","color":"yellow"},{"text":"\n"},{"text":"- - - - - - - - - - - - - - - ","color":"dark_red"}]
