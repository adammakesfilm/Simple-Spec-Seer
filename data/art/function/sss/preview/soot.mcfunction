# Display base particle effect to self
particle minecraft:smoke ~ ~1.7 ~ 0 0 0 0 1 force @s

# Display extra particle effects if self is in motion
execute if score @s art-sss-extra matches 1.. run function art:sss/preview/soot-extra

# Ambient particles (moved to separate function to fix MC < 1.16) [DISABLED BECAUSE ALREADY SHOWN TO SPECTATORS]
# function art:sss/preview/soot-ambient