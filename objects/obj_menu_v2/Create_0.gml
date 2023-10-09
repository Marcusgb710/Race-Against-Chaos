/// @description Insert description here
// You can write your code in this editor


global.view_width = camera_get_view_width(view_camera[0]);
global.view_height = camera_get_view_height(view_camera[0]);
_font_size = font_get_size(Gonzobo)
option_buffer = _font_size + 5
selecting = false;
enum PAGE_NAV{
	MAIN,
	SETTINGS,
	DEBUG,
	AUDIO,
	GRAPHICS,
	CONTROLS,
	
}
_text = "";
pages = {
	main:
		[
		{
			name:"DEBUG",
			func: menu_element_type.page_transfer,
			show: false,
			goto: PAGE_NAV.DEBUG,
		},//debug
		{
			name:"SETTINGS",
			func: menu_element_type.page_transfer,
			show: true,
			goto: PAGE_NAV.SETTINGS
		},//settings
		{
			name:"EXIT",
			func: menu_element_type.script_runner,
			show: true,
		}	//exit
		]
	,
	settings: [
		{
			name:"AUDIO",
			func: menu_element_type.page_transfer,
			show: true,
			goto: PAGE_NAV.AUDIO
		},//audios
		{
			name:"GRAPHICS",
			func: menu_element_type.page_transfer,
			show: true,
			goto: PAGE_NAV.GRAPHICS
		},//graphics
		{
			name:"CONTROLS",
			func: menu_element_type.page_transfer,
			show: true,
			goto: PAGE_NAV.CONTROLS
		},//cntrols
		{
			name:"BACK",
			func: menu_element_type.page_transfer,
			show: true,
			goto: PAGE_NAV.MAIN
		}//back
		],
	audio:[
		{
			name:"MASTER",
			func: menu_element_type.slider,
			selected: false,
			lvl:1,
			show: true
		},//maser
		{
			name:"SFX",
			func: menu_element_type.slider,
			selected: false,
			lvl:2,
			show: true
		},//sfx
		{
			name:"MUSIC",
			func: menu_element_type.slider,
			selected: false,
			lvl: 3,
			show: true
		},//music
		{
			name:"BACK",
			func: menu_element_type.page_transfer,
			show: true,
			goto: PAGE_NAV.SETTINGS
		}//back
	],
	graphics:[
			{
				name: "RESOLUTION",
				func: menu_element_type.shift,
				selected: false,
				options: ["288 x 216", "864 x 648", "1296 x 972"],
				_text:"",
				show:true,
			},//resolution
			{
				name: "WINDOW MODE",
				func: menu_element_type.shift,
				selected: false,
				options:["WINDOWED", "FULLSCREEN"],
				_text: "",
				show: true
			},//window modw
			{
			name:"BACK",
			func: menu_element_type.page_transfer,
			show: true,
			goto: PAGE_NAV.SETTINGS
			}//back
		],
	controls:[
	{
		name: "UP",
		func: menu_element_type.input,
		selected: false,
		key: vk_up,
		show: true,
		_show_overlay: false,
	},//up
	{
		name: "LEFT",
		func: menu_element_type.input,
		selected: false,
		key: vk_left,
		show: true,
		_show_overlay: false,
	},//left
	{
		name: "RIGHT",
		func: menu_element_type.input,
		selected: false,
		key: vk_right,
		show: true,
		_show_overlay: false,
	},//right
	{
		name: "DOWN",
		func: menu_element_type.input,
		selected: false,
		key: vk_down,
		show: true,
		_show_overlay: false,
	},//down
	
	{
		name: "INTERACT",
		func: menu_element_type.input,
		selected: false,
		key: vk_space,
		show: true,
		_show_overlay: false,
	},
	{
			name:"BACK",
			func: menu_element_type.page_transfer,
			show: true,
			goto: PAGE_NAV.SETTINGS
	}//back
	],
	debug:[
		{
			name: "MIST HOUSE ROOM",
			_room: MistHouse,
			func: menu_element_type.debug,
			show: true
		}
		,
		{
			name: "WEAK ENEMY BATTLE",
			_room: WeakEnemy,
			func: menu_element_type.debug,
			show: true
		},
		{
			name: "STRONG ENEMY BATTLE",
			_room: StrongEnemy,
			func: menu_element_type.debug,
			show: true
		},
		{
			name: "PSI ENEMY BATTLE",
			_room: PsycheEnemy,
			func: menu_element_type.debug,
			show: true
		},
		{
			name: "MACH ENEMY BATTLE",
			_room: MachEnemy,
			func: menu_element_type.debug,
			show: true
		},
		{
			name:"BACK",
			func: menu_element_type.page_transfer,
			show: true,
			goto: PAGE_NAV.MAIN
		}//back
		
	]

	

}

_selected_level = MistHouse;
selecting_input = false
selected_key = undefined

page = pages.main

selected_menu = 1;



toggle_position = 0;

slider_x = (global.view_width / 2) + 16;

selected_option=undefined;

_shift_index = 0;
_page_array_length = array_length(page)
_debug_option_main_page = pages.main[0]
_show_overlay = false;


_slider_pos = [];


menu_init(pages, option_buffer, _page_array_length)
