# Remove trigger permission from the last player to exit spectator mode to work around no code running when no spectators
scoreboard players reset @a[gamemode=!spectator] spectator-config
tellraw @a[tag=debug] "No spectators exist anymore"