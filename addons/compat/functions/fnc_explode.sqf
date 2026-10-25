#include "..\script_component.hpp"
private _ieds = _this select {typeOf _x in IEDD_CLASSES};
if (_ieds isNotEqualTo []) then {
    {
        [QEXGVAR(modules,explode), [_x]] call CBA_fnc_serverEvent;
    } forEach _ieds;
};
