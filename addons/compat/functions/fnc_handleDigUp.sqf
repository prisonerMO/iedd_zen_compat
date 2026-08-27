#include "..\script_component.hpp"
{
    private _ied = _x;
    private _isBury = _ied getVariable [QEXGVAR(ied,isBury), false];

    if (!_isBury) then {
        continue;
    };

    if (!isNull _ied) then {
        _ied setVariable [QEXGVAR(ied,isBury),false,true];
        private _bury = _ied getVariable "iedd_ied_bury";
        _bury params ["","_relDir","_relUp","","_pos"];        
        _pos set [2,0];       
        detach _ied;
        _ied setPosATL _pos;
        _ied setVectorDirAndUp [_relDir,_relUp];
    };
} forEach _this;
