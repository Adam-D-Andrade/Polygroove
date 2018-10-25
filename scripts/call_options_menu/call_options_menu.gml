switch (mpos)
{
	// Adjust music volume
	case 0:  
	{
		break;
	}
	// Adjust sfx volume
	case 1:  
	{
		break;
	}
	// Back
	case 2:
	{
		audio_play_sound(sMenuChangeOption, 1, false);
		room_goto(rmMenu);
		break;
	}
	default: {
		break;	
	}
}