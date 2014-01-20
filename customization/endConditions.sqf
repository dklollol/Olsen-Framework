CASUALITYCHECK("WEST", _westCasualty);
CASUALITYCHECK("EAST", _eastCasualty);

if (!(alive UAZ)) exitWith {
	ENDMISSION("BLUFOR WIN!");
};

if (_westCasualty >= 50) exitWith {
	ENDMISSION("OPFOR DECISIVE VICTORY<br />BLUFOR has retreated due to casualties."); 
};

if (_eastCasualty >= 75) exitWith {
	ENDMISSION("BLUFOR DECISIVE VICTORY<br />OPFOR has retreated due to casualties.");
};

if (time > timeLimit) exitWith {
	ENDMISSION("TIME LIMIT REACHED!");
};

sleep (60);