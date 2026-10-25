#include "..\script_component.hpp"
private _ieds = _this select {typeOf _x in IEDD_CLASSES};
diag_log format ["IEDD: fnc_activateIed called with %1, _ieds: %2", _this, _ieds];
if (_ieds isNotEqualTo []) then {
    {
        if (!isNull _x) then {
            [QEXGVAR(ied,explosion), [_x]] call CBA_fnc_serverEvent;
        };
    } forEach _ieds;
};
