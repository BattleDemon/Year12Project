# Grand Strategy Game Concept (Godot)

## Core Fantasy

> "I am an early medieval ruler trying to preserve and expand my dynasty
> during the collapse and rebuilding of post-Roman Europe."

Three pillars:

1.  Rule (manage realm and nobles)
2.  Move (armies, migration, conquest)
3.  Endure (economy, legitimacy, succession)

------------------------------------------------------------------------

## Time Period Structure

### Option A --- Migration Era (481 AD)

Pros: - More movement and uncertainty - Migration mechanics become
meaningful - Shorter history to research

Core powers: - Franks - Visigoths - Ostrogoths - Burgundians - Saxons -
Romano-Gauls

Victory: - Unite Gaul - Preserve Roman institutions - Establish dominant
dynasty

### Option B --- Merovingian Rule → Carolingian Rise (481--768)

Pros: - More political gameplay - Succession crises - More historical
progression

------------------------------------------------------------------------

## World Model

### Province System

Province: - Name - Terrain - Owner - Population - Culture - Faith -
Wealth - Development - Food - Buildings - Adjacent provinces

Example: Paris Population: 40k Culture: Gallo-Roman Faith: Nicene
Christian Development: 6 Terrain: Plains

### Political Layers

Realm - Kingdom - Duchies - Provinces

Realm stores: - Treasury - Legitimacy - Stability - Laws - Ruler -
Armies

------------------------------------------------------------------------

## Warfare

### Army Model

Army: - Soldiers - Supply - Morale - Commander - Location

Units: - Levy Infantry - Warband - Heavy Infantry - Horsemen - Archers

Stats: - Attack - Defence - Speed - Supply Use

### Battle Resolution

Power = (Unit Strength) × Morale × Terrain × Commander × Random

Battle: Engage → Casualties → Morale → Retreat

### Siege

Settlement: - Fort Level - Food - Defenders

Siege Progress: Army Strength − Fort Level

------------------------------------------------------------------------

## Economy

Resources: - Food - Gold - Manpower - Prestige

Province Produces: - Food - Timber - Iron - Taxes

Realm Consumes: - Army upkeep - Building costs - Events

------------------------------------------------------------------------

## Internal Politics

### Dynasty System

Character: - Name - Age - Traits - Claims - Relations - Children

Succession: Ruler dies → Realm divided → Continue playing

------------------------------------------------------------------------

## Progression

Institution-style progression:

-   Roman Administration
-   Royal Authority
-   Christian Influence
-   Military Reform

Unlock Conditions Example: - 50 legitimacy - 3 developed cities

------------------------------------------------------------------------

## Events

Structure: Trigger → Conditions → Options → Effects

Example: Roman nobles resist.

A: Integrate + Stability

B: Remove influence + Gold − Legitimacy

------------------------------------------------------------------------

## UI

Minimum Screens:

### Main Map

-   Province info
-   Army view
-   Realm overlay

### Realm Screen

-   Economy
-   Stability
-   Laws

### Character Screen

-   Dynasty
-   Heirs

### Army Screen

-   Recruit
-   Merge

------------------------------------------------------------------------

## Build Order

### Stage 1 --- World

-   Province objects
-   Camera
-   Province clicking
-   Selection
-   Save/load

Deliverable: Clickable map

### Stage 2 --- Realm Simulation

-   Ownership
-   Economy tick
-   Time system

Deliverable: Economy simulation

### Stage 3 --- Warfare

-   Armies
-   Movement
-   Battles

Deliverable: Kingdoms can fight

### Stage 4 --- Politics

-   Characters
-   Succession
-   Events

Deliverable: Ruler death changes gameplay

### Stage 5 --- Polish

-   UI
-   Audio
-   Balance
-   Visual feedback

------------------------------------------------------------------------

## Vertical Slice (End of Year)

Map: Northern France (\~20 provinces)

Playable: - Franks - Burgundians - Visigoths

Include: - Click provinces - Recruit army - Move army - Battle - Collect
taxes - One succession event - Win condition

Gameplay Loop:

Start ↓ Collect taxes ↓ Recruit ↓ Invade neighbour ↓ Win battle ↓ Expand
↓ Succession crisis ↓ Continue

------------------------------------------------------------------------

## Suggested Godot Architecture

Province (Node) + ProvinceData (Resource)

Army (Node) + ArmyData (Resource)

Realm (Resource)

BattleResolver (Service)

GameManager
