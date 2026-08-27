#include "..\script_component.hpp"
params ["_objects"];
_objects findIf {typeOf _x in IEDD_CLASSES} != -1;
