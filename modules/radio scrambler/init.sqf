if (isServer) then {
	_seeds = [];
	_step = 15;
	for "_x" from 0 to 3 do {
		_seeds set [count _seeds, ceil((random (_step - 1)) + (1 + (_step * _x)))];
	};
	
	["radioSeeds", _seeds] call CBA_fnc_publicVariable; //Sends the teams random seeds for the radio frequencies
};

if (!isDedicated) then {
	waitUntil {!(isnil("radioSeeds"))};

	private["_hop", "_radioSeed"];

	switch (side player) do {
		case west: {
			_radioSeed = (radioSeeds select 0);
			_hop = 1;
		};
		case east: {
			_radioSeed = (radioSeeds select 1);
			_hop = 2;
		};
		case resistance: {
			_radioSeed = (radioSeeds select 2);
			_hop = 3;
		};
		case civilian: {
			_radioSeed = (radioSeeds select 3);
			_hop = 4;
		};	
	};

	_seed = _radioSeed;
	_freqs = [];
	for "_x" from 0 to 99 do {
		_seed = ((181 * _seed + 83) % 192);
		_freq = 30 + (_x * 4.8) + (_seed * 0.025);
		
		_freqs set [count _freqs, _freq];
	};

	["ACRE_PRC148", _freqs] call acre_api_fnc_setDefaultChannels;
	["ACRE_PRC152", _freqs] call acre_api_fnc_setDefaultChannels;
	["ACRE_PRC117F", _freqs] call acre_api_fnc_setDefaultChannels;

	_6Freqs = [];
	for "_x" from 0 to 5 do {
		_6Freqs set [count _6Freqs, (_freqs select _x)];
	};

	["ACRE_PRC119", _6Freqs] call acre_api_fnc_setDefaultChannels;

	_freqs = [];
	for "_x" from 0 to 15 do {
		_freq = 2400 + (_x * 6) + _hop;
		
		_freqs set [count _freqs, _freq];
	};

	["ACRE_PRC343", _freqs] call acre_api_fnc_setDefaultChannels;
};