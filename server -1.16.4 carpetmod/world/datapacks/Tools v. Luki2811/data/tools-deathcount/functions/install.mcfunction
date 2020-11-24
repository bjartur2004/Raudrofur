###################################
## Tools - DeathCount
## von Luki2811
## Version: 1.0.0
###################################
scoreboard objectives add deaths deathCount {"text":"Deaths \u2620"}
scoreboard objectives add deathc_settings trigger {"text":"Settings for Tools - DeathCount"}
scoreboard objectives add dc_settings trigger
scoreboard objectives setdisplay sidebar deaths

function tools-deathcount:core

tellraw @a[tag=de-de] ["",{"text":"- - - - - - - - - - - - - - - ","color":"yellow"},{"text":"\nTools - DeathCount\nwurde installiert !\n"},{"text":"- - - - - - - - - - - - - - - ","color":"yellow"}]
tellraw @a[tag=en-en] ["",{"text":"- - - - - - - - - - - - - - - ","color":"yellow"},{"text":"\nTools - DeathCount\nhas been installed !\n"},{"text":"- - - - - - - - - - - - - - - ","color":"yellow"}]
tellraw @a[tag=fr-fr] ["",{"text":"- - - - - - - - - - - - - - - ","color":"yellow"},{"text":"\nTools - DeathCount\na été installé !\n"},{"text":"- - - - - - - - - - - - - - - ","color":"yellow"}]

tellraw @a[tag=de-de] [{"text":"Mit "},{"text":"/trigger deathc_settings","color":"yellow"},{"text":" können sie das Tool konfigurieren\n"}]
tellraw @a[tag=en-en] [{"text":"With "},{"text":"/trigger deathc_settings","color":"yellow"},{"text":" you can configure the tool\n"}]
tellraw @a[tag=fr-fr] [{"text":"Avec "},{"text":"/trigger deathc_settings","color":"yellow"},{"text":" vous pouvez configurer l'outil\n"}]
scoreboard players set #tools-deathcount install 1
