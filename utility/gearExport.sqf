//This is a tool for mission making
//See "Olsen framework notes.txt" about this script

#define QUERY(ARRAY, CONDITION, VARNAME) \
_temp = []; \
{if (CONDITION) then {_temp set [count _temp, _x];};} forEach ARRAY; \
VARNAME = _temp; \
ARRAY = ARRAY - _temp;

_unit = _this select 0;
_weaps = weapons _unit;
_mags = magazines _unit;

diag_log text "case """": {";

while {count _mags != 0} do {
	QUERY(_mags, (_mags select 0) == _x, _mag);
	if (count _mag == 1) then {
		diag_log text format ["ADDMAGAZINES(""%1"", %2);", _mag select 0, count _mag];
	};
};

_wob = [_unit] call ACE_fnc_WeaponOnBackName;
if (_wob != "") then {
	diag_log text format ["ADDONBACKWEAPON(""%1"");", _wob];
};

{diag_log text format ["ADDWEAPON(""%1"");", _x];} forEach _weaps;

_backmags = [_unit] call ACE_fnc_RuckMagazinesList;
{diag_log text format ["ADDRUCKMAGAZINES(""%1"", %2);", _x select 0, _x select 1];} forEach _backmags;

_backweaps = [_unit] call ACE_fnc_RuckWeaponsList;
{diag_log text format ["ADDRUCKWEAPONS(""%1"", %2);", _x select 0, _x select 1];} forEach _backweaps;

diag_log text "};";

hint "Gear load out exported in script format to the arma2oa.RPT, use the shortcut in the utility folder :)";