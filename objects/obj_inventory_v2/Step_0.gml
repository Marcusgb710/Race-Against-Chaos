/// @description Insert description here
// You can write your code in this editor
#region opens and closes the inventory window also resets variables
if(keyboard_check_pressed(vk_tab))
{
	show = !show
	if(instance_exists(obj_player)){obj_player.control = !obj_player.control}
	command_type = ""
	command = ""
	adding_removing = false
	
}
#endregion


#region controls to decided if you are adding or removing an item from the inventory
if(!show){return}
if(!adding_removing)
{
	if(keyboard_check_released(ord("A")))
	{
		command_type = "ADD"
		adding_removing = true
	}
	if(keyboard_check_released(ord("S")))
	{

	}
	if(keyboard_check_released(ord("D")))
	{
		command_type = "DELETE"
		adding_removing = true
	}
	return
}
#endregion


#region keyboard input for adding items with commands
if(keyboard_check_pressed(vk_return))
{
	switch(command_type)
	{
		case "ADD":
			add_item(party_inventory, items_, command);
			break
		case "DELETE":
		remove_item(party_inventory, items_, command)
			break;
	}

	show_debug_message(command)
	
	adding_removing = false
	command = ""
	command_type = ""
	return
}
if(keyboard_check_pressed(keyboard_key))
{
	command += ansi_char(keyboard_key)
}
#endregion







