switch (mpos)
{
	// Start game
	case 0:  
	{
		oMenuMusicPlayer.persistent = false;
		audio_stop_all();
		audio_play_sound(sMenuSelect,1,false);
		room_goto(rmFirst);
		break;
	}
	// Options
	case 1:
	{
		audio_play_sound(sMenuChangeOption, 1, false);
		room_goto(rmOptions);
		break;
	}
	// Quit
	case 2:
	{
		game_end();
		break;
	}
	default: {
		break;	
	}
}