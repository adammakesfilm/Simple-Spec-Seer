# Notify stuff
tellraw @s {"text":"A confirmation message will indicate that the disable script was successful:","bold":true}

# Disable the datapack
datapack disable "file/art-sss-v1-7.zip"

# Remove scoreboards (comment out the last line if you want to preserve spectator preferences)
scoreboard objectives remove spectator-config
scoreboard objectives remove art-sss-extra
scoreboard objectives remove art-sss-preview
scoreboard objectives remove art-sss-config

# Test if scoreboards were removed by trying to set and check a score on each one
scoreboard players set #error spectator-config 1
scoreboard players set #error art-sss-extra 1
scoreboard players set #error art-sss-preview 1
scoreboard players set #error art-sss-config 1
execute if score #error spectator-config matches 1 run tag @s add error
execute if score #error art-sss-extra matches 1 run tag @s add error
execute if score #error art-sss-preview matches 1 run tag @s add error
execute if score #error art-sss-config matches 1 run tag @s add errorc

# Report error if one of the scoreboards still exists
execute if entity @s[tag=error] run tellraw @s ["",{"text":"☒","bold":true,"color":"red"},{"text":" art-sss didn't remove the scoreboards for an unknown reason. ","bold":true},{"text":"Open the readme for manual uninstall instructions and maybe report this error message to me.","color":"red"}]
execute if entity @s[tag=errorc] unless entity @s[tag=error] run tellraw @s ["",{"text":"☐","bold":true,"color":"yellow"},{"text":" Spectator preferences were preserved due to operator preference.","bold":true}]

# Run rename function if the datapack was renamed
function art:sss/rename

# Report success
execute unless entity @s[tag=error] unless entity @s[tag=errorc] unless entity @s[tag=rename] run tellraw @s ["",{"text":"☑","bold":true,"color":"green"},{"text":" art-sss was cleanly disabled! ","bold":true}]

# Remove tags from player
tag @s remove error
tag @s remove errorc
tag @s remove rename

# Report tag error
execute if entity @s[tag=error] run tellraw @s ["",{"text":"☒","bold":true,"color":"red"},{"text":" The disable function didn't clean up. ","bold":true},{"text":"Please remove the tags [","color":"red"},{"text":"error","bold":true,"underlined":true,"color":"red","clickEvent":{"action":"run_command","value":"/tag @s remove error"}},{"text":"] [","color":"red"},{"text":"errorc","bold":true,"underlined":true,"color":"red","clickEvent":{"action":"run_command","value":"/tag @s remove errorc"}},{"text":"] [","color":"red"},{"text":"rename","bold":true,"underlined":true,"color":"red","clickEvent":{"action":"run_command","value":"/tag @s remove rename"}},{"text":"] from yourself.","color":"red"}]