###################################
## Tools - Cores
## von Luki2811
## Version: 1.2
###################################
## Spieler ohne Sprache
tag @a[tag=!de-de,tag=!en-en,tag=!fr-fr] add nosp
scoreboard players add @a[tag=nosp] install 1
execute if entity @e[tag=nosp,scores={install=1}] run function tools-cores:language

## Spielersprache ändern lassen
scoreboard players enable @a language
execute if entity @e[scores={language=1..}] run function tools-cores:language


tag @a[tag=de-de] remove nosp
tag @a[tag=en-en] remove nosp
tag @a[tag=fr-fr] remove nosp
execute unless entity @a[tag=nosp] run scoreboard players set @a install 0

## Sprache durchwechseln (scoreboard)
## Jede 600 Ticks ändert sich die Sprache (Deutsch 0-600 -> Englisch 600-1200 -> Französisch 1200-1600)
scoreboard players add #lang time 1
execute if score #lang time matches 1800 run scoreboard players set #lang time 0

schedule function tools-cores:core 1s
