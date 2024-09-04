# Display base particle effect to all non-spectators
particle minecraft:end_rod ~ ~1.7 ~ 0 0 0 0 1 force @a[gamemode=!spectator]

# Display extra particle effects if self is in motion
execute if score @s art-sss-extra matches 1.. run function art:sss/effects/fairy-extra