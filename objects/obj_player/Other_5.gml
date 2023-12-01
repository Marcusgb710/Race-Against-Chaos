/// @description Insert description here
// You can write your code in this editor
print(room_get_name(room))
_game.last_room_entered = _game.room
_game.room = room;
save(_game);

instance_destroy(obj_inventory)
instance_destroy(obj_quest)
instance_destroy(obj_debug)






