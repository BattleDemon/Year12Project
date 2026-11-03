# Grand Strategy: *Designing a Historical Simulation Game*


![[maxresdefault.jpg]]

<center>Year 12 Project Report</center>
<br>
<center>By</center>
<center>Dexter Jon Hart</center>
<br>
<center>5th November 2026</center>




<div style="page-break-after: always;"></div>

## Table of Contents

- [[#Table of Contents|Table of Contents]] <span style="float:right;">2 / x</span>
- [[#1 Abstract|1 Abstract]] <span style="float:right;">3 / x</span>
- [[#2 Introduction|2 Introduction]] <span style="float:right;">3 / x</span>
- [[#3 Research|3 Research]] <span style="float:right;">4 / x</span>
		- [[#3.1 Principles of Game Design|3.1 Principles of Game Design]] <span style="float:right;">4 / x</span>
		- [[#3.2 Grand Strategy Games as a Genre|3.2 Grand Strategy Games as a Genre]] <span style="float:right;">5 / x</span>
		- [[#3.3 Historical Simulation, Accuracy and Authenticity|3.3 Historical Simulation, Accuracy and Authenticity]] <span style="float:right;">7 / x</span>
		- [[#3.4 Player Agency and Strategic Depth|3.4 Player Agency and Strategic Depth]] <span style="float:right;">Pg.xx</span>
		- [[#3.5 Analysis of Existing Grand Strategy Games|3.5 Analysis of Existing Grand Strategy Games]] <span style="float:right;">Pg.xx</span>
		- [[#3.6 Historical Context and Representation|3.6 Historical Context and Representation]] <span style="float:right;">Pg.xx</span>
- [[#4 Product Rationale|4 Product Rationale]] <span style="float:right;">Pg.xx</span>
		- [[#4.1 Purpose and Target Audience|4.1 Purpose and Target Audience]] <span style="float:right;">Pg.xx</span>
		- [[#4.2 Choice of Product and Format|4.2 Choice of Product and Format]] <span style="float:right;">Pg.xx</span>
		- [[#4.3 Structure, Presentation and Communication|4.3 Structure, Presentation and Communication]] <span style="float:right;">Pg.xx</span>
		- [[#4.4 Application of Research and Design|4.4 Application of Research and Design]] <span style="float:right;">Pg.xx</span>
- [[#5 Development and Production|5 Development and Production]] <span style="float:right;">Pg.xx</span>
		- [[#5.1 Initial Concept and Planning|5.1 Initial Concept and Planning]] <span style="float:right;">Pg.xx</span>
		- [[#5.2 Historical Setting and World Design|5.2 Historical Setting and World Design]] <span style="float:right;">Pg.xx</span>
		- [[#5.3 Development of Game Mechanics and Systems|5.3 Development of Game Mechanics and Systems]] <span style="float:right;">Pg.xx</span>
		- [[#5.4 Creation of the Game Design Document|5.4 Creation of the Game Design Document]] <span style="float:right;">Pg.xx</span>
		- [[#5.5 Challenges, Changes and Refinement|5.5 Challenges, Changes and Refinement]] <span style="float:right;">Pg.xx</span>
- [[#6 Reflection and Evaluation|6 Reflection and Evaluation]] <span style="float:right;">Pg.xx</span>
		- [[#6.1 Evaluation of Final Product|6.1 Evaluation of Final Product]] <span style="float:right;">Pg.xx</span>
		- [[#6.2 Personal Learning and Development|6.2 Personal Learning and Development]] <span style="float:right;">Pg.xx</span>
		- [[#6.3 Limitations and Future Improvements|6.3 Limitations and Future Improvements]] <span style="float:right;">Pg.xx</span>
- [[#7 Conclusion|7 Conclusion]] <span style="float:right;">Pg.xx</span>
- [[#References|References]] <span style="float:right;">Pg.xx</span>
- [[#Appendices|Appendices]] <span style="float:right;">Pg.xx</span>
		- [[#Appendix A - BLA BLa|Appendix A - BLA BLa]] <span style="float:right;">Pg.xx</span>

---

<div style="page-break-after: always;"></div>

## 1 Abstract

Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.

Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem.
## 2 Introduction

This report explores the principles and methods of game design, with a focus on grand strategy games. The guiding line of enquiry for this project is: _How do grand strategy games balance their historical accuracy, player agency, and strategic depth, and how can those approaches be applied in the design of my own game?_

This project was motivated by my interests in both history and software development, particularly the ability of games to simulate complex systems and allow players to engage with historical scenarios. The game concept developed for this project is set during the transition from the Late Roman world into the Early Medieval period, focusing on the migration of Frankish peoples and the rise of the Merovingian dynasty. This period provides a unique foundation for exploring the challenges of historical simulation, as players must navigate political fragmentation, cultural change, and the formation of new states.

The final product produced for this project is a Game Design Document (GDD), outlining the proposed mechanics, systems, and features of a historical grand strategy game. The document is intended for an audience interested in game design and historical strategy games, particularly those interested in understanding how complex historical systems can be represented through gameplay. Rather than producing a complete playable game, the GDD aims to communicate the overall design and provide a foundation for potential future development.

This report outlines the research which informed the ideas and decisions presented in the Game Design Document, the processes undertaken to develop the final product, and an evaluation of the project's outcomes and limitations.



<div style="page-break-after: always;"></div>

## 3 Research

#### 3.1 Principles of Game Design

Game design is the development and arrangement of rules, mechanics, ans systems which influence how players interact with and experience the game. The fundamental principles of game design includes creating meaningful player choices, establishing clear rules and objectives, balancing challenges and reward, and providing feedback on consequences of player actions. With these principles aiming to create an engaging experience for players, and different theories and frameworks providing approaches to understanding how this can be achieved. 

Individual mechanics within a game establish what is possible, but their interconnecting interactions determines how a game develops and how players can respond. This relationship is explored through the Mechanics, Dynamics, and Aesthetics (MDA) framework, developed by Hunicke, LeBlanc, and Zebek (2004), and separates game design into its three interconnected components (see Figure 1). Mechanics describe the rules and systems of the game, dynamics the behaviour they present during gameplay, and aesthetic as the experience and response from the player (Hunicke, Leblanc & Zubek 2004). A fundamental aspect of this framework is the separation between the perspectives of the developers and players. Where developers construct the mechanics which form the game, and players experience the resulting dynamics and aesthetics (Hunicke, Leblanc & Zubek 2004).

![](mechanics-dynamics-aesthetis.png)
Figure 1. Diagram showing connection between a players consumption and their design parallels (Hunicke, Leblanc & Zubek 2004). 

One of these fundamental principles is the importance of player decisions. Sid Meier explores this idea in his description of games as a series of 'interesting decisions'. Meier argues that these decisions are often meaningful and require negotiating trade-offs, risks, and consequences, where the effect of the choice depends on the player's circumstances. He uses an example which I have adapted to a strategy game lens, where investing resources into military expansion may provide an instantaneous advantage, but limits further economic growth (GDCVault & Meier 2012). Meier also emphasises in a 'Game Developers' report the importance of providing players with sufficient information and feedback to understand the consequences of their actions (Alexander 2012).

Although these approaches target different aspects of game design, they are connected through their relationship between mechanics and player experience. The MDA framework provides understanding on how systems induce gameplay, while Meier's focuses on the decisions those systems represent. Suggesting that a successful game design requires more than just numerous complex mechanics and systems. Instead they must interact to produce meaningful choices and an engaging experience. 

#### 3.2 Grand Strategy Games as a Genre

Grand strategy games are a sub-genre of strategy games which focus on the large-scale management of political entities, often across extensive geographical areas and historical periods. Rather than concentrating on individual battles or tactical engagements, players make decisions concerning diplomacy, economics, warfare, politics, and the long-term development of their state or territory. This distinction is reflected in the broader concept of grand strategy, which involves the coordination of military, diplomatic, and economic resources towards long-term political objectives (Silove, 2018).

The origins of the genre can be traced to earlier military simulations and historical wargames. Among the most influential of these was the Prussian _Kriegsspiel_, a professional wargame adopted by the Prussian army in the early nineteenth century. Schuurman (2021) explains that these wargames were used by officers as serious training tools rather than merely for entertainment, with players issuing written orders while an umpire interpreted outcomes and battlefield conditions. Julius (2021) similarly identifies the Prussian _Kriegsspiel_ as the first professional wargame, introduced into the Prussian army in 1824. These early systems are significant because they established many principles that would later influence strategy games, including map-based simulation, the modelling of military decision-making, and the attempt to represent complex real-world circumstances through rules and abstractions.

![](Joseph_Nash_Kriegsspiel.png)
Figure 2: Prussian military officers practice fighting the next war with Kriegsspiel (Nash 1872).

The development from physical wargames to digital grand strategy games allowed these simulations to become much broader in scale and complexity. Loban (2021) argues that computerisation removed much of the burden of manual calculation and record-keeping which limited earlier wargames, allowing designers to represent more interconnected systems. As a result, historical strategy games expanded beyond the simulation of single battles to include political, economic, diplomatic, and social developments. However, greater complexity does not necessarily produce a more engaging experience, particularly when additional mechanics increase the difficulty of understanding the simulation and raise the barrier to entry.

A defining characteristic of grand strategy games is the interaction between multiple systems. Military campaigns require economic resources, diplomatic relationships influence political stability, and internal political circumstances can limit the player’s ability to pursue their objectives. Loban (2017) identifies diplomacy and international relations as significant elements of the genre, demonstrating how grand strategy games simulate alliances, warfare, and other interactions between political entities. Similarly, Spring (2015) shows that historical strategy games such as the _Crusader Kings_ and _Europa Universalis_ series use both gameplay mechanics and historical framing to represent the past. This demonstrates that the genre extends beyond military conflict alone, incorporating political and social developments as part of a broader simulation. Unlike real-time strategy games, which usually emphasise unit control and resource management during individual engagements, grand strategy games focus on broader political and strategic decision-making over longer periods.

![](europa-universalis-v-5-__1_.jpg)
Figure 3: Political map and user interface from *Europa Universalis V*, during a 'Kingdom of France' play though.(Paradox Interactive 2025).

However, the systems used in historical strategy games can also introduce assumptions which do not fully reflect historical realities. De Zamaróczy (2017) argues that many historical strategy games rely on assumptions such as perfect information, perfect control, and perpetual conflict. These mechanics can simplify political relationships and present historical states as more unified, rational, and predictable than they were in reality. This highlights a significant limitation of the genre, as the abstractions which make games understandable and playable can also shape, and sometimes distort, the player’s interpretation of the historical world.

Grand strategy games are particularly suited to historical simulation because they allow political, economic, and military developments to be represented as interconnected processes rather than isolated events. For the proposed game, set during the transition from the Late Roman world into the Early Medieval period, this creates an opportunity to represent political fragmentation and the formation of new states through interacting systems. Consequently, the design must consider not only the historical circumstances being represented, but also how these systems influence player decisions and the development of alternative historical outcomes.
#### 3.3 Historical Simulation, Accuracy and Authenticity

Historical simulation involves the representation of historical events, circumstances, and processes through systems which allow players to interact with the past. Unlike a traditional historical narrative, which presents events in an established sequence, historical simulation allows players to influence how events develop. However, these simulations are necessarily simplified interpretations of history, as the complexity of historical circumstances cannot be fully represented through the mechanics of a game. With Elliott (2017) arguing that these types of historical games can provide an opportunity for historical thinking through its simulation, rather than a simple reproduction of historical events.

An important distinction withing historical game design is that between historical accuracy and historical authenticity. With historical accuracy generally concerning the extent of which a presentation of history corresponds with evidence. While historical authenticity, is more concerned as to whether the presentation reflects the general characteristics, conditions, and experiences of the historical aspect. A game then can depart from recorded historical events, while maintaining its authentic representation of the period. The idea of evaluating a historical game purely from its accuracy of its content, overlooks the importance of its mechanics and the way a player interacts with the historical representation (Chapman 2012). 

![](accvsauth.png)
Figure 4. Historical accuracy versus historical authenticity

This distinction is particularly important in grand strategy games, where players are able to influence political and military developments across extended historical periods. Strictly following recorded historical events could limit meaningful player decisions, while allowing unrestricted actions may undermine the historical circumstances which make up the setting. However, the systems themselves which are used to simulate historical circumstances can introduce their own inaccuracies. Assumptions within historical strategy games, include a perfect source of information, and control of resources, which simplifies the uncertainty and limitations faced by real historical leaders (De Zamaróczy 2017). Similarly, McCall (2012) recognises that a historical simulation requires the modelling of complex human behaviours which needs to be achieved though defined mechanical means, which will never truly reflect the real circumstances. Showing that these limitations around historical simulation cannot provide a complete and objective reflection of the past, and that the developers selection and design of mechanics influences the historical interpretation presented to the player.
#### 3.4 Player Agency and Strategic Depth

Player agency and strategic depth are two closely related principles of game design, particularly within grand strategy games, where players make decisions across numerous interconnected systems. Player agency refers to the ability of players to make meaningful decisions which influence the development and outcomes of a game, while strategic depth concerns the extent to which a game supports complex decision-making, long-term planning, and different strategies. However, providing players with more choices does not necessarily create greater strategic depth. 

Player agency emerges as a thoughtful balance between the actions available to the players and the constraints imposed by the game(Mateas 2001).  However, Tanenbaum (2010) challenges the linearity of this relationship, that greater freedom does not automatically equate to a greater agency, instead pushing the importance of a meaningful participation. These perspectives suggest that limiting player choices can encourage more deliberate and consequential decisions, rather than necessarily restricting the player's experience.



#### 3.5 Analysis of Existing Grand Strategy Games

Existing grand strategy games provide valuable examples of how historical accuracy, player agency, and strategic depth can be balanced through different approaches to game design. Three particularly relevant examples are Crusader Kings III (2020), Europa Universalis V (2025), and Hearts of Iron IV (2016), developed by studios within Paradox Interactive. Although these games share several fundamental characteristics, they differ in the systems they prioritise and the ways players interact with their simulated worlds.

#### 3.6 Historical Context and Representation

Which historical characteristics of the Merovingian period should influence the game's mechanics?

## 4 Product Rationale

#### 4.1 Purpose and Target Audience

#### 4.2 Choice of Product and Format

#### 4.3 Structure, Presentation and Communication

#### 4.4 Application of Research and Design


## 5 Development and Production

#### 5.1 Initial Concept and Planning

#### 5.2 Historical Setting and World Design

#### 5.3 Development of Game Mechanics and Systems

#### 5.4 Creation of the Game Design Document

#### 5.5 Challenges, Changes and Refinement


## 6 Reflection and Evaluation

#### 6.1 Evaluation of Final Product

#### 6.2 Personal Learning and Development

#### 6.3 Limitations and Future Improvements


## 7 Conclusion



## References

Alexander, L 2012, _GDC 2012: Sid Meier on how to see games as sets of interesting decisions_, Game Developer, viewed 3 November 2026, <https://www.gamedeveloper.com/design/gdc-2012-sid-meier-on-how-to-see-games-as-sets-of-interesting-decisions>.

Chapman, A 2012, _Privileging form over content: Analysing historical videogames · Journal of Digital Humanities_, Journalofdigitalhumanities.org, viewed 3 November 2026, <https://journalofdigitalhumanities.org/1-2/privileging-form-over-content-by-adam-chapman/>.

de Zamaróczy, N 2016, ‘Are we what we play? Global politics in historical strategy computer games’, _International Studies Perspectives_, vol. 18, no. 2, p. ekv010, viewed 3 November 2026, <https://doi.org/10.1093/isp/ekv010>.

Firaxis Games 2025, _Sid Meier’s Civilization VII_, 2k, viewed 3 November 2026, <https://civilization.2k.com/civ-vii/>.

Firaxis Games & Aspyr 2016, _Sid Meier’s Civilization VI_, 2k, viewed 3 November 2026, <https://civilization.2k.com/civ-vi/>.

GDCVault & Meier, S 2012, _Interesting Decisions_, Game Developers Confrence Vault, viewed 3 November 2026, <https://www.gdcvault.com/play/1015756/Do-Say-The-Right-Thing>.

Henning, P 2021, ‘“Game on!” A research project on the prussian Kriegsspiel’, _British Journal for Military History_, vol. 7, no. 2, pp. 174–183, viewed 3 November 2026, <https://journals.gold.ac.uk/index.php/bjmh/article/view/1561?>.

Hunicke, R, Leblanc, M & Zubek, R 2004, _MDA: A formal approach to game design and game research_, _Association for the Advancement of Artificial Inteligence_, viewed 3 November 2026, <https://ocs.aaai.org/Papers/Workshops/2004/WS-04-04/WS04-04-001.pdf>.

Loban, R 2017, ‘Digitising diplomacy: Grand strategy video games as an introductory tool for learning diplomacy and international relations’, _DiGRA Digital Library_, viewed 3 November 2026, <https://dl.digra.org/index.php/dl/article/view/915>.

― 2021, ‘The transformation from physical wargames to grand strategy video games, and the opportunities for deep and efficient historical wargaming experiences’, _DIGITAL CULTURE & EDUCATION_, vol. 13, no. 1, p. 2021, viewed 3 November 2026, <https://static1.squarespace.com/static/5cf15af7a259990001706378/t/6140608f9c785f4271840181/1631608981678/Loban%2B2021.pdf>.

McCall, J 2025, _» Historical simulations as problem spaces: Criticism and Classroom Use Journal of Digital Humanities_, Journalofdigitalhumanities.org, viewed 3 November 2026, <https://journalofdigitalhumanities.org/1-2/historical-simulations-as-problem-spaces-by-jeremiah-mccall/>.

Nash, J 1872, _The Autumn Manoeuvres, Officers playing at Kriegs Spiel, or the Game of War._, viewed 3 November 2026, <https://commons.wikimedia.org/wiki/File:Joseph_Nash_Kriegsspiel.png>.

Paradox Development Studio, Lab42 & Lab42 Limited 2020, _Crusader Kings 3_, Paradox Interactive, viewed 3 November 2026, <https://www.paradoxinteractive.com/games/crusader-kings-iii/about>.

Paradox Development Studio & Tantalus Media 2016, _Stellaris_, Paradox Interactive, viewed 3 November 2026, <https://www.paradoxinteractive.com/games/stellaris/about>.

Paradox Development Studios 2016, _Hearts of Iron IV_, Paradox Interactive, viewed 3 November 2026, <https://www.paradoxinteractive.com/games/hearts-of-iron-iv/about>.

Paradox Interactive 2025, ‘3D Map and UI Reveals’, _Paradox Forum_, 8 May, viewed 3 November 2026, <https://forum.paradoxplaza.com/forum/threads/3d-map-and-ui-reveals.1742852/>.

Paradox Tinto & Paradox Development Studio 2025, _Europa Universalis V_, Paradox Interactive, viewed 3 November 2026, <https://www.paradoxinteractive.com/games/europa-universalis-v/about>.

Schuurman, P 2019, ‘A game of contexts: Prussian-German professional wargames and the leadership concept of mission tactics 1870–1880’, _War in History_, vol. 28, no. 3, pp. 504–524, viewed 3 November 2026, <https://doi.org/10.1177/0968344519855104>.

Silove, N 2018, ‘Beyond the buzzword: The three meanings of “grand strategy”’, _Security Studies_, vol. 27, no. 1, pp. 27–57, viewed 3 November 2026, <https://openresearch-repository.anu.edu.au/server/api/core/bitstreams/81defc10-5119-4225-8f08-649e7d7545f7/content>.

Spring, D 2014, ‘Gaming history: Computer and video games as historical scholarship’, _Rethinking History_, vol. 19, no. 2, pp. 207–221, viewed 3 November 2026, <https://www.tandfonline.com/doi/full/10.1080/13642529.2014.973714>.
## Appendices

#### Appendix A - BLA BLa


##### Rough Structure Idea

Aim 5200 ish words

Research -- 1900
Development -- 1450
Product Rationale -- 650
Reflection -- 550
introduction -- 300
conclusion -- 200
abstract -- 100

