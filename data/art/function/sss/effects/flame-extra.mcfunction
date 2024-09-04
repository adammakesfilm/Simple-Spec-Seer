execute if score @s art-sss-extra matches 150.. run particle minecraft:lava ~ ~1.7 ~ 0 0 0 1 1 normal @a[gamemode=!spectator]
scoreboard players reset @s art-sss-extra
particle minecraft:flame ~ ~1.7 ~ 0 0 0 0.1 1 normal @a[gamemode=!spectator]
execute if score @s art-sss-extra matches 10.. run particle minecraft:flame ~ ~1.7 ~ 0 0 0 0 1 normal @a[gamemode=!spectator]