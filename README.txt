Art's Simple Spectator Seer
art-sss v1.7 by Art1f4ct


To uninstall type the following (requires op): /function art:sss/disable


Manual uninstall:
1) Disable the datapack and ensure it isn't running by typing /reload
2) Remove the trigger "spectator-config":   /scoreboard objectives remove spectator-config
3) Remove the scoreboard "art-sss-config":  /scoreboard objectives remove art-sss-config
4) Remove the scoreboard "art-sss-extra":   /scoreboard objectives remove art-sss-extra
5) Remove the scoreboard "art-sss-preview": /scoreboard objectives remove art-sss-preview


Changelog:
v1.7
* Fixed disable function tag error
v1.6
* Disable function now detects and reports that the datapack was renamed
* Disable function now detects and reports that the scoreboards weren't removed
* Disable function now detects and reports a few other potential errors
v1.5
* Added a button that allows spectators to preview their own particle effect
* Made some colors more visible
v1.4
* Changed literally nothing but the name because PMC keeps renaming zips and breaking disable
v1.2
* Added ocean particle effect
* Added aqua, snow, and spark particle effects
  - These options will not appear on MC < 1.17 since they use 1.17 particles
* Tweaked and added new particles to plant, ender, fairy, and flame
  - Some extra effects may not display on older MC versions
* Fixed soot effect for MC < 1.16
* Base particles are now forced
* Spectator particles no longer render if they are too close to a player's head
* Updated pack format to 7 (this pack will, however, remain compatible with 1.14+)
v1.1
* Spectators no longer see any particles except for ambient and ender-extra
* Extra text added to welcome, notifies that spectators won't see their own particles
* Reduced frequency of plant-extra and flame-extra particles
v1.0
* Added extra verbose to disable function
* First zip also // reminder to myself to fix/test disable function before releasing an update //
