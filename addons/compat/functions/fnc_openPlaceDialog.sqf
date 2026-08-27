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

params ["_position"];

private _types = call FUNC(iedTypes);
private _typeValues = _types apply {_x select 1};
private _typeLabels = _types apply {_x select 2};

[
    LEXLSTRING(modules,Zeus_Place_Ied),
    [
        ["COMBO", [EXLSTRING(modules,Zeus_Type), EXLSTRING(modules,Zeus_Type_Tooltip)], [_typeValues, _typeLabels, 0]],
        ["COMBO", [EXLSTRING(modules,Zeus_Variation), EXLSTRING(modules,Zeus_Ied_Var_Tooltip)], [
            [0, 1, 2, 3, 4, 5, 6],
            [
                EXLSTRING(ied,Variation_1),
                EXLSTRING(ied,Variation_2),
                EXLSTRING(ied,Variation_3),
                EXLSTRING(ied,Variation_4),
                EXLSTRING(ied,Variation_5),
                EXLSTRING(ied,Variation_X),
                EXLSTRING(ied,Name_Random)
            ],
            6
        ]],
        ["COMBO", [EXLSTRING(modules,Zeus_Size), EXLSTRING(modules,Zeus_Size_Tooltip)], [
            [0, 1, 2, 3, 4, 5],
            [
                EXLSTRING(ied,Name_Tiny),
                EXLSTRING(ied,Name_Small),
                EXLSTRING(ied,Name_Medium),
                EXLSTRING(ied,Name_Large),
                EXLSTRING(ied,Name_Huge),
                EXLSTRING(ied,Name_Random)
            ],
            3
        ]],
        ["SLIDER:PERCENT", [EXLSTRING(modules,Zeus_Dud_Category)], [0, 1, 0]],
        ["SLIDER", [EXLSTRING(modules,Zeus_Distance_Category)], [0, 30, 0]],
        ["COMBO", [EXLSTRING(modules,Zeus_Timer)], [
            [0, 1, 2],
            [
                EXLSTRING(ied,Name_Disabled),
                EXLSTRING(ied,Name_Enabled),
                EXLSTRING(ied,Name_Random)
            ],
            0
        ]],
        ["SLIDER", [EXLSTRING(modules,Zeus_TimerValue_Category), EXLSTRING(modules,Zeus_TimerValue_Tooltip)], [0, 300, (EXGVAR(ied,defaultTimerValue))]]
    ],
    FUNC(confirmPlaceIed),
    {},
    _position
] call zen_dialog_fnc_create;
