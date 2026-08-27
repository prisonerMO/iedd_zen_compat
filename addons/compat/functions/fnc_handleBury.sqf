#include "..\script_component.hpp"
params [
    "_objects", 
    ["_depth", 0, [0]], 
    ["_vectorDirUp", [], [[]]]
];

{
    private _ied = _x;
    private _isBury = _ied getVariable [QEXGVAR(ied,isBury), false];

    if (_isBury || _depth == 0) then {
        continue;
    };

    private _vectorDir = if (_vectorDirUp isEqualTo []) then {vectorDir _ied} else {_vectorDirUp select 0};
    private _vectorUp = if (_vectorDirUp isEqualTo []) then {vectorUp _ied} else {_vectorDirUp select 1};
    _ied setVariable [QEXGVAR(ied,bury), [_depth, _vectorDir, _vectorUp]];
    _ied setVariable [QEXGVAR(ied,isBury), true, true];

    [_ied] call EXFUNC(ied,buryIED);
} forEach _objects;
