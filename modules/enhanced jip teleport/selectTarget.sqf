_group = _this select 0;
_result = player;

if (!(leader _group getVariable ["frameworkDead", false]) && (leader _group != player)) then { //If the player isn't the group leader, and the group leader is alive, we can teleport to the palyer.
    _result = leader _group;
}
else
{
    _highestRanked = nil;
    _highestRank = 0;
    _closest = units _group select 0;
    {
        if (!(_x getVariable ["frameworkDead", false]) && (_x != player)) then {
            if (rankID _x > _highestRank && rankID _x < rankID player) then {
                _highestRanked = _x;
                _highestRank = rankID _x;
            };
            
            if (_x distance player < _closest distance player) then {
                _closest = _x;
            };
        }
    } forEach units _group;
    if (_highestRanked != nil) then {
        _result = _highestRanked;
    } else {
        _result = _closest;
    };
};
_result;