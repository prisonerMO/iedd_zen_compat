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
private _ieds = _this select {typeOf _x in IEDD_CLASSES};
if (_ieds isNotEqualTo []) then {
    [QGVAR(handleForceDefuse), [_ieds, ace_player]] call CBA_fnc_serverEvent; //ToDO
};
