# Display base particle effect to self
particle minecraft:dust 0.3 1 0 1.0 ~ ~1.7 ~ 0 0 0 0 1 force @s

# Display extra particle effects if self is in motion
execute if score @s art-sss-extra matches 2.. run function art:sss/preview/plant-extra

# Ambient particles (moved to separate function to fix MC < 1.17) [DISABLED BECAUSE ALREADY SHOWN TO SPECTATORS]
# execute if score #clock art-sss-extra matches 1 run function art:sss/preview/plant-ambient