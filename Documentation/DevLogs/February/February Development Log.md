24th of February 2026,

During the past two weeks since the senior retreat I have been making solid progress on both the Editor and World scenes. With the Editor having a working region editor while still needing work on the realm side. The world scene is some what working allowing for multiple map modes such as culture and faith, but the shader currently looks very janky and is certainly only a test version. 

The feature brainstorming is going well with a clear idea for how regions and realms will work, with some ideas for trade, warfare, governance as well as events. 

Here is a link to the current video log, 

Here is a link to the current GitHub commit, https://github.com/BattleDemon/Year12Project/tree/d463130930d750c7cef94f53a69541ac44d06828

Devlogs in the future will be more detailed and more frequent, this was just the first and I plan to do one every week from now on.

Issues encountered, 
Currently in the world scene the first three provinces in the json don't show up visually while they can still be selected. 
Before this the region selection had an issue where it couldn't select the province even though all the code looked correct and it was clicking on a selectable region, it turned out that the way i had origionally exported the png file shifted the colors which the selection was looking for meaning each province that was mapped to a color was still mapped to that color but the physical color had changed.
