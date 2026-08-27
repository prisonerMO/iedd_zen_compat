#include "..\script_component.hpp"
params ["_objects", "_state"];
private _ieds = _objects select {typeOf _x in (IEDD_CLASSES + IEDD_FAKE_CLASSES)};
if (_ieds isEqualTo []) exitWith {};

private _return = _ieds findIf {(_x getVariable [QEXGVAR(ied,bomb), false])} != -1;
_state == _return;
