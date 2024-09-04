# Display base particle effect to all non-spectators [UNLESS IN MOTION!]
execute unless score @s art-sss-extra matches 1.. run particle minecraft:dust 1.0 0.0 1 1.0 ~ ~1.7 ~ 0 0 0 0 1 force @a[gamemode=!spectator]

# Display extra particle effects if self is in motion
execute if score @s art-sss-extra matches 1.. run function art:sss/effects/ender-extra

# Ambient particles
execute if score #clock art-sss-extra matches 1 run particle minecraft:portal ~ ~1.7 ~ 0 0 0 0.5 1 normal @a[gamemode=!spectator]