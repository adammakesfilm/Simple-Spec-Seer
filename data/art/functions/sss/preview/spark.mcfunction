# Display base particle effect to self
particle minecraft:electric_spark ~ ~1.7 ~ 0 0 0 0 1 force @s

# Display extra particle effects if self is in motion
execute if score @s art-sss-extra matches 1.. run function art:sss/preview/spark-extra