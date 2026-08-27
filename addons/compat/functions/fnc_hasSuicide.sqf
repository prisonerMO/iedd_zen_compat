#include "..\script_component.hpp"
params ["_objects"];
_objects findIf {
    (_x isKindOf "CAManBase") && {
    alive _x && {
    !(_x getVariable [QEXGVAR(ied,isCharge), false])}}} != -1
