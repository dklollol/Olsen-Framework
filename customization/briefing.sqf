#include "core\briefingCore.sqf" //DO NOT REMOVE

NEWTAB("Game Mastering") //This is shown for everyone
This mission is not designed for game mastering and should only be manipulated for technical, administrative or diagnostic purposes.
ENDTAB;

NEWTAB("VI. Mission notes:") //This is shown for everyone
Modules:<br/>
<br/>
Olsen Framework V2.0
ENDTAB;

switch (side player) do { //Checks what team the player is on

case WEST: { //If player is WEST he receives this briefing

NEWTAB("V. Command & Signal:")
//Text goes here
ENDTAB;

NEWTAB("IV. Service Support:")
//Text goes here
ENDTAB;

NEWTAB("III. Execution:")
//Text goes here
ENDTAB;

NEWTAB("II. Mission:")
//Text goes here
ENDTAB;

NEWTAB("B. Friendly Forces:")
//Text goes here
ENDTAB;

NEWTAB("A. Enemy Forces:")
//Text goes here
ENDTAB;

NEWTAB("I. Situation:")
//Text goes here
ENDTAB;

}; //End of WEST case

}; //End of switch