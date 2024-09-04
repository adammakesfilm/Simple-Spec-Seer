# Set score to save that welcome message has been seen
scoreboard players set @s art-sss-config 0

# Display welcome message
tellraw @s ["","Hello spectator. This server has a datapack that makes spectators visible to normal players via particles; however, by default no particle is selected. You can choose an effect by typing ",{"text":"/trigger spectator-config","underlined":true,"clickEvent":{"action":"suggest_command","value":"/trigger spectator-config"}},". Keep in mind that you won't see your own particles."]
tellraw @s "This message will not appear again."