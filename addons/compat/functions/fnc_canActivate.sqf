#include "..\script_component.hpp"
_this findIf {typeOf _x in IEDD_CLASSES && _x getVariable [QEXGVAR(ied,bomb),false]} > -1
