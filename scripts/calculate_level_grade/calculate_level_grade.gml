/// @description calculate_level_grade(max_beats, n_perfect, n_great, n_good, n_bad)
/// @function calculate_level_grade
/// @param max_beats
/// @param n_perfect
/// @param n_great
/// @param n_good
/// @param n_bad
/// @description given stats for player performance, assigns a grade and returns a string letter score
    
var max_beats		= argument0;
var n_perfect		= argument1;
var n_great			= argument2;
var n_good			= argument3;
var n_bad			= argument4;

perfect_value = 100;
great_value = 80;
good_value = 50;
bad_value = -5;

maximum_score = perfect_value * max_beats
perfect_score = perfect_value * n_perfect;
great_score = great_value * n_great;
good_score = good_value * n_good;
bad_score = bad_value * n_bad;

raw_score = perfect_score + great_score + good_score + bad_score
normalized_score = (raw_score / maximum_score) * 100  // should be between 0-100 (though could be less than 0)

if normalized_score <= 49 {
	return "F"
}
else if 50 <= normalized_score <= 52 {
	return "D-"	
}
else if 53 <= normalized_score <= 56 {
	return "D"	
}
else if 57 <= normalized_score <= 59 {
	return "D+"	
}
else if 50 <= normalized_score <= 53 {
	return "C-"	
}
else if 63 <= normalized_score <= 66 {
	return "C"	
}
else if 67 <= normalized_score <= 69 {
	return "C+"	
}
else if 70 <= normalized_score <= 72 {
	return "B-"	
}
else if 73 <= normalized_score <= 76 {
	return "B"	
}
else if 77 <= normalized_score <= 79 {
	return "B+"	
}
else if 80 <= normalized_score <= 84 {
	return "A-"	
}
else if 85 <= normalized_score <= 89 {
	return "A"	
}
else if 90 <= normalized_score <= 99 {
	return "A+"	
}
else if normalized_score == 100 {
	return "S"	
}