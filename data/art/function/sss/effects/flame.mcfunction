# Display base particle effect to all non-spectators
particle minecraft:dust 1.0 0.45 0.0 1.0 ~ ~1.7 ~ 0 0 0 0 1 force @a[gamemode=!spectator]

# Display extra particle effects if self is in motion
execute if score @s art-sss-extra matches 5.. run function art:sss/effects/flame-extra

# Ambient particles (moved to separate function to fix MC < 1.16)
function art:sss/effects/flame-ambient