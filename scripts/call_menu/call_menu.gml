// placeholder

switch (mpos)
{
	// Start game
	case 0:  
	{
		room_goto_next();
		break;
	}
	// Level Select
	case 1:
	{
		break;
	}
	// Options
	case 2:
	{
		break;
	}
	// Quit
	case 3:
	{
		game_end();
		break;
	}
	default: {
		break;	
	}
}