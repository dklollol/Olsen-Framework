#include "settings.sqf"

if (!isDedicated) then {
	ace_wounds_prevtime = (REVIVETIME); //The time in seconds you have to be revived after a critical injury before permanently dying
	
	RS_chances = CHANCES;
	
	RS_woundFlag = false;
	
	//"ace_sys_wounds_rev" is called when the player is critical injured and handles the extended revive script
	["ace_sys_wounds_rev", {[] execVM "modules\extended revive\wounded.sqf";}] call CBA_fnc_addEventhandler;
	
	//"hit" makes the player killable while unconscious
	_hitEH = player addEventHandler ["hit", {
		if ([player] call ace_sys_wounds_fnc_isUncon) then { //Check if the player is unconscious and takes enough damage to be killed
			if ((_this select 2) > 0.1) then {
				if (RS_woundFlag) then {
					player setVariable ["ace_w_revive", -1]; //Takes the player out of unconsciousness
					player setDamage 1; //Kills the player
					player removeEventHandler ["hit", _hitEH]; //Removes the "hit" eventhandler
				};
			};
		};
	}];
};