#include "..\script_component.hpp"
_this findIf {
    (_x isKindOf "CAManBase") && {
    alive _x && {
    !(_x getVariable [QEXGVAR(ied,isCharge), false])}}} != -1
