#include "..\script_component.hpp"
/*
 * Author: IEDD
 * Marks the given IED(s) as defused, skipping the wire-cutting sequence entirely.
 * Mirrors the "all wires cut correctly" branch of fnc_cutWire.sqf.
 *
 * Arguments:
 * 0: IED objects <ARRAY of OBJECTS>
 * 1: Player to attribute the defuse to (optional) <OBJECT>
 *
 * Return Value:
 * None
 *
 * Public: Server only
 */

params ["_objects", ["_player", objNull, [objNull]]];

{
    private _bombObj = _x;

    if !(_bombObj getVariable [QEXGVAR(ied,bomb), false]) exitWith {};

    _bombObj setVariable [QEXGVAR(ied,bomb), false, true];

    {
        if !(isNull _x) then {
            deleteVehicle _x;
        };
    } forEach (_bombObj getVariable [QGVAR(wires), []]);
    _bombObj setVariable [QGVAR(wires), [], true];

    private _attachedObjects = attachedObjects _bombObj;
    private _index = _attachedObjects findIf {typeOf _x == QGVAR(Charge_Ammo)};
    if (_index > -1) then {
        deleteVehicle (_attachedObjects select _index);
    };

    private _typeOf = typeOf _bombObj;
    if (_typeOf == QEXGVAR(ied,Charge)) then {
        private _unit = attachedTo _bombObj;
        private _jipId = [QGVAR(detachAction), [_bombObj]] call CBA_fnc_globalEventJIP;
        [_jipId, _bombObj] call CBA_fnc_removeGlobalEventJIP;
        [QEXGVAR(ied,events), [_unit]] call CBA_fnc_serverEvent;
    };
    if (_typeOf == QEXGVAR(vbied,box)) then {
        private _vehicle = attachedTo _bombObj;
        [QEXGVAR(vbied,events), [_vehicle]] call CBA_fnc_serverEvent;
        private _jipId = [QEXGVAR(vbied,detachAction), [_bombObj, _vehicle]] call CBA_fnc_globalEventJIP;
        [_jipId, _bombObj] call CBA_fnc_removeGlobalEventJIP;
    };

    [QEXGVAR(ied,defused), [_player, _bombObj]] call CBA_fnc_globalEvent;
} forEach _objects;
