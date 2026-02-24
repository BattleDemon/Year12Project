### Description
Regions are the base layer of each Realm, which can be made up of a single or multiple regions. Regions each posses a culture and religion which enforces their stability and authority, `eg. a realm which is of Germanic faith and Saxon culture, ruling over a region of the same will have greater authority over it allowing it to more directly construct and demolish its infrastructure and extract more of its resources, while a region with completely separate faith and culture to its ruler with have much less.` 

Each region can support a maximum amount of Infrastructure determined by its terrain, region level, and capital status. With the specific infrastructure it can hold been determined by its terrain, culture, faith and by events. Each piece of infrastructure has an upkeep of money, and other resources, and in-turn they produce an income. 

The terrain of a region involves its coastal, and river status as well as its terrain type and environmental factors. With each factor giving effects or modifiers. Each region also boasts a natural resource which can be traded, or processed for more income. 

Regions also have a cultural name for each region, some based on a historical name for the region other derived from similar meanings and others completely made up if none existed and none could be derived. 
### JSON Example
```
"xxx": {

	"county_names": {
		"Culture1" : "Base Non Cultural Name",
		"Germanic": "Germanic Name",
		"Roman" : "Roman  Name",
		"gaelic" : "Gaelic Name",
		"brithonic" : "Brithonic Name",
		"gothic" : "Gothic Name",
		"basque" : "Basque Name",
		"hispanic" : "Hispanic Name"
	},

	"culture": "Culture of the Region",

	"faith": "Faith of the Region",

	"max_infrastrucure": "# of infistructure the region can have",

	"infrastrucure": [
		"Infrastructure 1",
		"Infrastructure 2",
		"Other Infrastructures ect"
	],

	"terrain": "terrain type",

	"coastal": "T/F if it is on the coast",

	"river": "T/F if it is on a river",

	"natural_resource": "the type of natural resource ",

	"modifiers": [
		"list of modifiers applied to this region"
	],

	"color_code": "#xxxxxx"
},
```
### Faiths

[[Faiths]]
### Cultures

[[Cultures]]

### Infrastructure

[[Infrastructure]]

### Terrain

[[Terrain]]
### Resources

[[Resources]]

### Modifiers

[[Modifiers]]