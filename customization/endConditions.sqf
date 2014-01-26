CASUALTYCHECK("USMC", _westCasualty); //Stores the casualty percentage of "USMC" in _westCasualty
CASUALTYCHECK("VDV", _eastCasualty); //Stores the casualty percentage of "VDV" in _eastCasualty
 
if (!(alive UAZ)) exitWith {
	ENDMISSION("BLUFOR WIN!");
};

if (_westCasualty >= 50) exitWith {
	ENDMISSION("OPFOR DECISIVE VICTORY<br />BLUFOR has retreated due to casualties."); 
};

if (_eastCasualty >= 75) exitWith {
	ENDMISSION("BLUFOR DECISIVE VICTORY<br />OPFOR has retreated due to casualties.");
};

if (time > timeLimit) exitWith { //It is recommended that you do not remove the time limit end condition 
	ENDMISSION("TIME LIMIT REACHED!");
};

sleep (60); //You shouldn't change this unless your absolutely sure what your doing