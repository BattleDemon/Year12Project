## 1. Introduction

_Target: 0:00–1:30_

A war can begin over a single political dispute. That war might bankrupt a kingdom, destabilise its government, or lead to the collapse of an entire dynasty. Each decision creates consequences, which in turn create new decisions. This interaction between different systems is one of the defining characteristics of grand strategy games.

Hello ladies and gentlemen. For my Year 12 Project, I decided to explore the design of these games, combining my interests in history, video games, and software development. My project, _Grand Strategy: Designing a Historical Simulation Game_, focuses on the design of a historical grand strategy game set during the beginning of the Early Medieval period.

Throughout this presentation, I will explore the research that influenced my design, including how grand strategy games represent history, provide players with meaningful choices, and create stories through their gameplay systems. I will then discuss the development of my project, the decisions which shaped its direction, and the proposed design of the game itself. Finally, I will reflect on what I learnt throughout the process and how the project could be developed further in the future.

## 2. Origins and Initial Ambitions

_Target: 1:30–3:30_

My decision to undertake this project came from three of my main interests: history, programming, and video games. For several years, I had been interested in the idea of developing my own grand strategy game, combining elements from the different games I had played with my own ideas for how such a game could work. The Year 12 Project provided an opportunity to explore this idea further, and begin turning it into something more substantial.

One of the main influences on my project was the historical period I had chosen to represent. My game would be set during the transition from the Late Roman Empire into the Early Medieval period, focusing particularly on the migration of the Franks and the eventual establishment of the Merovingian dynasty.

_[Slow down when introducing the historical period.]_

I chose this period partly because it was one I had not seen explored in the grand strategy games I had played, but also because of its significance in shaping the political and cultural development of Europe. The collapse of Roman authority in Western Europe, the movement of different peoples, and the establishment of new kingdoms provided an interesting setting for a game focused on political, military, and social developments.

My original ambition was to develop a complete historical grand strategy game, using temporary artwork where necessary, as the visual appearance of the game was not my primary focus. Instead, I intended to concentrate on establishing its major gameplay systems, creating a foundation which could be expanded upon through future development.

## 3. Research

_Target: 3:30–8:00_

Before beginning development, I needed to establish a better understanding of what makes grand strategy games work, and how their different systems can be designed to create an engaging experience for the player.

### 3.1 Principles of Game Design

One of the first areas I researched was the broader principles of game design. An important distinction is that between mechanics and systems. Mechanics are the individual rules and actions which determine how a game functions, while systems are collections of these mechanics which work together to produce more complex behaviour.

This relationship is explored through the Mechanics, Dynamics and Aesthetics framework, which examines how the rules created by developers influence the behaviour that emerges through gameplay, and the resulting experience of the player.

Another important idea came from game designer Sid Meier.

_[Address audience.]_

Has anyone here heard of Sid Meier, or perhaps played one of his Civilization games?

_[Pause for response.]_

Sid Meier described games as a series of interesting decisions. This helped establish an important principle for my own design, that the complexity of a game does not necessarily make it engaging. Instead, its systems need to provide meaningful choices for the player.

### 3.2 Grand Strategy as a Genre

Before I go further, by a show of hands, how many of you have played, or even heard of, games such as Crusader Kings, Europa Universalis, or Hearts of Iron?

_[Pause and acknowledge the response.]_

Hugo, could you tell us which of these games you have played?

_[Hugo responds. Briefly acknowledge his answer before continuing.]_

For those unfamiliar with the genre, grand strategy games are a subgenre of strategy games, focusing on the management of political entities across large geographical areas and extended periods of time.

The genre developed from historical wargaming, including the Prussian _Kriegsspiel_, which was used by military officers to simulate battles and practise strategic decision-making. The transition to computers eventually allowed developers to represent much broader simulations, extending beyond warfare into the political and economic management of entire societies.

### 3.3 Historical Simulation, Player Agency and Storytelling

Another major area of my research was how video games represent history, particularly the distinction between historical accuracy and historical authenticity.

Historical accuracy concerns how closely a representation follows the available historical evidence, while historical authenticity concerns whether it reflects the broader characteristics and circumstances of the period.

This distinction is particularly important in grand strategy games, where players are expected to influence historical developments. If a game strictly follows recorded history, the player's decisions become largely meaningless. However, allowing complete freedom can undermine the historical setting itself.

This connects to the concepts of player agency and strategic depth. Player agency refers to the ability of players to make meaningful decisions which influence the game, while strategic depth concerns the opportunities for complex decision-making and long-term planning.

An important conclusion from my research was that providing more choices does not necessarily create greater agency or strategic depth. Instead, meaningful decisions often emerge from the limitations and consequences imposed by the game's systems.

In my own game, for example, the Franks would begin in historically authentic circumstances, but the player's decisions could change whether they successfully establish a kingdom under the Merovingian dynasty. The objective would not be to reproduce the historical outcome exactly, but to represent the circumstances that made it possible.

This also demonstrates one of the interesting aspects of video games as a creative medium. While developers establish the rules and systems which define the game, players can use these systems to create experiences and stories of their own.

In _Crusader Kings III_, for example, the player controls a ruler and their successors, making decisions concerning marriages, political relationships, warfare, and succession. The death of a ruler might trigger a succession crisis, leading to rebellion, civil war, or even the collapse of a dynasty.

These developments are not necessarily scripted, but emerge through gameplay, creating stories which can differ significantly between playthroughs.

### 3.4 Analysis of Existing Games

Alongside this theoretical research, I analysed several existing grand strategy games, particularly _Crusader Kings III_, _Europa Universalis V_, and _Hearts of Iron IV_.

Although these games share many fundamental characteristics, they approach their simulations differently.

_Crusader Kings III_ focuses on characters, dynasties, and political relationships, demonstrating how individuals and their decisions can influence broader historical developments.

_Europa Universalis V_ places greater emphasis on populations, economic production, trade, and the management of states.

Meanwhile, _Hearts of Iron IV_ focuses primarily on warfare, industrial production, and military logistics, demonstrating how these systems can support complex strategic planning.

Together, these games helped me identify the systems and mechanics I wanted to incorporate into my own project.

## 4. Development and Evolution

_Target: 8:00–12:30_

Following my initial research and planning, I began development using the Godot game engine, which I had previously worked with. My initial planning involved brainstorming potential features and mechanics on the whiteboard in the study room, alongside research into the historical period and existing games.

My first focus was establishing the game world, which would provide the foundation for the other mechanics I intended to develop. As part of this, I created a basic world editor, allowing me to establish the initial state of the game world, including the geographical and political circumstances of the starting period.

However, as I continued researching and planning, one of the main considerations became the scale of what I intended to create.

Grand strategy games are particularly complicated to develop, as they require numerous interconnected systems. Even an individual system, such as population movement or political relationships, would require considerable development before it could be integrated into the broader simulation.

To put this into perspective, _Europa Universalis V_, one of the games I researched, was developed over approximately five years by Paradox Tinto, an established professional development studio, before its release in November 2025.

_[Show Europa Universalis V and its development timeline.]_

This comparison illustrates the scale of the project I had originally envisioned, particularly when considering that I was attempting to undertake its development independently.

Recognising this, I decided to reconsider the direction of my project. Rather than attempting to develop numerous systems simultaneously, I initially reduced my ambition to a limited playable prototype, before eventually deciding to focus on the design and documentation of the game through a Game Design Document, or GDD.

This change allowed me to approach the project differently. Rather than beginning with the programming of individual mechanics, I could focus on establishing their intended functionality, purpose, and relationships with the broader simulation.

An important consideration behind this decision was avoiding spreading development across too many different systems before their underlying design had been established. By concentrating on the design itself, I could identify potential problems and refine individual mechanics before committing significant time towards their implementation.

Alongside this change, I also reduced the geographical scope of the game. Initially, I had intended to represent the entirety of Europe, but this was eventually narrowed to focus on France, northern Italy, northern Spain, and parts of western Germany.

These regions were selected because of their relevance to the migration of the Franks and the establishment of their kingdom. Reducing the geographical scope would also allow future development to represent a smaller region in greater detail, rather than attempting to simulate the entirety of Europe from the beginning.

The planned mechanics were similarly refined, placing greater emphasis on establishing the major systems and their intended relationships, rather than attempting to fully detail every individual feature.

By the later stages of the project, its direction had therefore changed considerably. What began as an attempt to develop a complete historical grand strategy game had become a project focused on researching and designing one.

Although this represented a departure from my original ambitions, the central concept remained the same, with the change in focus intended to support the development of a more complete and polished game in the future.

## 5. Final Product

_Target: 12:30–15:00_

The final direction of my project was the development of a Game Design Document, or GDD, outlining the proposed mechanics, systems, and overall design of my historical grand strategy game.

A Game Design Document is used to organise and communicate the different aspects of a game's design, providing a reference throughout development. For my project, its purpose was to establish a foundation which could be expanded upon as development continued.

The intended gameplay would combine character-driven politics, population systems, and military planning, drawing inspiration from the existing grand strategy games discussed earlier.

One of the central systems within my proposed game would be its character system, representing individual rulers, advisers, and other politically influential figures.

_[Show an image of a Frankish king, such as Clovis I, alongside examples of the proposed character system.]_

Rather than treating kingdoms as unified entities which act entirely according to the player's decisions, individual characters would have their own interests, relationships, and political objectives.

For example, a Frankish king might seek to expand his territory, but his ability to do so could depend upon the loyalty of his advisers, the support of other influential figures, and the political stability of his kingdom.

A decision to declare war might therefore provide an opportunity for territorial expansion, but could also weaken the ruler's political position if influential characters opposed the campaign.

Alongside the character system, population mechanics would represent the movement and settlement of peoples, particularly during the migration of the Franks. Cultural and religious differences would influence the development of regions, while military systems would represent warfare and territorial expansion.

These systems would also influence one another. For example, the settlement of a migrating population could change the cultural composition of a region, creating political tensions which might influence the stability of a kingdom and the decisions available to its ruler.

To organise these ideas, I developed a template for documenting individual mechanics and features within the GDD. This included their descriptions, technical considerations, reasoning behind their inclusion, and connections to other systems.

Although many of the mechanics remained conceptual, this structure established a consistent approach to documenting their design, which could be expanded upon through future development.

## 6. Evaluation and Reflection

_Target: 15:00–17:30_

Looking back at the project, one of the most significant developments was the decision to change its focus from creating a playable game towards establishing its underlying design.

Although this represented a considerable change from my original ambitions, it allowed me to concentrate on the aspects of game development which had initially interested me, particularly the relationship between historical representation, player decisions, and interconnected systems.

One of the most important things I learnt was the distinction between having an idea for a mechanic and actually establishing how that mechanic would function.

While it is relatively easy to identify features I would like to include in a game, designing the individual rules, calculations, and interactions required to implement them is considerably more complicated.

This demonstrated the importance of considering the broader design before committing to the development of individual systems. By establishing their intended functionality and relationships first, potential problems can be identified before significant time is invested in implementation.

The decision to focus on the GDD therefore provided an opportunity to approach the project in a more structured manner, developing a framework which could guide future programming and experimentation.

However, an important limitation of the design is that many of the proposed mechanics remain theoretical. Without implementing and testing these systems, it is difficult to determine whether they would produce the intended gameplay experience, or whether further changes would be required.

This would therefore be one of the main priorities for future development.

Rather than immediately attempting to develop the entire game, I would begin by implementing and testing individual systems, such as character relationships and political decision-making, before gradually expanding into population movement, economics, and warfare.

This would allow the mechanics to be refined through practical experimentation, while ensuring that each new system could be integrated into the existing design.

Overall, the project has provided me with a greater understanding of the planning and design decisions involved in creating a game of this scale. It has also reinforced the importance of managing a project's scope, and recognising when concentrating on a smaller number of features can provide a stronger foundation for future development.

## 7. Conclusion

_Target: 17:30–19:00_

Throughout this project, I have explored the principles of grand strategy game design, particularly how historical accuracy, player agency, and strategic depth can be balanced to create an engaging historical simulation.

Although the direction of my project changed considerably throughout its development, the central idea remained the same, to explore how a game could represent the political, military, and social developments surrounding the rise of the Franks and the Merovingian dynasty.

The change in focus allowed me to approach the project from a different perspective, concentrating on the design of the game before attempting to implement its mechanics.

Ultimately, one of the most interesting aspects of grand strategy games is their ability to represent history not simply as a sequence of predetermined events, but as the result of countless interacting decisions and circumstances.

It is this ability to allow players to shape their own historical narratives that originally interested me in the genre, and continues to motivate my interest in developing a game of my own.