# Add tag to prevent success message from displaying
tag @s add rename

# Report rename
tellraw @s ["",{"text":"☐","bold":true,"color":"yellow"},{"text":" art-sss zip was renamed! ","bold":true},{"text":"Please disable the zip now with ","color":"red"},{"text":"/datapack disable","underlined":true,"color":"red","clickEvent":{"action":"suggest_command","value":"/datapack disable "}},{"text":".","color":"red"}]