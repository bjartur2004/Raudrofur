###################################
## Tools - Cores
## von Luki2811
## Version: 1.2
###################################
## Spieler möchte Sprache ändern
tag @a[scores={language=1..}] add noauto
tag @a[scores={language=1..}] add nosp
tag @a[scores={language=1..}] remove en-en
tag @a[scores={language=1..}] remove de-de
tag @a[scores={language=1..}] remove fr-fr

## Automatische Spracherkennung
execute at @a[tag=nosp,tag=!noauto] run summon minecraft:rabbit ~ 0 ~ {Invulnerable:true,NoGravity:true,DeathLootTable:"minecraft:empty",Tags:["srabbit"]}

execute as @a[tag=nosp,tag=!noauto] at @s positioned ~ 0 ~ if entity @e[distance=..1,name="Kaninchen",tag=srabbit] run tag @s[tag=nosp] add de-de
execute as @a[tag=nosp,tag=!noauto] at @s positioned ~ 0 ~ if entity @e[distance=..1,name="Rabbit",tag=srabbit] run tag @s[tag=nosp] add en-en
execute as @a[tag=nosp,tag=!noauto] at @s positioned ~ 0 ~ if entity @e[distance=..1,name="Lapin",tag=srabbit] run tag @s[tag=nosp] add fr-fr
kill @e[type=rabbit,tag=srabbit]

tellraw @a[tag=de-de,tag=nosp,tag=!noauto] ["",{"text":"\nSprache wurde automatisch ermittelt ! (Deutsch)\n","color":"green"}]
tellraw @a[tag=en-en,tag=nosp,tag=!noauto] ["",{"text":"\nLanguage was determined automatically ! (English)\n","color":"green"}]
tellraw @a[tag=fr-fr,tag=nosp,tag=!noauto] ["",{"text":"\nLa langue a été déterminée automatiquement ! (français)\n","color":"green"}]

tag @a[tag=de-de,tag=!noauto] remove nosp
tag @a[tag=en-en,tag=!noauto] remove nosp
tag @a[tag=fr-fr,tag=!noauto] remove nosp
execute if score #sprache install matches 1 unless entity @e[tag=nosp] run scoreboard players set #sprache install 2

## Sprachauswahl
execute if score #sprache install matches 0 run tellraw @a[tag=nosp,tag=noauto] ["",{"text":"- - - - - - - - - - - - - - - - -","color":"yellow"},{"text":"\nSprache/Language/Langue\n["},{"text":"Deutsch","clickEvent":{"action":"run_command","value":"/trigger deutsch"}},{"text":"] ["},{"text":"English","clickEvent":{"action":"run_command","value":"/trigger english"}},{"text":"] ["},{"text":"Français","clickEvent":{"action":"run_command","value":"/trigger franz"}},{"text":"]\n"},{"text":"- - - - - - - - - - - - - - - - -","color":"yellow"}]
execute if score #sprache install matches 0 run scoreboard players enable @a[tag=nosp,tag=noauto] deutsch
execute if score #sprache install matches 0 run scoreboard players enable @a[tag=nosp,tag=noauto] english
execute if score #sprache install matches 0 run scoreboard players enable @a[tag=nosp,tag=noauto] franz
execute if score #sprache install matches 0 run scoreboard players set #sprache install 1


execute if score #sprache install matches 1 if score @p[scores={deutsch=1}] deutsch matches 1 run scoreboard players set #sprache install 2
execute if score #sprache install matches 1 if score @p[scores={english=1}] english matches 1 run scoreboard players set #sprache install 2
execute if score #sprache install matches 1 if score @p[scores={franz=1}] franz matches 1 run scoreboard players set #sprache install 2
execute if score #sprache install matches 1 run schedule function tools-cores:language 1t
tag @a[scores={deutsch=1..}] add de-de
tag @a[scores={deutsch=1..}] remove en-en
tag @a[scores={deutsch=1..}] remove fr-fr
tag @a[scores={english=1..}] add en-en
tag @a[scores={english=1..}] remove de-de
tag @a[scores={english=1..}] remove fr-fr
tag @a[scores={franz=1..}] add fr-fr
tag @a[scores={franz=1..}] remove de-de
tag @a[scores={franz=1..}] remove en-en
tellraw @a[scores={deutsch=1..},tag=de-de] ["",{"text":"- - - - - - - - - - -","color":"yellow"},{"text":"\nSprache: "},{"text":"Deutsch","bold":true},{"text":"\n"},{"text":"- - - - - - - - - - -","color":"yellow"}]
tellraw @a[scores={english=1..},tag=en-en] ["",{"text":"- - - - - - - - - - -","color":"yellow"},{"text":"\nLangauge: "},{"text":"English","bold":true},{"text":"\n"},{"text":"- - - - - - - - - - -","color":"yellow"}]
tellraw @a[scores={franz=1..},tag=fr-fr] ["",{"text":"- - - - - - - - - - -","color":"yellow"},{"text":"\nLangue: "},{"text":"Français","bold":true},{"text":"\n"},{"text":"- - - - - - - - - - -","color":"yellow"}]
tag @a[scores={english=1..},tag=en-en] remove noauto
tag @a[scores={deutsch=1..},tag=de-de] remove noauto
tag @a[scores={franz=1..},tag=fr-fr] remove noauto

execute if score #sprache install matches 2 run scoreboard players reset @a english
execute if score #sprache install matches 2 run scoreboard players reset @a deutsch
execute if score #sprache install matches 2 run scoreboard players reset @a franz
execute if score #sprache install matches 2 run scoreboard players set #sprache install 0

scoreboard players set @a language 0
