_veh = _this select 0;
_type = _this select 1;

switch (_type) do {

	case "HUMMVEE": {
		clearMagazineCargo _veh;
		clearWeaponCargo _veh;
		_veh addMagazineCargo ["ACE_30Rnd_556x45_S_Stanag", 20];
		_veh addMagazineCargo ["HandGrenade_West", 10];
		_veh addMagazineCargo ["SmokeShell", 10];
	};
	
	case "UAZ": {
		_veh addMagazineCargo ["30Rnd_545x39_AK", 20];
		_veh addMagazineCargo ["HandGrenade_East", 10];
	};
	
};