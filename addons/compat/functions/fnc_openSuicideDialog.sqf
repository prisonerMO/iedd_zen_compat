#include "..\script_component.hpp"
/*
 * Author: IEDD
 * Opens the ZEN "Make Suicide Bomber" parameter dialog for the selected/hovered,
 * eligible unit(s). Mirrors the interactive Zeus "Set Suicide" module's controls.
 *
 * Arguments:
 * 0: Objects <ARRAY>
 *
 * Return Value:
 * None
 *
 * Public: No
 */
private _ieds = _this select {
    (_x isKindOf "CAManBase") &&
    {alive _x} &&
    {!(_x getVariable [QEGVAR(ied,isCharge), false])}
};
if (_ieds isEqualTo []) exitWith {};

private _reference = _ieds select 0;
private _defaultSides = [west, east, independent, civilian] - [side group _reference];

[
    localize EXLSTRING(modules,Zeus_Suicide),
    [
        ["COMBO", [EXLSTRING(modules,Zeus_Variation), EXLSTRING(modules,Zeus_Ied_Var_Tooltip)], [
            [0, 1, 2, 3, 4, 5],
            [
                EXLSTRING(ied,Variation_1),
                EXLSTRING(ied,Variation_2),
                EXLSTRING(ied,Variation_3),
                EXLSTRING(ied,Variation_4),
                EXLSTRING(ied,Variation_5),
                EXLSTRING(ied,Name_Random)
            ],
            5
        ]],
        ["COMBO", [EXLSTRING(modules,Zeus_Size), EXLSTRING(modules,Zeus_Size_Tooltip)], [
            [0, 1, 2, 3, 4],
            [
                EXLSTRING(ied,Name_Tiny),
                EXLSTRING(ied,Name_Small),
                EXLSTRING(ied,Name_Medium),
                EXLSTRING(ied,Name_Large),
                EXLSTRING(ied,Name_Random)
            ],
            2
        ]],
        ["SLIDER:PERCENT", [EXLSTRING(modules,Zeus_Dud_Category)], [0, 1, 0]],
        ["SLIDER", [EXLSTRING(modules,Zeus_Act_Category), EXLSTRING(ied,DistanceActivate_Tooltip)], [0, 1000, 300]],
        ["SLIDER", [EXLSTRING(modules,Zeus_Exp_Category), EXLSTRING(ied,DistanceExplosion_Tooltip)], [0, 50, 15]],
        ["COMBO", [EXLSTRING(modules,Zeus_Dms_Category), EXLSTRING(ied,isDeadManSwitch_Description)], [
            [0, 1],
            [EXLSTRING(ied,Name_Disabled), EXLSTRING(ied,Name_Enabled)],
            0
        ]],
        ["SIDES", [EXLSTRING(modules,Zeus_Sides_Category), EXLSTRING(ied,Sides_Description)], _defaultSides]
    ],
    FUNC(confirmSuicide),
    {},
    _ieds
] call zen_dialog_fnc_create;
