#include "../script_component.hpp"
params ["_unit","_data","_player"];
[QGVAR(getData),[_unit,_data,_player]] call CBA_fnc_serverEvent;
private _data = _unit getVariable ["iedd_ied_"+_data,0];
TRACE_1("Data:",_data);
_data;
