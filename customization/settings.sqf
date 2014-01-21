setViewDistance 2500; //View distance for both the client and server

if (isServer) then {

	timeLimit = 60 * 60; //Time limit in secounds

	ADDPLAYABLETEAM(west, "WEST");
	ADDAITEAM(east, "EAST");

};

if (!isDedicated) then {
	
	ace_settings_enable_vd_change = true; //Allows people to change their view distance
	ace_settings_enable_tg_change = false; //Disallows people to change their terrain grid
	missionNamespace setVariable ["ace_viewdistance_limit", 2500]; //The limit the player can change his view distance too
	
};