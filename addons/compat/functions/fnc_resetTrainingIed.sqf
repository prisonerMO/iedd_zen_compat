#include "..\script_component.hpp"
/*
 * Author: IEDD
 * ZEN context menu statement: resets the selected/hovered training IED(s),
 * reusing the same rearm logic as the player-facing "Reset" interact action.
 *
 * Arguments:
 * 0: Objects <ARRAY>
 * 1: Use random variation <BOOL>
 *
 * Return Value:
 * None
 *
 * Public: No
 */

params ["_objects", "_useRandom"];
diag_log format ["IEDD: fnc_resetTrainingIed called with %1, _objects: %2, _useRandom: %3", _this, _objects, _useRandom];
{
    [_x, _useRandom] call EXFUNC(ied,resetAction);
} forEach (_objects select {typeOf _x in IEDD_TRAINING_CLASSES});
