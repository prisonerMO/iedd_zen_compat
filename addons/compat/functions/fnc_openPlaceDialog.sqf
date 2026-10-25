#include "..\script_component.hpp"
/*
 * Author: IEDD
 * Opens the ZEN "Spawn IED" parameter dialog for the given position.
 * Confirming the dialog spawns the IED exactly at that position, see fnc_zenConfirmPlaceIed.sqf.
 *
 * Arguments:
 * 0: Position <ARRAY> (ASL, as captured by the ZEN context menu click)
 *
 * Return Value:
 * None
 *
 * Public: No
 */
private _position = AGLToASL _this;
_position set [2, 0];
private _logic = QEXGVAR(modules,ieds) createVehicleLocal _position;
[ace_player,_logic] call BIS_fnc_curatorObjectPlaced;
