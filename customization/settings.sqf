setViewDistance 2500; //View distance for both the client and server

if (isServer) then {

	timeLimit = 60 * 60; //Time limit in secounds

	ADDPLAYABLETEAM(west, "WEST");
	ADDAITEAM(east, "EAST");

};