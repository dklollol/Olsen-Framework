#define MESSAGE "You are dead.\nEntering spectator mode..."

titleText [MESSAGE, "BLACK", 0.2];
sleep 1;
titleText [MESSAGE, "BLACK FADED", 10];

waitUntil {sleep 0.2; alive player};

player setVariable ["frameworkDead", true, true]; //Tells the framework the player is dead

player setPos [0, 0, 0];
[player] join grpNull;

player setCaptive true;
player addEventHandler ["HandleDamage", {false}];
removeAllWeapons player;
removeAllItems player;
removebackpack player;

if (!spectating) then {
	[true] call acre_api_fnc_setSpectator;
	[] execVM "core\spectate.sqf";
} 
else {
	titleText [MESSAGE, "BLACK IN", 0.2];
};