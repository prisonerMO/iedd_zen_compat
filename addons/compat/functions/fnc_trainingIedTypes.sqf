#include "..\script_component.hpp"
/*
 * Author: IEDD
 * Returns the training IED types available for placement via the ZEN context menu.
 *
 * Arguments:
 * None
 *
 * Return Value:
 * Array of [Class Name <STRING>, Display Name <STRING>]
 *
 * Public: No
 */

[
    [QEXGVAR(ied,Training_CanisterPlastic), EXLSTRING(ied,Training_PlasticCanister_DisplayName)],
    [QEXGVAR(ied,Training_CanisterFuel), EXLSTRING(ied,Training_FuelCanister_DisplayName)],
    [QEXGVAR(ied,Training_Cardboard), EXLSTRING(ied,Training_Cardboard_DisplayName)],
    [QEXGVAR(ied,Training_Cinder), EXLSTRING(ied,Training_Cinder_DisplayName)],
    [QEXGVAR(ied,Training_Barrel), EXLSTRING(ied,Training_Barrel_DisplayName)],
    [QEXGVAR(ied,Training_Barrel_Grey), EXLSTRING(ied,Training_BarrelGrey_DisplayName)],
    [QEXGVAR(ied,Training_Metal), EXLSTRING(ied,Training_MetalBarrel_DisplayName)],
    [QEXGVAR(ied,Training_Metal_English), EXLSTRING(ied,Training_MetalBarrelEnglish_DisplayName)],
    [QEXGVAR(ied,Training_Bucket), EXLSTRING(ied,Training_Bucket_DisplayName)]
]
