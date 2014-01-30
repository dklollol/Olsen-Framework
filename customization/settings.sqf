if (isServer) then { //This scope is only for the server

	setViewDistance 2500; //View distance for the server (the ai's)

	timeLimit = 60 * 30; //Time limit in seconds - 60 seconds * 30 = 1800 seconds = 30 min 

	ADDPLAYABLETEAM(west, "USMC"); //Adds a player team called USMC on side west
	ADDAITEAM(east, "VDV"); //Adds a ai team called VDV on side east

};

if (!isDedicated) then { //This scope is only for the player

	setViewDistance 2500; //View distance for the player
	
	ace_settings_enable_vd_change = true; //Allows people to change their view distance
	ace_settings_enable_tg_change = false; //Disallows people to change their terrain grid
	missionNamespace setVariable ["ace_viewdistance_limit", 2500]; //The limit the player can change his view distance to
	
};

//This scope is for the server and the player