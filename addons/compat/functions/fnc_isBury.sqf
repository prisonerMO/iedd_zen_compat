#include "..\script_component.hpp"
private _ieds = _this select {typeOf _x in (IEDD_CLASSES + IEDD_FAKE_CLASSES)};
_ieds findIf {_x getVariable [QEXGVAR(ied,isBury), false]} != -1;
