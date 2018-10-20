/// @description Init Room Times
    
global.StartTime = current_time;
BestTimeReal = 0;

LevelTimeString = 0;                                //The current time of the room as a string
BestTimeString = 0;                                 //The Best time of that room as a string
    
//LevelTimeStringKey = room_get_name(room);           //The key for ds map for the string value of the room time
//LevelTimeRealKey = room_get_name(room) + "Real";    //The key for ds map for the real value of the room time
    
//Reset time variables on the start of a room
steps = 0;
milliseconds = 0;
seconds = 0;
minutes = 0;
    
//reset the string time variables on room start
draw_milliseconds = "00";
draw_seconds = "00";
draw_minutes = "00";  

//if there is data in the ds map, we have finished the level before
/*
if (SaveDataGetValue(LevelTimeRealKey) != undefined){
        
    //set the best time string to the data in the map
    BestTimeString = SaveDataGetValue(LevelTimeStringKey);
    BestTimeReal = SaveDataGetValue(LevelTimeRealKey);
} 

*/
    


