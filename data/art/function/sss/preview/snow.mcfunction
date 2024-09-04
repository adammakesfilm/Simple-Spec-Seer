# Display base particle effect to all self
particle minecraft:dust 1 1 1 1 ~ ~1.7 ~ 0 0 0 0 1 force @s

# Display extra particle effects if self is in motion
execute if score @s art-sss-extra matches 1.. run function art:sss/preview/snow-extra

# Ambient particles [DISABLED BECAUSE ALREADY SHOWN TO SPECTATORS]
# execute if score #clock art-sss-extra matches 1 run particle minecraft:snowflake ~-5 ~-5 ~-5 10 10 10 0 1 normal @a