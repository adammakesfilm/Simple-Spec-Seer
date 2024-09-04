# Display load message
tellraw @a[tag=debug] "art-sss has been loaded"

# Create scoreboards
scoreboard objectives add spectator-config trigger
scoreboard objectives add art-sss-config dummy
scoreboard objectives add art-sss-extra minecraft.custom:minecraft.fly_one_cm
scoreboard objectives add art-sss-preview dummy