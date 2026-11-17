# Grand Strategy: Designing a Historical Simulation Game

## 1. Introduction

_Target: 0:00–1:30_

A war can begin over a single political dispute. That war might bankrupt a kingdom, destabilise its government, or lead to the collapse of an entire dynasty. Each decision creates consequences, which in turn create new decisions. This interaction between different systems is one of the defining characteristics of grand strategy games.

Hello ladies and gentlemen. For my Year 12 Project, I decided to explore the design of these games, combining my interests in history, video games, and software development. My project, _Grand Strategy: Designing a Historical Simulation Game_, focuses on the design of a historical grand strategy game set during the beginning of the Early Medieval period.

Throughout this presentation, I will explore the research that influenced my design, particularly how grand strategy games represent history, provide players with meaningful choices, and create stories through their gameplay systems. I will then discuss the development of my project, how my original ambitions changed throughout the year, and the decisions that shaped its final direction. Finally, I will reflect on the challenges I encountered, what I learnt from the process, and how successfully the project achieved its original objectives.

## 2. Origins and Initial Ambitions

_Target: 1:30–3:30_

My decision to undertake this project came from three of my main interests: history, programming, and video games. For several years, I had been interested in the idea of developing my own grand strategy game, combining elements from the different games I had played with my own ideas for how such a game could work. The Year 12 Project provided an opportunity to explore this idea further, and begin turning it into something more substantial.

One of the main influences on my project was the historical period I had chosen to represent. My game would be set during the transition from the Late Roman Empire into the Early Medieval period, focusing particularly on the migration of the Franks and the eventual establishment of the Merovingian dynasty.

_[Slow down when introducing the historical period.]_

I chose this period partly because it was one I had not seen explored in the grand strategy games I had played, but also because of its significance in shaping the political and cultural development of Europe. The collapse of Roman authority in Western Europe, the movement of different peoples, and the establishment of new kingdoms provided an interesting setting for a game focused on political, military, and social developments.

My original ambition was to develop a complete historical grand strategy game, although I recognised that producing a polished game within the available time would be difficult. I therefore intended to use basic visuals and temporary artwork where necessary, focusing primarily on the development of its gameplay systems.

The aim was to establish a foundation which could be expanded upon through future development, while exploring how the different mechanics of a grand strategy game could interact to produce a historical simulation.

## 3. Research

_Target: 3:30–8:00_

Before beginning development, I needed to establish a better understanding of what makes grand strategy games work, and how their different systems can be designed to create an engaging experience for the player.

### 3.1 Principles of Game Design

One of the first areas I researched was the broader principles of game design. An important concept I encountered was the Mechanics, Dynamics and Aesthetics framework, which explores the relationship between the rules and systems created by developers, the behaviour that emerges through gameplay, and the resulting experience of the player.

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

For those unfamiliar with the genre, grand strategy games are a subgenre of strategy games, generally focusing on the management of political entities across large geographical areas and extended periods of time.

The genre developed from historical wargaming, including the Prussian _Kriegsspiel_, which was used by military officers to simulate battles and practise strategic decision-making. The transition to computers eventually allowed developers to represent much broader and more complicated systems, extending beyond warfare into the political and economic management of entire societies.

### 3.3 Historical Simulation, Player Agency and Storytelling

Another major area of my research was how video games represent history, particularly the distinction between historical accuracy and historical authenticity.

Historical accuracy concerns how closely a representation follows the available historical evidence, while historical authenticity concerns whether it reflects the broader characteristics and circumstances of the period.

This distinction is particularly important in grand strategy games, where players are expected to influence historical developments. If a game strictly follows recorded history, the player's decisions become largely meaningless. However, allowing complete freedom can undermine the historical setting itself.

This connects to the concepts of player agency and strategic depth. Player agency refers to the ability of players to make meaningful decisions which influence the game, while strategic depth concerns the opportunities for complex decision-making and long-term planning.

An important conclusion from my research was that providing more choices does not necessarily create greater agency or strategic depth. Instead, meaningful decisions often emerge from the limitations and consequences imposed by the game's systems.

In my own game, for example, the Franks would begin in historically authentic circumstances, but the player's decisions could change whether they successfully establish a kingdom under the Merovingian dynasty. The objective would not be to reproduce the historical outcome exactly, but to represent the circumstances that made it possible.

This also contributes to another interesting aspect of grand strategy games, their ability to create stories without following a predetermined narrative. Rather than every event being written in advance, stories can emerge through the interaction of different systems and player decisions.

In _Crusader Kings III_, for example, the death of a ruler might trigger a succession crisis, leading to rebellion, civil war, or even the collapse of a dynasty. These events are not necessarily scripted, but emerge through gameplay, creating a different story with each playthrough.

### 3.4 Analysis of Existing Games

Alongside this theoretical research, I analysed several existing grand strategy games, particularly _Crusader Kings III_, _Europa Universalis V_, and _Hearts of Iron IV_.

Although these games share many fundamental characteristics, they approach their simulations differently.

_Crusader Kings III_ focuses on characters, dynasties, and political relationships, demonstrating how personal interactions can influence broader historical developments.

_Europa Universalis V_ takes a different approach, placing greater emphasis on populations, economic production, trade, and the management of states.

Meanwhile, _Hearts of Iron IV_ focuses primarily on warfare, industrial production, and military logistics, demonstrating how these systems can support complex strategic planning.

Together, these games provided examples of different approaches to grand strategy design, helping me identify the systems and mechanics I wanted to incorporate into my own project.

## 4. Development and Evolution

_Target: 8:00–12:30_

Following my initial research and planning, I began development with the intention of creating a historical grand strategy game, using temporary artwork where necessary, as the visuals of the game were not my primary focus.

My initial planning was relatively informal, involving a combination of research into the historical period and game design, alongside brainstorming potential features and mechanics on the whiteboard in the study room. I also established a rough development timeline, although this quickly fell away as other commitments began to take priority.

Having previously used the Godot game engine, I decided to continue using it for this project. My initial focus was on establishing the game world, which would form the foundation for the other mechanics I intended to develop.

As part of this, I created a basic world editor, allowing me to establish the initial state of the game world. This represented the majority of my practical development, as although I had begun establishing the world itself, I had not yet implemented the gameplay mechanics which would allow it to function as a grand strategy game.

By the end of Term 1, I had made relatively little progress towards the game I originally envisioned. The amount of work required by my other subjects had begun to take priority, leaving considerably less time for the Year 12 Project than I had originally intended.

As a result, I began reconsidering the scope of what I wanted to produce, initially reducing my ambition from a complete game to a limited playable prototype. The intention was to focus on a smaller selection of gameplay systems, rather than attempting to implement everything I had originally planned.

However, by the end of Term 2, even this reduced objective had become increasingly unrealistic. The majority of the game's mechanics remained unimplemented, and the workload from my other subjects continued to increase. This was also influenced by my own approach to time management, as I often prioritised assignments which contributed towards my ATAR, rather than spending that time on the Year 12 Project.

Eventually, I decided to abandon the goal of producing a playable prototype and instead focus on the design and documentation of the game through a Game Design Document, or GDD.

Although this decision was largely a response to the limited time remaining, it also provided an opportunity to approach the project differently. Rather than continuing to develop individual mechanics without a complete understanding of how they would interact, I could return to my original planning and establish a more structured foundation for the game.

This would allow me to consider potential problems within the design before attempting to implement the systems themselves. It also provided an opportunity to refine the intended mechanics and reduce unnecessary complexity, rather than committing time to programming features which might eventually need to be redesigned.

Alongside this change, the game concept itself also underwent several reductions in scope. Initially, I had intended to represent the entirety of Europe, but this was eventually reduced to a smaller geographical region, focusing on France, northern Italy, northern Spain, and parts of western Germany. These areas were selected because of their relevance to the migration of the Franks and the establishment of their kingdom.

The planned mechanics also became less detailed, shifting away from fully established rules and calculations towards broader descriptions of the systems and their intended interactions.

By the later stages of the project, its direction had therefore changed considerably. What began as an attempt to develop a complete historical grand strategy game had become a project focused on the research, planning, and design of one. Although this was a significant departure from my original ambitions, the intention was to establish a stronger foundation which could support the development of a more complete and polished game in the future.

## 5. Final Product

_Target: 12:30–15:00_

The final direction of my project was the development of a Game Design Document, or GDD, outlining the proposed mechanics, systems, and overall design of my historical grand strategy game.

A Game Design Document is used to organise and communicate the different aspects of a game's design, providing a reference for developers throughout production. For my project, its purpose was to establish the foundations of the game, rather than attempt to produce a fully playable version within the available time.

The intended gameplay would combine character-driven politics, population systems, and military planning, drawing inspiration from the existing grand strategy games discussed earlier.

One of the main considerations was how these systems could represent the historical circumstances surrounding the migration of the Franks.

Population mechanics would represent the movement and settlement of peoples, alongside cultural and religious developments. Character systems would influence political leadership and relationships, while military systems would represent the challenges of warfare, migration, and territorial expansion.

An important part of the intended design was how these systems would interact. For example, the settlement of a migrating population could change the cultural composition of a region, creating political tensions which might influence its stability and the decisions available to the player.

To organise the proposed design, I developed a template for documenting individual mechanics and features. This included their descriptions, technical considerations, reasoning behind their inclusion, and their connections to other systems.

The purpose of this structure was to establish a consistent method of recording ideas, which could be expanded upon during future development. It would also allow individual features to be considered in relation to the broader simulation, rather than being designed independently.

Although the design documentation remained limited in its detail, particularly regarding the exact rules, calculations, and interactions between systems, it established a general direction for the game and provided a structure which could be developed further.

## 6. Evaluation and Reflection

_Target: 15:00–17:30_

Looking back at the project, I would consider the final outcome to be only partially successful. Although I was able to explore the historical and game design aspects which initially interested me, I ultimately fell considerably short of my original ambition of producing a playable grand strategy game.

One of the main reasons for this was my failure to establish and maintain a realistic development timeline. Although the original scope was ambitious, I also underestimated the amount of time required to develop even the foundational systems of the game. Combined with my decision to prioritise other school assignments, this meant that much of the practical development I had originally intended was never completed.

If I were to undertake the project again, I would begin with a much smaller scope, focusing on developing one or two functional mechanics before attempting to expand the game further. This would provide a more achievable foundation for development, while also allowing the mechanics to be tested and refined throughout the process.

However, despite these difficulties, the project did provide an opportunity to develop my understanding of game design.

One of the most important things I learnt was the difference between having an idea for a mechanic and actually designing how it would function. While it is relatively easy to identify features I would like to include in a game, establishing the rules, calculations, and interactions required to implement them is considerably more complicated.

This also demonstrated the importance of establishing a clear design before beginning development. Although some experimentation is necessary, attempting to implement a large number of mechanics without first considering their relationships and requirements can create further difficulties later in the process.

The decision to focus on the GDD was therefore useful in establishing a more structured approach, although it also introduced limitations. Without functional gameplay systems, I was unable to test whether the proposed mechanics would actually produce the intended experience, meaning that many of the design decisions remain theoretical.

Nevertheless, the research and planning undertaken throughout the year have provided a foundation which I could continue developing in the future. More importantly, the project has given me a better understanding of realistic planning, managing the scope of a project, and recognising the difference between what I would like to create and what I can realistically achieve.

## 7. Conclusion

_Target: 17:30–19:00_

Throughout this project, I have explored the principles of grand strategy game design, particularly how historical accuracy, player agency, and strategic depth can be balanced to create an engaging historical simulation.

Although my project developed considerably differently from what I had originally intended, the central idea remained the same, to explore how a game could represent the political, military, and social developments surrounding the rise of the Franks and the Merovingian dynasty.

While I was unable to achieve many of my original objectives, the project has provided me with a greater understanding of the challenges involved in designing a game of this scale, and a foundation which I hope to continue developing in the future.

Ultimately, one of the most interesting aspects of grand strategy games is their ability to represent history not simply as a sequence of predetermined events, but as the result of countless interacting decisions and circumstances.

It is this ability to allow players to shape their own historical narratives that originally interested me in the genre, and continues to motivate my interest in developing a game of my own.