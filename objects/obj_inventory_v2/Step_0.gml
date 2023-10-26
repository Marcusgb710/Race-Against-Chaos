/// @description Insert description here
// You can write your code in this editor
#region opens and closes the inventory window also resets variables
if(keyboard_check_pressed(vk_tab))
{
	show = !show
	if(instance_exists(obj_player)){obj_player.control = !obj_player.control obj_player.can_move = !obj_player.can_move}
	command_type = ""
	command = ""
	adding_removing = false
	
}
#endregion

#region A timer that allows the result of the command to appear on the screen for a second
if(close_timer >= 1)
{
	adding_removing = false;
	start_close_timer = false;
	close_timer = 0;
	command = "";
}
if(start_close_timer)
{
	close_timer += 1/60;
	return;
}
#endregion


#region controls to decided if you are adding or removing an item from the inventory
if(!show){return}
if(!adding_removing)
{
	if(keyboard_check_released(ord("A")))//add items
	{
		command_type = "ADD"
		adding_removing = true
		command = ""
		
	}
	if(keyboard_check_released(ord("S")))
	{

	}
	if(keyboard_check_released(ord("D")))//remove items
	{
		command_type = "DELETE"
		adding_removing = true
		command = ""
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
			command = add_item(party_inventory, items_, command);
			
			break
		case "DELETE":
			command = remove_item(party_inventory, items_, command);
			break;
	}

	
	start_close_timer = true
	command_type = ""
	
	return
}
if(keyboard_check_pressed(vk_backspace)){
	if(string_length(command) <= 0){return}
	
	command = string_delete(command, string_length(command), 1);
	return;
}
if(keyboard_check_pressed(keyboard_key))
{
	var _char = ansi_char(keyboard_key)
	if(array_contains(alphabet, string_upper(_char)))
	{
		command += _char
	}
	
}
#endregion







