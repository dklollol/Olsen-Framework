_id = _this select 2;
_target = _this select 3;

if ((vehicle _target) != _target) then { //Checks if the target is in a vehicle
	if ((vehicle _target) emptyPositions "cargo" == 0) then { //Checks if vehicle has empty seats
		hint "No more room in the vehicle, try again later";
	}
	else {
		player moveincargo (vehicle _target);
		player removeAction _id;
	};
}
else {
	player setPos (getpos _target);
	player removeAction _id;
};