![700](fffefwe.png)

<div style="page-break-after: always;"></div>

## Table of Contents

- [[#Table of Contents|Table of Contents]]  <span style="float:right;">x / x</span>
- [[#1 Abstract|1 Abstract]]<span style="float:right;">x / x</span>
- [[#2 Introduction|2 Introduction]]<span style="float:right;">x / x</span>
- [[#3 Research|3 Research]]<span style="float:right;">x / x</span>
		- [[#3.1 Principles of Game Design|3.1 Principles of Game Design]]<span style="float:right;">x / x</span>
		- [[#3.2 Grand Strategy Games as a Genre|3.2 Grand Strategy Games as a Genre]]<span style="float:right;">x / x</span>
		- [[#3.3 Historical Simulation, Accuracy and Authenticity|3.3 Historical Simulation, Accuracy and Authenticity]]<span style="float:right;">x / x</span>
		- [[#3.4 Player Agency and Strategic Depth|3.4 Player Agency and Strategic Depth]]<span style="float:right;">x / x</span>
		- [[#3.5 Analysis of Existing Grand Strategy Games|3.5 Analysis of Existing Grand Strategy Games]]<span style="float:right;">x / x</span>
- [[#4 Product Rationale|4 Product Rationale]]<span style="float:right;">x / x</span>
		- [[#4.1 Purpose and Target Audience|4.1 Purpose and Target Audience]]<span style="float:right;">x / x</span>
		- [[#4.2 Choice of Product and Format|4.2 Choice of Product and Format]]<span style="float:right;">x / x</span>
		- [[#4.3 Structure, Presentation and Communication|4.3 Structure, Presentation and Communication]]<span style="float:right;">x / x</span>
		- [[#4.4 Application of Research and Design|4.4 Application of Research and Design]]<span style="float:right;">x / x</span>
- [[#5 Development and Production|5 Development and Production]]<span style="float:right;">x / x</span>
		- [[#5.1 Initial Concept and Planning|5.1 Initial Concept and Planning]]<span style="float:right;">x / x</span>
		- [[#5.2 Historical Setting and World Design|5.2 Historical Setting and World Design]]<span style="float:right;">x / x</span>
		- [[#5.3 Development of Game Mechanics and Systems|5.3 Development of Game Mechanics and Systems]]<span style="float:right;">x / x</span>
		- [[#5.4 Creation of the Game Design Document|5.4 Creation of the Game Design Document]]<span style="float:right;">x / x</span>
		- [[#5.5 Challenges, Changes and Refinement|5.5 Challenges, Changes and Refinement]]<span style="float:right;">x / x</span>
- [[#6 Reflection and Evaluation|6 Reflection and Evaluation]]<span style="float:right;">x / x</span>
		- [[#6.1 Evaluation of Final Product|6.1 Evaluation of Final Product]]<span style="float:right;">x / x</span>
		- [[#6.2 Personal Learning and Development|6.2 Personal Learning and Development]]<span style="float:right;">x / x</span>
		- [[#6.3 Limitations and Future Improvements|6.3 Limitations and Future Improvements]]<span style="float:right;">x / x</span>
- [[#7 Conclusion|7 Conclusion]]<span style="float:right;">x / x</span>
- [[#References|References]]<span style="float:right;">x / x</span>
- [[#Appendix|Appendix]]<span style="float:right;">x / x</span>
		- [[#Appendix A - Game Design Document (GDD), template/examplar.|Appendix A - Game Design Document (GDD), template/examplar.]]<span style="float:right;">x / x</span>
		- [[#Appendix B - Screenshot of the Blizzard profile showing the name Merovingian.|Appendix B - Screenshot of the Blizzard profile showing the name Merovingian.]]<span style="float:right;">x / x</span>


---

<div style="page-break-after: always;"></div>

## 1 Abstract

This project explored how grand strategy games balance historical accuracy, player agency, and strategic depth, and how I could apply these approaches to the design of my own historical simulation game. My research focused on game design principles, historical representation, and the different approaches taken by games such as Crusader Kings III, Europa Universalis V, and Hearts of Iron IV. The game I proposed focuses on the rise of the Franks and the Merovingian dynasty during the transition from the Late Roman world into the Early Medieval period. Although I originally intended to develop a playable game, the final product instead became a Game Design Document (GDD), outlining the general concept and intended mechanics. This allowed me to establish a starting point for future development, while also recognising the difficulties involved in designing a game of this scale.

## 2 Introduction

This report explores the principles and methods of game design, with a particular focus on grand strategy games. Its guiding line of enquiry is: _How do grand strategy games balance their historical accuracy, player agency, and strategic depth, and how can those approaches be applied in the design of my own game?_

My motivation for this project came from my interests in both history and software development, particularly the ability for games to simulate complicated systems, while allowing the player to interact with historical circumstances. The game I have proposed is set during the transition from the Late Roman world into the Early Medieval period, with its focus on the migration of the Franks and the rise of the Merovingian dynasty. This period presented an interesting opportunity for a historical simulation, with the decline of Roman authority, changes in culture, and the formation of new political entities all providing circumstances which could influence the game.

The final product of this project is a Game Design Document (GDD), outlining the proposed setting, mechanics, and systems of a historical grand strategy game. Its main intended purpose is to act as a reference for myself when I eventually return to developing the game, while also allowing other people interested in the concept to understand its intended direction. Although I initially intended to produce a playable game, or at least a prototype, the focus shifted towards documenting its design rather than implementing it.

This report examines the research which influenced the game concept, the decisions and challenges involved in developing the project, and the extent to which the final document achieved its revised purpose.

<div style="page-break-after: always;"></div>

## 3 Research

#### 3.1 Principles of Game Design

Game design involves the development and arrangement of rules, mechanics, and systems which influence how players interact with and experience a game. Its fundamental principles include giving players meaningful choices, establishing rules and objectives, balancing challenges and rewards, and providing feedback on the consequences of their actions. Although these principles can apply to many different types of games, the ways in which they are achieved depend on the systems and experiences the designer intends to create.

Individual mechanics establish what actions are possible, but it is their interactions which determine how the game develops. This relationship is examined through the Mechanics, Dynamics, and Aesthetics (MDA) framework developed by Hunicke, LeBlanc, and Zubek (2004), which separates game design into three interconnected components (see Figure 1). Mechanics represent the underlying rules and systems, dynamics concern their behaviour during gameplay, and aesthetics describe the experience and response of the player (Hunicke, LeBlanc & Zubek 2004). An important distinction within this framework is that the developer creates the mechanics, while the player experiences the outcomes produced by them. Therefore, a system which appears effective when designed may not necessarily produce the intended experience once played.

![](mechanics-dynamics-aesthetis.png)
Figure 1. Diagram showing the relationship between design and player experience in the MDA framework (Hunicke, LeBlanc & Zubek 2004).

Another important principle is the role of player decisions. Sid Meier describes games as a series of 'interesting decisions', in which the player must consider different choices, their risks, and possible consequences (GDCVault & Meier 2012). For example, when applied to a strategy game, spending resources on military expansion might provide an immediate advantage, but could also restrict further economic development. The player must therefore consider which objective is more important to their circumstances. Meier also emphasises the importance of giving players sufficient information and feedback to understand the decisions they are making (Alexander 2012).

Although the MDA framework and Meier's approach examine different aspects of game design, both demonstrate that the number of mechanics alone does not determine the quality of the experience. Rather, it is how those mechanics interact, and whether their consequences create meaningful choices for the player. This is particularly important for the grand strategy game I intend to design, where the interaction between numerous systems forms much of the gameplay.

#### 3.2 Grand Strategy Games as a Genre

Grand strategy games are a subgenre of strategy games which focus on the large-scale management of political entities, often across extensive geographical areas and historical periods. Rather than primarily concentrating on individual battles, players must consider diplomacy, economics, warfare, politics, and the long-term development of their state or territory. This reflects the broader concept of grand strategy, in which military, diplomatic, and economic resources are coordinated towards long-term political objectives (Silove 2018).

The origins of the genre can be traced back to earlier military simulations and historical wargames. One particularly important example was the Prussian _Kriegsspiel_, which was developed as a method of training military officers. Schuurman (2019) describes how these exercises involved officers giving written orders, with an umpire interpreting the resulting movement and battlefield conditions. Henning (2021) identifies its adoption by the Prussian army in 1824 as an important development in professional wargaming. These games were not simply intended for entertainment, but allowed officers to practise making decisions and explore the possible results without having to conduct an actual military campaign. Their use of maps, rules, and simulated consequences established principles which would later be found in strategy games.

![](Joseph_Nash_Kriegsspiel.png)
Figure 2. Military officers playing Kriegsspiel, illustrating the use of wargames in officer training (Nash 1872).

With the transition from physical wargames to computer-based simulations, the scale and complexity of these systems could increase considerably. Loban (2021) argues that computerisation removed much of the need for players to manually calculate outcomes and manage large numbers of rules. This allowed digital games to represent not only warfare, but also the political, economic, diplomatic, and social circumstances surrounding it. However, this greater complexity also introduces a problem, as more detailed mechanics do not automatically make a game more engaging, particularly if the player struggles to understand them.

A defining characteristic of grand strategy games is therefore the interaction between numerous systems. Military campaigns require economic resources, diplomatic relationships influence political stability, and internal politics may restrict what a ruler is able to achieve. Loban (2017) examines the ability of the genre to represent diplomatic and international relationships through alliances, conflicts, and other interactions between political entities. Similarly, Spring (2014) examines how historical video games, including the _Crusader Kings_ and _Europa Universalis_ series, present the past through their mechanics and historical framing. While real-time strategy games often focus on controlling units and resources during individual engagements, grand strategy instead places greater emphasis on the broader political and strategic circumstances over an extended period.

![](europa-universalis-v-5-__1_.jpg)
Figure 3. Political map and interface from _Europa Universalis V_ during a Kingdom of France playthrough (Paradox Interactive 2025).

Nonetheless, the systems used in historical strategy games also create assumptions which may not reflect historical realities. De Zamaróczy (2016) identifies assumptions such as perfect information, perfect control, and perpetual conflict, which can result in the player having far more authority and certainty than historical leaders would have possessed. In this way, a state can appear much more unified and predictable than it actually was. Although these simplifications make the game manageable, they also influence the way in which the player understands the historical world.

Grand strategy games are therefore particularly suited to historical simulation because they can represent political, economic, and military developments as interconnected processes, rather than isolated events. For my proposed game, this provides the opportunity to model political fragmentation and the formation of new kingdoms during the transition from Roman to Frankish rule. However, the mechanics must also consider how this historical setting limits the player's authority, and how their decisions might lead to outcomes different from those which occurred in history.

#### 3.3 Historical Simulation, Accuracy and Authenticity

Historical simulation involves representing historical events, circumstances, and processes through systems which allow players to interact with the past. Unlike a traditional historical narrative, where events are presented in an established sequence, a simulation allows the player to influence their development. However, the complexity of history cannot be represented completely through game mechanics, with any simulation therefore relying upon a selection and simplification of historical circumstances. Elliott (2017) argues that these games can offer opportunities for historical thinking through simulation, rather than simply reproducing the events of the past.

An important distinction in historical game design is between historical accuracy and historical authenticity. Accuracy generally concerns whether a representation agrees with historical evidence, including dates, individuals, events, and territories. Authenticity is instead concerned with whether the circumstances and characteristics of the period are represented in a convincing manner. Therefore, while a game may move away from the exact events of history, it could still present an authentic representation of the conditions which influenced them. Chapman (2012) argues that judging historical games purely on the accuracy of their content overlooks the importance of their mechanics and how the player interacts with the historical representation.

![](accvsauth.png)
Figure 4. Comparison between historical accuracy and historical authenticity.

This distinction is particularly relevant to grand strategy games, as players can influence political and military developments over long historical periods. If the game forces events to occur exactly as they did historically, then the player has little ability to change the outcome. On the other hand, allowing complete freedom could remove the limitations which made that period distinctive. The difficulty is therefore not simply whether an event occurs correctly, but whether the systems allow different outcomes to develop from appropriate historical circumstances.

Furthermore, the mechanics themselves can create inaccuracies. De Zamaróczy (2016) identifies assumptions about information and control which simplify the uncertainty faced by historical leaders. McCall (2012) similarly discusses the need for historical simulations to express complicated human behaviour through defined systems and rules. This demonstrates that the historical interpretation presented to the player depends not only upon the information included, but also upon the decisions made when designing the simulation. For my proposed game, I therefore intend to prioritise the conditions surrounding Frankish migration and political fragmentation, rather than requiring the Merovingian kingdoms to develop in exactly the way they did historically.

#### 3.4 Player Agency and Strategic Depth

Player agency and strategic depth are closely related aspects of game design, particularly in grand strategy games where decisions can influence several systems at once. Player agency concerns the ability to make meaningful decisions which affect the game, while strategic depth involves the extent to which different approaches, long-term planning, and consequences must be considered. However, simply providing more choices does not necessarily make those choices meaningful.

Mateas (2001) describes agency as emerging from the relationship between the actions available to the player and the limitations established by the game. Tanenbaum and Tanenbaum (2010) similarly challenge the assumption that greater freedom will always create greater agency, instead emphasising meaningful participation. This suggests that limitations can be important to player decisions, particularly when they force the player to make compromises rather than achieving every objective at once.

Strategic depth is likewise not determined simply by the number of mechanics available. Lantz et al. (2017) examine depth in terms of a game's ability to support continued learning and strategic problem-solving. For example, expanding a kingdom might provide more territory and resources, but could also increase military expenditure and create opposition within the state. The player must therefore consider both the immediate benefits and the later consequences.

![](interconnect.png)
Figure 5. Example of the interaction between strategic decisions and different game systems.

These ideas are important to my proposed game, where the interactions between character relationships, populations, and warfare are intended to influence which decisions are possible. Rather than giving players unlimited control, the historical and political circumstances should provide limitations which encourage different approaches and allow alternative outcomes to develop.

<div style="page-break-after: always;"></div>

#### 3.5 Analysis of Existing Grand Strategy Games

Examining existing grand strategy games provides examples of how different designers have approached historical accuracy, player agency, and strategic depth. The games most relevant to my own project are _Crusader Kings III_ (2020), _Europa Universalis V_ (2025), and _Hearts of Iron IV_ (2016), which I have played and which each place a different emphasis on the management of a historical world. Although they share many characteristics, their differences demonstrate that the genre does not require one particular set of mechanics.

_Crusader Kings III_ focuses on the characters and dynasties which control states, rather than treating the state itself as a single unified entity. Players control rulers and their successors, managing their relationships with vassals, family members, and neighbouring rulers. Its mechanics include succession, marriages, character traits, and political schemes, which allow conflicts and developments to emerge through the actions of individual characters (Paradox Development Studio, Lab42 & Lab42 Limited 2020). This provides a strong basis for personal stories within a broader historical setting. However, this emphasis also means that population and economic systems are less detailed, which limits how far the game represents the people living within those territories. Nonetheless, its character-focused approach is particularly relevant to the political and dynastic circumstances of my proposed setting.

![666](ck3.jpg)
Figure 6. _Crusader Kings III_, showing the character, family, heir, and council interfaces.

_Europa Universalis V_ approaches the historical world at a broader social and economic level. Its population system represents differences in culture, religion, and social position, while trade, production, and political estates all influence the development of a state (Paradox Interactive 2025). Compared with _Crusader Kings III_, this provides a more detailed representation of the population and economic foundations of political power. However, the greater number of interconnected systems also makes the consequences of individual decisions more difficult to understand, particularly for someone unfamiliar with the game. Its population mechanics are therefore an interesting influence for my project, although their complexity would need to be considered carefully.

![656](eu5.jpg)
Figure 7. _Europa Universalis V_, showing information about the population and its composition.

_Hearts of Iron IV_ differs from both of these games, with its main focus instead being warfare, military logistics, industrial production, and the planning of campaigns during the Second World War. National focus trees also allow countries to pursue historical or alternative political directions (Paradox Development Studios 2016). These structured pathways are useful for representing particular historical developments and giving the player clear objectives, but they can also limit the extent to which political events emerge naturally from the simulation. Its military planning provides an influence for the intended warfare systems in my game, particularly during migration and territorial expansion.

![468](23_historical_germany_autarky_efforts.png)
Figure 8. A section of the national focus tree in _Hearts of Iron IV_.

Despite the differences between these games, they share several features, including large political maps, historical starting conditions, and multiple systems influencing the player's decisions. They also generally allow the player to pursue their own objectives rather than requiring a single historical outcome. What differs is where the complexity is concentrated. _Crusader Kings III_ places it in characters and relationships, _Europa Universalis V_ in populations and state management, and _Hearts of Iron IV_ in military and industrial planning.

Not every grand strategy game is historical. _Stellaris_ (2016), for example, applies many of these ideas to a fictional science-fiction setting, allowing players to develop their own civilisation and explore a procedurally generated galaxy (Paradox Development Studio & Tantalus Media 2016). Without a particular historical period to represent, it can explore societies, technology, and political structures with much greater freedom. However, this also means that the game must establish its own internal consistency, rather than drawing upon a historical setting to provide the circumstances in which the simulation operates.

Outside Paradox Interactive, the _Civilization_ series provides another approach to large-scale strategy games. Although generally classified as 4X games, referring to exploration, expansion, exploitation, and extermination, _Civilization VI_ (2016) and _Civilization VII_ (2025) share many mechanics with grand strategy. Players manage a civilisation over an extended period, developing cities, technologies, economies, militaries, and diplomatic relationships. Unlike most Paradox grand strategy games, however, the player usually begins with a small settlement, gradually expanding and developing their civilisation rather than managing an already established historical state (Firaxis Games 2025). This gives exploration and territorial development a much greater role, while also using a more abstract representation of historical progress.

These comparisons demonstrate that historical simulation and strategic depth can be approached through considerably different designs. For my proposed game, the character and dynastic politics of _Crusader Kings III_, the population systems of _Europa Universalis V_, and aspects of the military planning of _Hearts of Iron IV_ are the most directly relevant. At the same time, _Stellaris_ and _Civilization_ demonstrate the alternative possibilities of fictional settings and more abstract historical development. The challenge for my own design is therefore not simply combining features from these games, but determining which systems actually suit the period and the experience I intend to create.

## 4 Product Rationale

#### 4.1 Purpose and Target Audience

The purpose of my project was to design the foundations of a historical grand strategy game, and to consider how historical authenticity, player agency, and strategic depth could work together within a single simulation. The final product became a Game Design Document (GDD), outlining the intended setting and overall direction of the mechanics. Rather than serving as a playable demonstration, its purpose is to record the ideas behind the game and establish a starting point for future development.

The main intended audience is myself, as I still hope to develop the game in the future. Having these ideas written down will allow me to return to earlier decisions, reconsider the proposed systems, and continue the project without having to begin the planning again. A secondary audience includes my peers and people interested in historical grand strategy games, who may wish to understand what I intend to make. Consequently, the document also needs to explain its features and historical setting in a way which can be understood without already knowing how the game would eventually be programmed.

#### 4.2 Choice of Product and Format

My original intention was to design and develop a playable historical grand strategy game. However, the scale of the project, alongside the time available, made this considerably more difficult than I had initially expected. As a result, I reduced the intended product from a complete game to a limited prototype, before eventually focusing on the Game Design Document. This allowed me to continue investigating the design and historical aspects of the project, even without developing the game itself.

I chose the GDD format because it allows different mechanics to be recorded separately, while still identifying their connections with the wider simulation. This is especially useful for a grand strategy game, where systems such as characters, populations, and warfare would need to influence one another. It also provides a document which can be expanded and changed as development continues.

Nonetheless, this format has its limitations. Describing a mechanic does not demonstrate that it functions as intended, or that the player would find it engaging. Without a playable prototype, I cannot test the balance of these systems or how they would actually interact. Therefore, although the GDD was a more realistic product for the time available, it remains only an early foundation for the game I originally intended to make.

#### 4.3 Structure, Presentation and Communication

I structured the Game Design Document around the different aspects of the proposed game, so that individual mechanics could be explained without losing their connections to other systems. This was particularly important because of the number of political, economic, and military features I intended the game to include.

I also developed a consistent format for recording individual features, including a description, technical considerations, the reasoning behind their inclusion, and connections to other mechanics (see Appendix A). My intention was to make the document useful when I return to the project, while still allowing interested readers to understand the ideas without knowing how the eventual game would be programmed. This required balancing technical terms with explanations of what the systems were actually intended to achieve.

#### 4.4 Application of Research and Design

My research into existing grand strategy games had a considerable influence on which systems I wanted to explore. _Crusader Kings III_ provided an example of character and dynastic politics, while _Europa Universalis V_ demonstrated how populations and economies could be represented as part of a broader simulation. The military mechanics of _Hearts of Iron IV_ also influenced my approach to representing warfare during migration.

The wider research into historical authenticity and player agency influenced how I wanted these systems to operate. Rather than having historical events occur in a predetermined order, I wanted the circumstances of the period to influence what players could achieve, while still allowing their decisions to change the outcome. This gave me an overall direction for the proposed design, even though the individual mechanics remained largely conceptual.

## 5 Development and Production

#### 5.1 Initial Concept and Planning

My original idea for the Year 12 project was to design and develop a complete historical grand strategy game, focusing on the rise of the Franks and the Merovingian dynasty. I intended to make the game playable, even if that meant using temporary artwork, which in hindsight was a particularly ambitious undertaking.

I began planning by using the whiteboard in the study room to organise potential mechanics and features. I also chose Godot as the engine and experimented with some initial code. However, by the end of Term 1, I had made very little progress towards an actual game, largely because of the time required for my other assignments. This led me to reduce the intended scope, firstly to a more limited prototype, and eventually towards a document describing the overall design rather than a playable product.

#### 5.2 Historical Setting and World Design

I chose the rise of the Franks and the Merovingian dynasty because I found it an interesting period, particularly as it is not extensively covered by commercially available grand strategy games. My interest also had a more personal origin, with my father's Blizzard account being named 'Merovingian', which had encouraged me to learn more about the name and the historical period behind it (see Appendix B).

I initially considered a game covering the entirety of Europe, but quickly recognised the scale of this and reduced the geographical focus to France, Italy, northern Spain, and parts of Germany. Even this remained quite ambitious. The central historical developments I wanted to represent were the migration of Frankish peoples, the establishment of their kingdom, and the transition from Roman to Germanic political and cultural influence.

These circumstances also influenced the proposed mechanics, particularly the combination of _Crusader Kings III_-style characters, _Europa Universalis V_-style populations, and military systems influenced by _Hearts of Iron IV_ to represent migration and territorial expansion.

#### 5.3 Development of Game Mechanics and Systems

As the project moved away from developing a playable game, my approach to the mechanics became more focused on establishing the general ideas behind the systems, rather than actually implementing them. From my research into existing games, I wanted to combine character-driven politics, populations, and more detailed military planning, drawing particularly upon _Crusader Kings III_, _Europa Universalis V_, and _Hearts of Iron IV_.

The main consideration was how these different systems could represent the Frankish migration and the establishment of a kingdom. Population and cultural mechanics could help represent the movement and settlement of peoples, while characters and political relationships could influence the leadership of the emerging states. Warfare would also need to reflect the difficulties of migrating, controlling territory, and expanding into neighbouring regions.

However, these remained largely as proposed concepts, rather than completed systems with defined rules and calculations. Consequently, I was unable to test how they would work together, or whether they would produce the intended outcomes. This is an important limitation of the design, but it also identifies the areas I would need to develop further before producing a playable prototype.

#### 5.4 Creation of the Game Design Document

When creating the Game Design Document, I first needed a way to organise the different ideas and features so that they could be returned to during future development. I therefore developed a template for individual mechanics, including their description, technical considerations, purpose, and connections to other systems (see Appendix A).

This provided a consistent way of recording the intended design, while also encouraging me to consider how one mechanic might affect another. However, as I shifted towards the GDD relatively late in the project, the document remained limited in its detail. Many of the systems would still require further research and planning before I could begin implementing them, although the format gives me a starting point for that future work.

#### 5.5 Challenges, Changes and Refinement

The greatest difficulty I encountered was the scale of the project, especially when combined with the work required for my other school subjects. I had originally intended to produce a complete grand strategy game, but I underestimated how much time would be needed to design and develop all of its interconnected systems. By the end of Term 1 I had made little progress, making it increasingly apparent that my original plan was not realistic.

I first reduced the intended product to a limited playable prototype, before eventually deciding to focus on the Game Design Document. This was a considerable change from what I had wanted to achieve, but it still allowed me to explore the history and game design which had motivated the project in the first place.

Nonetheless, this compromise came with its own limitations. Without a working game, I could not test the mechanics or make refinements based upon actual gameplay. The final product therefore remains much less developed than I originally intended, although changing the scope allowed me to produce a foundation for the game rather than continuing towards an unfinished playable version.

## 6 Reflection and Evaluation

#### 6.1 Evaluation of Final Product

The final product is considerably different from the complete game I had originally planned. Although I would have preferred to produce at least a working prototype, I consider the Game Design Document to be a reasonable compromise given the time available and the ambition of the original project.

The GDD establishes the proposed historical setting and the general direction of the mechanics, allowing me to return to these ideas during future development. However, it is not yet detailed enough to act as a complete guide for implementing the game, with many systems still requiring specific rules and their interactions remaining untested. Therefore, although it communicates the overall idea, it has only partially achieved its purpose as a development reference. Its value at this stage is mainly in preserving the initial concept and identifying what further work would be needed.

#### 6.2 Personal Learning and Development

Throughout this project I developed a greater understanding of both game design and the historical period surrounding the Franks and the rise of the Merovingian dynasty. In particular, researching existing grand strategy games showed me how their individual mechanics are connected, and why balancing historical authenticity, player agency, and strategic depth is more difficult than simply adding more features.

I also learnt considerably about the importance of properly judging the scope of a project. When I began, I underestimated how much work a complete game would require, especially alongside my other assignments. Although I did not achieve the original goal, the experience has made me more aware of the planning and preparation required before beginning a larger software development project.

#### 6.3 Limitations and Future Improvements

The greatest limitation of the final product is that the proposed mechanics remain largely conceptual, without detailed rules or gameplay testing. Although I have established the general direction of the game, there is still considerable work required to determine how the different systems would interact, and whether these interactions would create an engaging and balanced experience.

I intend to continue developing the GDD in the future, firstly by expanding the individual mechanics and defining their relationships more clearly. From there, I would like to begin producing smaller playable prototypes, allowing me to test individual systems and make changes based on the results. This would provide a more practical basis for eventually developing the historical grand strategy game which I originally intended to make.

## 7 Conclusion

This project examined how grand strategy games balance historical accuracy, player agency, and strategic depth, and how I could use these approaches in the design of my own historical simulation. The research demonstrated that this balance does not come simply from reproducing the events of history, nor from creating as many complex mechanics as possible. Instead, historical circumstances must provide the foundations of the game, while meaningful player decisions and the interactions between systems allow its events to develop in different ways.

Although my original ambition was to develop a playable grand strategy game, the final product instead became a Game Design Document outlining the concept and proposed mechanics. This was a considerable reduction in scope, and many elements remain incomplete or untested. Nonetheless, the project allowed me to explore both the historical period and the principles of game design in greater detail, while establishing a foundation which I intend to return to in future development. Therefore, while the final outcome did not achieve my initial ambitions, it provided a useful starting point for the larger project I originally envisioned.

<div style="page-break-after: always;"></div>

## References

Alexander, L 2012, _GDC 2012: Sid Meier on how to see games as sets of interesting decisions_, Game Developer, viewed 3 November 2026, <https://www.gamedeveloper.com/design/gdc-2012-sid-meier-on-how-to-see-games-as-sets-of-interesting-decisions>.

Chapman, A 2012, _Privileging form over content: Analysing historical videogames · Journal of Digital Humanities_, Journalofdigitalhumanities.org, viewed 3 November 2026, <https://journalofdigitalhumanities.org/1-2/privileging-form-over-content-by-adam-chapman/>.

de Zamaróczy, N 2016, ‘Are we what we play? Global politics in historical strategy computer games’, _International Studies Perspectives_, vol. 18, no. 2, p. ekv010, viewed 3 November 2026, <https://doi.org/10.1093/isp/ekv010>.

Firaxis Games 2025, _Sid Meier’s Civilization VII_, 2k, viewed 3 November 2026, <https://civilization.2k.com/civ-vii/>.

Firaxis Games & Aspyr 2016, _Sid Meier’s Civilization VI_, 2k, viewed 3 November 2026, <https://civilization.2k.com/civ-vi/>.

GDCVault & Meier, S 2012, _Interesting Decisions_, Game Developers Confrence Vault, viewed 3 November 2026, <https://www.gdcvault.com/play/1015756/Do-Say-The-Right-Thing>.

Henning, P 2021, ‘“Game on!” A research project on the prussian Kriegsspiel’, _British Journal for Military History_, vol. 7, no. 2, pp. 174–183, viewed 3 November 2026, <https://journals.gold.ac.uk/index.php/bjmh/article/view/1561?>.

Hunicke, R, Leblanc, M & Zubek, R 2004, _MDA: A formal approach to game design and game research_, _Association for the Advancement of Artificial Inteligence_, viewed 3 November 2026, <https://ocs.aaai.org/Papers/Workshops/2004/WS-04-04/WS04-04-001.pdf>.

Lantz, F, Isaksen, A, Jaffe, A, Nealen, A & Togelius, J 2017, _Depth in strategic games_, viewed 3 November 2026, <https://www.nealen.net/papers/Lantz2017Depth.pdf>.

Loban, R 2017, ‘Digitising diplomacy: Grand strategy video games as an introductory tool for learning diplomacy and international relations’, _DiGRA Digital Library_, viewed 3 November 2026, <https://dl.digra.org/index.php/dl/article/view/915>.

― 2021, ‘The transformation from physical wargames to grand strategy video games, and the opportunities for deep and efficient historical wargaming experiences’, _DIGITAL CULTURE & EDUCATION_, vol. 13, no. 1, p. 2021, viewed 3 November 2026, <https://static1.squarespace.com/static/5cf15af7a259990001706378/t/6140608f9c785f4271840181/1631608981678/Loban%2B2021.pdf>.

Mateas, M 2001, ‘A preliminary poetics for interactive drama and games’, _Digital Creativity_, vol. 12, no. 3, pp. 140–152, viewed 3 November 2026, <https://www.tandfonline.com/doi/abs/10.1076/digc.12.3.140.3224>.

McCall, J 2025, _» Historical simulations as problem spaces: Criticism and Classroom Use Journal of Digital Humanities_, Journalofdigitalhumanities.org, viewed 3 November 2026, <https://journalofdigitalhumanities.org/1-2/historical-simulations-as-problem-spaces-by-jeremiah-mccall/>.

Nash, J 1872, _The Autumn Manoeuvres, Officers playing at Kriegs Spiel, or the Game of War._, viewed 3 November 2026, <https://commons.wikimedia.org/wiki/File:Joseph_Nash_Kriegsspiel.png>.

Paradox Development Studio, Lab42 & Lab42 Limited 2020, _Crusader Kings 3_, Paradox Interactive, viewed 3 November 2026, <https://www.paradoxinteractive.com/games/crusader-kings-iii/about>.

Paradox Development Studio & Tantalus Media 2016, _Stellaris_, Paradox Interactive, viewed 3 November 2026, <https://www.paradoxinteractive.com/games/stellaris/about>.

Paradox Development Studios 2016, _Hearts of Iron IV_, Paradox Interactive, viewed 3 November 2026, <https://www.paradoxinteractive.com/games/hearts-of-iron-iv/about>.

Paradox Interactive 2025, ‘3D Map and UI Reveals’, _Paradox Forum_, 8 May, viewed 3 November 2026, <https://forum.paradoxplaza.com/forum/threads/3d-map-and-ui-reveals.1742852/>.

Paradox Tinto & Paradox Development Studio 2025, _Europa Universalis V_, Paradox Interactive, viewed 3 November 2026, <https://www.paradoxinteractive.com/games/europa-universalis-v/about>.

PNG Mart 2023, _Black fade, smooth transition, subtle shadow, dark gradient, deep toning PNG_, PNG Mart, viewed 4 November 2026, <https://www.pngmart.com/image/654127/png/654126>.

Schuurman, P 2019, ‘A game of contexts: Prussian-German professional wargames and the leadership concept of mission tactics 1870–1880’, _War in History_, vol. 28, no. 3, pp. 504–524, viewed 3 November 2026, <https://doi.org/10.1177/0968344519855104>.

Silove, N 2018, ‘Beyond the buzzword: The three meanings of “grand strategy”’, _Security Studies_, vol. 27, no. 1, pp. 27–57, viewed 3 November 2026, <https://openresearch-repository.anu.edu.au/server/api/core/bitstreams/81defc10-5119-4225-8f08-649e7d7545f7/content>.

Spring, D 2014, ‘Gaming history: Computer and video games as historical scholarship’, _Rethinking History_, vol. 19, no. 2, pp. 207–221, viewed 3 November 2026, <https://www.tandfonline.com/doi/full/10.1080/13642529.2014.973714>.

Stephenson, M, Perez-Liebana, D, Nelson, M, Khalifa, A & Zook, A 2019, _Game complexity vs strategic depth_, Um.edu.mt, National Institute of Informatics, Japan, viewed 3 November 2026, <https://www.um.edu.mt/library/oar/handle/123456789/82108>.

Tanenbaum, K & Tanenbaum, TJ 2010, ‘Agency as commitment to meaning: Communicative competence in games’, _Digital Creativity_, vol. 21, no. 1, pp. 11–17, viewed 3 November 2026, <https://doi.org/10.1080/14626261003654509>.

<div style="page-break-after: always;"></div>

## Appendix

#### Appendix A - Game Design Document (GDD), template/examplar.

**Feature/Mechanic Name:** Lorem ipsum

**Tags:** Lorem, Ipsum

**Description:** Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.

**Technical:** Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.

**Reason:** Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.

**Connections:**
‌	Lorem Ipsum,
‌	Dolor sit,
‌	Consectetur

(Lorem Ipsum 2019)

#### Appendix B - Screenshot of the Blizzard profile showing the name Merovingian.

![](dadmerovin.png)
Figure B1. My father's Blizzard account, whose username first sparked my interest in the Merovingian dynasty.

