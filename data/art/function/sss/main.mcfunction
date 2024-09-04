# Enable trigger for all spectators and disable for others. Check trigger status and call trigger check function if config is to be displayed/changed for a player.
schedule function art:sss/reset 5t
scoreboard players reset @a[gamemode=!spectator] spectator-config
scoreboard players enable @a[gamemode=spectator] spectator-config
execute as @a[gamemode=spectator] unless score @s spectator-config matches 0 run function art:sss/config

# Progress the clock
scoreboard players add #clock art-sss-extra 1
execute if score #clock art-sss-extra matches 20.. run scoreboard players set #clock art-sss-extra 0

# Self-preview (this must come before normal fx because fx resets some values preview depends on)
execute as @a[gamemode=spectator,scores={art-sss-preview=0..}] at @s unless entity @a[gamemode=!spectator,distance=..0.75] run function art:sss/preview

# Run corresponding effects as spectators depending on effect choice
execute as @a[gamemode=spectator] unless score @s art-sss-config matches -10..0 run function art:sss/welcome
execute as @a[gamemode=spectator,scores={art-sss-config=-1}] at @s unless entity @a[gamemode=!spectator,distance=..0.75] run function art:sss/effects/crow
execute as @a[gamemode=spectator,scores={art-sss-config=-2}] at @s unless entity @a[gamemode=!spectator,distance=..0.75] run function art:sss/effects/ender
execute as @a[gamemode=spectator,scores={art-sss-config=-3}] at @s unless entity @a[gamemode=!spectator,distance=..0.75] run function art:sss/effects/fairy
execute as @a[gamemode=spectator,scores={art-sss-config=-4}] at @s unless entity @a[gamemode=!spectator,distance=..0.75] run function art:sss/effects/flame
execute as @a[gamemode=spectator,scores={art-sss-config=-5}] at @s unless entity @a[gamemode=!spectator,distance=..0.75] run function art:sss/effects/ocean
execute as @a[gamemode=spectator,scores={art-sss-config=-6}] at @s unless entity @a[gamemode=!spectator,distance=..0.75] run function art:sss/effects/plant
execute as @a[gamemode=spectator,scores={art-sss-config=-7}] at @s unless entity @a[gamemode=!spectator,distance=..0.75] run function art:sss/effects/soot
execute as @a[gamemode=spectator,scores={art-sss-config=-8}] at @s unless entity @a[gamemode=!spectator,distance=..0.75] run function art:sss/effects/aqua
execute as @a[gamemode=spectator,scores={art-sss-config=-9}] at @s unless entity @a[gamemode=!spectator,distance=..0.75] run function art:sss/effects/snow
execute as @a[gamemode=spectator,scores={art-sss-config=-10}] at @s unless entity @a[gamemode=!spectator,distance=..0.75] run function art:sss/effects/spark