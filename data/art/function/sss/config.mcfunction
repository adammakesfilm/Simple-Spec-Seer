# Show in-game config if triggered via /trigger command (aka if score 1)
execute if score @s spectator-config matches 1 run tellraw @s "Click an option below to enable/change your particle look:"
execute if score @s spectator-config matches 1 run tellraw @s ["","[",{"text":"OFF","underlined":true,"color":"red","clickEvent":{"action":"run_command","value":"/trigger spectator-config set -99"},"hoverEvent":{"action":"show_text","contents":[{"text":"Don't display particles; invisible to non-spectators (default)","color":"red"}]}},"] [",{"text":"Crow","underlined":true,"color":"dark_gray","clickEvent":{"action":"run_command","value":"/trigger spectator-config set -1"},"hoverEvent":{"action":"show_text","contents":[{"text":"Caw caw.","color":"gray"}]}},"] [",{"text":"Ender","underlined":true,"color":"light_purple","clickEvent":{"action":"run_command","value":"/trigger spectator-config set -2"},"hoverEvent":{"action":"show_text","contents":[{"text":"You vanish as you move between areas.","color":"light_purple"}]}},"] [",{"text":"Fairy","underlined":true,"color":"white","clickEvent":{"action":"run_command","value":"/trigger spectator-config set -3"},"hoverEvent":{"action":"show_text","contents":[{"text":"Your bright shine beckons others to follow.","color":"white"}]}},"] [",{"text":"Flame","underlined":true,"color":"gold","clickEvent":{"action":"run_command","value":"/trigger spectator-config set -4"},"hoverEvent":{"action":"show_text","contents":[{"text":"Hot.","color":"gold"}]}},"] [",{"text":"Ocean","underlined":true,"color":"blue","clickEvent":{"action":"run_command","value":"/trigger spectator-config set -5"},"hoverEvent":{"action":"show_text","contents":[{"text":"You cut through the air like a bullet... of water.","color":"blue"}]}},"] [",{"text":"Plant","underlined":true,"color":"dark_green","clickEvent":{"action":"run_command","value":"/trigger spectator-config set -6"},"hoverEvent":{"action":"show_text","contents":[{"text":"The colors of life.","color":"dark_green"}]}},"] [",{"text":"Soot","underlined":true,"color":"gray","clickEvent":{"action":"run_command","value":"/trigger spectator-config set -7"},"hoverEvent":{"action":"show_text","contents":[{"text":"Your presence remembers what once was.","color":"gray"}]}},"] [",{"text":"PV","underlined":true,"color":"green","clickEvent":{"action":"run_command","value":"/trigger spectator-config set -98"},"hoverEvent":{"action":"show_text","contents":[{"text":"Click to enable self-preview for ","color":"green"},{"text":"30 seconds","color":"yellow"},{"text":".","color":"green"},"\n","* Set graphics to Fabulous to fix translucency"]}},"]"]

# Also show 1.17 in-game config if it can run (this only succeeds in 1.17+)
execute if score @s spectator-config matches 1 run function art:sss/config-117

# Update the player's preference if triggered with custom value via in-game config (aka if score -x)
execute if score @s spectator-config matches -1 run scoreboard players set @s art-sss-config -1
execute if score @s spectator-config matches -2 run scoreboard players set @s art-sss-config -2
execute if score @s spectator-config matches -3 run scoreboard players set @s art-sss-config -3
execute if score @s spectator-config matches -4 run scoreboard players set @s art-sss-config -4
execute if score @s spectator-config matches -5 run scoreboard players set @s art-sss-config -5
execute if score @s spectator-config matches -6 run scoreboard players set @s art-sss-config -6
execute if score @s spectator-config matches -7 run scoreboard players set @s art-sss-config -7
execute if score @s spectator-config matches -8 run scoreboard players set @s art-sss-config -8
execute if score @s spectator-config matches -9 run scoreboard players set @s art-sss-config -9
execute if score @s spectator-config matches -10 run scoreboard players set @s art-sss-config -10
execute if score @s spectator-config matches -99 run scoreboard players set @s art-sss-config 0

# Set self-preview to 30 seconds if button is clicked
execute if score @s spectator-config matches -98 run scoreboard players set @s art-sss-preview 30

# Reset trigger to prevent conflict and looping
scoreboard players reset @s spectator-config