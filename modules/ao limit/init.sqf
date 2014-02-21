#define ANY sideLogic

#define ADDAOMARKER(SIDE, NAME) \
_markers set [count _markers, [SIDE, NAME]];

if (!isDedicated) then {

	_markers = [];

	#include "settings.sqf"

	if ((count _markers) > 0) then {
	
		[_markers] spawn {
			
			_markers = [];
			
			{
				if ((_x select 0) == (side player) || (_x select 0) == ANY) then {
					_markers set [count _markers, (_x select 1)];	
				};
			} forEach (_this select 0);
			
			_pos = getPosATL _vehicle;
			_allowedOutside = false;
			
			while {true} do {
			
				_vehicle = (vehicle player);
				
				if (!(_vehicle isKindOf "Air")) then {
			
					_outSide = true;
				
					{
						if ([_vehicle, _x] call FNC_INAREA) exitWith {
							_outSide = false;
						};
					} forEach _markers;
					
					if (_outside) then {
						if (!(_allowedOutside)) then {
							_vehicle setPos _pos;
						};
					} else {
						_allowedOutside = false;
						_pos = getPosATL _vehicle;
					};
				
				} else {
					_allowedOutside = true;
				};
				
				sleep(0.1);
				
			};

		};
	
	};
	
};