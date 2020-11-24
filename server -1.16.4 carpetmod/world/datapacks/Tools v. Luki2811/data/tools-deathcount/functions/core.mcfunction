###################################
## Tools - DeathCount
## von Luki2811
## Version: 1.0.0
###################################
## Allgemein
schedule function tools-deathcount:core 1t
## Optionen
scoreboard players enable @a deathc_settings
scoreboard players enable @a[scores={deathc_settings=1..}] dc_settings

tellraw @a[tag=de-de,scores={deathc_settings=1..}] ["",{"text":"--------------------------","color":"yellow"},{"text":"\nEinstellungen\nTools - DeathCount\n"},{"text":"--------------------------","color":"yellow"},{"text":"\n"},{"text":"Anzeige:","bold":true},{"text":"\n["},{"text":"list","clickEvent":{"action":"run_command","value":"/trigger dc_settings set 1"}},{"text":"] ["},{"text":"sidebar","clickEvent":{"action":"run_command","value":"/trigger dc_settings set 2"}},{"text":"]\n"},{"text":"--------------------------","color":"yellow"},{"text":"\n"},{"text":"Sprache:","bold":true},{"text":"\n["},{"text":"Deutsch","clickEvent":{"action":"run_command","value":"/trigger dc_settings set 3"}},{"text":"] ["},{"text":"Englisch","clickEvent":{"action":"run_command","value":"/trigger dc_settings set 4"}},{"text":"]\n["},{"text":"Französisch","clickEvent":{"action":"run_command","value":"/trigger dc_settings set 5"}},{"text":"]\n"},{"text":"--------------------------","color":"yellow"}]
tellraw @a[tag=en-en,scores={deathc_settings=1..}] ["",{"text":"--------------------------","color":"yellow"},{"text":"\nSettings\nTools - DeathCount\n"},{"text":"--------------------------","color":"yellow"},{"text":"\n"},{"text":"Display:","bold":true},{"text":"\n["},{"text":"list","clickEvent":{"action":"run_command","value":"/trigger dc_settings set 1"}},{"text":"] ["},{"text":"sidebar","clickEvent":{"action":"run_command","value":"/trigger dc_settings set 2"}},{"text":"]\n"},{"text":"--------------------------","color":"yellow"},{"text":"\n"},{"text":"Language:","bold":true},{"text":"\n["},{"text":"German","clickEvent":{"action":"run_command","value":"/trigger dc_settings set 3"}},{"text":"] ["},{"text":"English","clickEvent":{"action":"run_command","value":"/trigger dc_settings set 4"}},{"text":"]\n["},{"text":"French","clickEvent":{"action":"run_command","value":"/trigger dc_settings set 5"}},{"text":"]\n"},{"text":"--------------------------","color":"yellow"}]
tellraw @a[tag=fr-fr,scores={deathc_settings=1..}] ["",{"text":"--------------------------","color":"yellow"},{"text":"\nRèglements\nTools - DeathCount\n"},{"text":"--------------------------","color":"yellow"},{"text":"\n"},{"text":"Afficher:","bold":true},{"text":"\n["},{"text":"list","clickEvent":{"action":"run_command","value":"/trigger dc_settings set 1"}},{"text":"] ["},{"text":"sidebar","clickEvent":{"action":"run_command","value":"/trigger dc_settings set 2"}},{"text":"]\n"},{"text":"--------------------------","color":"yellow"},{"text":"\n"},{"text":"Langue:","bold":true},{"text":"\n["},{"text":"Allemand","clickEvent":{"action":"run_command","value":"/trigger dc_settings set 3"}},{"text":"] ["},{"text":"Anglais","clickEvent":{"action":"run_command","value":"/trigger dc_settings set 4"}},{"text":"]\n["},{"text":"Français","clickEvent":{"action":"run_command","value":"/trigger dc_settings set 5"}},{"text":"]\n"},{"text":"--------------------------","color":"yellow"}]
scoreboard players set @a deathc_settings 0
## Einstellungen umsetzen
execute if entity @a[scores={dc_settings=1..2}] run scoreboard objectives setdisplay list
execute if entity @a[scores={dc_settings=1..2}] run scoreboard objectives setdisplay sidebar
## (1) list
execute if entity @a[scores={dc_settings=1}] run scoreboard objectives setdisplay list deaths
execute if entity @a[scores={dc_settings=1}] run tellraw @a[tag=de-de] [{"text":"Anzeige: list"}]
execute if entity @a[scores={dc_settings=1}] run tellraw @a[tag=en-en] [{"text":"Display: list"}]
execute if entity @a[scores={dc_settings=1}] run tellraw @a[tag=fr-fr] [{"text":"Afficher: list"}]
## (2) sidebar
execute if entity @a[scores={dc_settings=2}] run scoreboard objectives setdisplay sidebar deaths
execute if entity @a[scores={dc_settings=2}] run tellraw @a[tag=de-de] [{"text":"Anzeige: sidebar"}]
execute if entity @a[scores={dc_settings=2}] run tellraw @a[tag=en-en] [{"text":"Display: sidebar"}]
execute if entity @a[scores={dc_settings=2}] run tellraw @a[tag=fr-fr] [{"text":"Afficher: sidebar"}]
## (3) deutsch
execute if entity @a[scores={dc_settings=3}] run scoreboard objectives modify deaths displayname {"text":"Tode \u2620"}
execute if entity @a[scores={dc_settings=3}] run tellraw @a[tag=de-de] [{"text":"Sprache: Deutsch"}]
execute if entity @a[scores={dc_settings=3}] run tellraw @a[tag=en-en] [{"text":"Language: German"}]
execute if entity @a[scores={dc_settings=3}] run tellraw @a[tag=fr-fr] [{"text":"Langue: Allemand"}]
## (4) englisch
execute if entity @a[scores={dc_settings=4}] run scoreboard objectives modify deaths displayname {"text":"Deaths \u2620"}
execute if entity @a[scores={dc_settings=4}] run tellraw @a[tag=de-de] [{"text":"Sprache: Englisch"}]
execute if entity @a[scores={dc_settings=4}] run tellraw @a[tag=en-en] [{"text":"Language: English"}]
execute if entity @a[scores={dc_settings=4}] run tellraw @a[tag=fr-fr] [{"text":"Langue: Anglais"}]
## (5) französisch
execute if entity @a[scores={dc_settings=5}] run scoreboard objectives modify deaths displayname {"text":"Morts \u2620"}
execute if entity @a[scores={dc_settings=5}] run tellraw @a[tag=de-de] [{"text":"Sprache: Französisch"}]
execute if entity @a[scores={dc_settings=5}] run tellraw @a[tag=en-en] [{"text":"Language: French"}]
execute if entity @a[scores={dc_settings=5}] run tellraw @a[tag=fr-fr] [{"text":"Langue: Français"}]
## Scoreboard zurücksetzen
scoreboard players set @a dc_settings 0
