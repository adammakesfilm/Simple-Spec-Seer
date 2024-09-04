# Display base particle effect to all non-spectators
particle minecraft:dust 1 1 1 1 ~ ~1.7 ~ 0 0 0 0 1 force @a[gamemode=!spectator]

# Display extra particle effects if self is in motion
execute if score @s art-sss-extra matches 1.. run function art:sss/effects/snow-extra

# Ambient particles
execute if score #clock art-sss-extra matches 1 run particle minecraft:snowflake ~-5 ~-5 ~-5 10 10 10 0 1 normal @a