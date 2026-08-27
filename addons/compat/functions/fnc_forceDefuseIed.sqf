#include "..\script_component.hpp"
/*
 * Author: IEDD
 * ZEN context menu statement: marks the selected/hovered IED(s) as defused,
 * skipping the wire-cutting sequence. See EFUNC(ied,forceDefuse).
 *
 * Arguments:
 * 0: Objects <ARRAY>
 *
 * Return Value:
 * None
 *
 * Public: No
 */

params ["_objects"];

private _ieds = _objects select {typeOf _x in IEDD_CLASSES};
if (_ieds isEqualTo []) exitWith {};

[QEXGVAR(ied,forceDefuse), [_ieds, ace_player]] call CBA_fnc_serverEvent;
