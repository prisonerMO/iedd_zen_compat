#include "..\script_component.hpp"
/*
 * Author: IEDD
 * ZEN context menu statement: digs up (unburies) the selected/hovered, buried IED(s).
 *
 * Arguments:
 * 0: Objects <ARRAY>
 *
 * Return Value:
 * None
 *
 * Public: No
 */
private _ieds = _this select {
    (typeOf _x in (IEDD_CLASSES + IEDD_FAKE_CLASSES)) &&
    {_x getVariable [QEXGVAR(ied,isBury), false]}
};
if (_ieds isNotEqualTo []) then {
    diag_log format ["IEDD: ZEN context menu statement: digs up (unburies) %1 IED(s). count: %2", _ieds, count _ieds];
    [QGVAR(handleDigUp), _ieds] call CBA_fnc_serverEvent;
};
