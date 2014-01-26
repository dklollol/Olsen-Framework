setViewDistance 2500; //View distance for both the client and server

if (isServer) then {

	timeLimit = 60 * 30; //Time limit in seconds - 60 seconds * 30 = 1800 seconds = 30 min 

	ADDPLAYABLETEAM(west, "USMC"); //Adds a player team called USMC on side west
	ADDAITEAM(east, "VDV"); //Adds a ai team called VDV on side east

};

if (!isDedicated) then {
	
	ace_settings_enable_vd_change = true; //Allows people to change their view distance
	ace_settings_enable_tg_change = false; //Disallows people to change their terrain grid
	missionNamespace setVariable ["ace_viewdistance_limit", 2500]; //The limit the player can change his view distance to
	
};