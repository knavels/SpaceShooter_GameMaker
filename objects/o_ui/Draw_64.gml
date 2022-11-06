// we use draw gui for fixed items that are always in a fixed position no matter how viewport moves

if (room == r_space)
{

#region DRAW THE PLAYER SHIP ARMOR

	var _armor_x = 8;
	var _armor_y = 8;
	var _player_ship = instance_find(o_player_ship, 0);
	var _armor_amount = 0;

	if (_player_ship != noone)
	{
		_armor_amount = _player_ship.armor;
	}

	draw_sprite(s_armor, _armor_amount, _armor_x, _armor_y);

#endregion

#region DRAW PLAYER SCORE

	draw_set_halign(fa_right);
	var _score_width = sprite_get_width(s_score);
	var _score_x = room_width - _score_width - 8;
	var _score_y = 8;

	draw_sprite(s_score, 0, _score_x, _score_y);
	draw_text(_score_x + _score_width - 3, _score_y + 1, score);
	draw_set_halign(fa_left);

#endregion

}
else
{

#region DRAW HIGH SCORE
	
	var _score_x = room_width - 8;
	var _score_y = 8;
	
	draw_set_halign(fa_right);
	draw_text(_score_x - 3, _score_y + 1, "High Score: " + string(global.high_score));
	draw_set_halign(fa_left);
	
#endregion

}