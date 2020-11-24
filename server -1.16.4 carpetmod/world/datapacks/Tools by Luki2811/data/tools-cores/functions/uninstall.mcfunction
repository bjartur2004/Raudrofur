###################################
## Tools - Cores
## von Luki2811
## Version: 1.2
###################################
## Deinstallieren
## Alle anderen Funktionen
function tools-streaming-video-info:uninstall
function tools-clock:uninstall
function tools-welcome-message:uninstall
function tools-spectator-change:uninstall
function tools-deathcount:uninstall
## Diese Funktion
scoreboard objectives remove install
scoreboard objectives remove deutsch
scoreboard objectives remove english
scoreboard objectives remove franz
scoreboard objectives remove language
scoreboard objectives remove time
tellraw @a[tag=de-de] ["",{"text":"- - - - - - - - - - - - - - - ","color":"dark_red"},{"text":"\n"},{"text":"Tools - Cores\nwurde deinstalliert !","color":"yellow"},{"text":"\n"},{"text":"- - - - - - - - - - - - - - - ","color":"dark_red"}]
tellraw @a[tag=en-en] ["",{"text":"- - - - - - - - - - - - - - - ","color":"dark_red"},{"text":"\n"},{"text":"Tools - Cores\nhas been uninstalled !","color":"yellow"},{"text":"\n"},{"text":"- - - - - - - - - - - - - - - ","color":"dark_red"}]
tellraw @a[tag=fr-fr] ["",{"text":"- - - - - - - - - - - - - - - ","color":"dark_red"},{"text":"\n"},{"text":"Tools - Cores\na été désinstallé !","color":"yellow"},{"text":"\n"},{"text":"- - - - - - - - - - - - - - - ","color":"dark_red"}]
tag @a remove de-de
tag @a remove en-en
tag @a remove fr-fr
schedule clear tools-cores:core
