RS_woundFlag = false;

RS_chances = RS_chances - 1;

if (!(RS_chances > 0)) then {
	ace_wounds_prevtime = 1;
} else {
	ace_wounds_prevtime = (ace_wounds_prevtime * REDUCTIONMULT);
};

sleep(PROTECTIONTIME);
woundFlag = true;