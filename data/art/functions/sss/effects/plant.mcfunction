# Display base particle effect to all non-spectators
particle minecraft:dust 0.3 1 0 1.0 ~ ~1.7 ~ 0 0 0 0 1 force @a[gamemode=!spectator]

# Display extra particle effects if self is in motion
execute if score @s art-sss-extra matches 2.. run function art:sss/effects/plant-extra

# Ambient particles (moved to separate function to fix MC < 1.17)
execute if score #clock art-sss-extra matches 1 run function art:sss/effects/plant-ambient