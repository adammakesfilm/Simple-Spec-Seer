# Decrease preview timer each second and remove player from timer when it reaches 0
execute if score #clock art-sss-extra matches 1 run scoreboard players remove @s art-sss-preview 1
execute if score @s art-sss-preview matches 0 run scoreboard players reset @s art-sss-preview

# Display preview notice
title @s actionbar {"text":"Self-preview is currently active","color":"green"}
execute unless score @s art-sss-preview matches 0.. run title @s actionbar " "

# Run corresponding preview effects depending on effect choice
execute as @s[scores={art-sss-config=-1}] at @s run function art:sss/preview/crow
execute as @s[scores={art-sss-config=-2}] at @s run function art:sss/preview/ender
execute as @s[scores={art-sss-config=-3}] at @s run function art:sss/preview/fairy
execute as @s[scores={art-sss-config=-4}] at @s run function art:sss/preview/flame
execute as @s[scores={art-sss-config=-5}] at @s run function art:sss/preview/ocean
execute as @s[scores={art-sss-config=-6}] at @s run function art:sss/preview/plant
execute as @s[scores={art-sss-config=-7}] at @s run function art:sss/preview/soot
execute as @s[scores={art-sss-config=-8}] at @s run function art:sss/preview/aqua
execute as @s[scores={art-sss-config=-9}] at @s run function art:sss/preview/snow
execute as @s[scores={art-sss-config=-10}] at @s run function art:sss/preview/spark