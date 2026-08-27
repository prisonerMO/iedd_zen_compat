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
    [QEGVAR(ied,Training_CanisterPlastic), EXLSTRING(ied,Training_PlasticCanister_DisplayName)],
    [QEGVAR(ied,Training_CanisterFuel), EXLSTRING(ied,Training_FuelCanister_DisplayName)],
    [QEGVAR(ied,Training_Cardboard), EXLSTRING(ied,Training_Cardboard_DisplayName)],
    [QEGVAR(ied,Training_Cinder), EXLSTRING(ied,Training_Cinder_DisplayName)],
    [QEGVAR(ied,Training_Barrel), EXLSTRING(ied,Training_Barrel_DisplayName)],
    [QEGVAR(ied,Training_Barrel_Grey), EXLSTRING(ied,Training_BarrelGrey_DisplayName)],
    [QEGVAR(ied,Training_Metal), EXLSTRING(ied,Training_MetalBarrel_DisplayName)],
    [QEGVAR(ied,Training_Metal_English), EXLSTRING(ied,Training_MetalBarrelEnglish_DisplayName)],
    [QEGVAR(ied,Training_Bucket), EXLSTRING(ied,Training_Bucket_DisplayName)]
]
