enum quest {
	get_dressed,
	find_cory,
	get_coffee,
	find_jon,
}

var quest_array = [

	["Get dressed",
	0,
	 ["Find hair tie.", "Find your jacket."]
	],

	["Find Cory", 
	 -1,
	 ["Ask around town.", "Head to East Jamesoak.", "Head to the convience store."] 
	],
	
	
	["Get Cory some coffee",
	 -1,
	 ["Head to the Cafe.", "Order coffee.", "Bring the coffee back to Cory."]
	 ],
	 
	 
	["Find Jon",
	 -1,
	["Head to North Jamesoak.", "Head for the Backstreets.", "Find another way around.", "Head for Jon's house."]
	],
];

ds_quests = create_ds_grid_from_array(quest_array);
ds_quests_num = ds_grid_height(ds_quests);