#include "..\script_component.hpp"
/*
 * Author: IEDD
 * Opens the ZEN "Spawn Training IED" parameter dialog for the given position.
 * Training IEDs are non-lethal - failed disarms pop a smoke instead of exploding.
 *
 * Arguments:
 * 0: Position <ARRAY> (ASL, as captured by the ZEN context menu click)
 *
 * Return Value:
 * None
 *
 * Public: No
 */
private _types = call FUNC(trainingIedTypes);
private _typeValues = _types apply {_x select 0};
private _typeLabels = _types apply {_x select 1};

[
    LEXLSTRING(modules,Zeus_Place_Training_Ied),
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
        ]]
    ],
    FUNC(confirmTraining),
    {},
    _this
] call zen_dialog_fnc_create;
