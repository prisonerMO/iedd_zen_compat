#include "..\script_component.hpp"
/*
 * Author: IEDD
 * Returns the IED types available for placement via the ZEN context menu.
 * Mirrors the type list of the "Place IED" Zeus module (see ui\RcsIeds.hpp).
 *
 * Arguments:
 * None
 *
 * Return Value:
 * Array of [Class Name <STRING>, Type Index <NUMBER>, Display Name <STRING>]
 *
 * Public: No
 */

[
    [QEGVAR(ied,CanisterPlastic), 0, EXLSTRING(ied,PlasticCanister_DisplayName)],
    [QEGVAR(ied,CanisterFuel), 1, EXLSTRING(ied,FuelCanister_Green)],
    [QEGVAR(ied,CanisterFuel), 2, EXLSTRING(ied,FuelCanister_Blue)],
    [QEGVAR(ied,CanisterFuel), 3, EXLSTRING(ied,FuelCanister_Red)],
    [QEGVAR(ied,CanisterFuel), 4, EXLSTRING(ied,FuelCanister_White)],
    [QEGVAR(ied,Cardboard), 5, EXLSTRING(ied,Cardboard_DisplayName)],
    [QEGVAR(ied,Cinder), 6, EXLSTRING(ied,Cinder_DisplayName)],
    [QEGVAR(ied,Barrel), 7, EXLSTRING(ied,Barrel_DisplayName)],
    [QEGVAR(ied,Barrel_Grey), 8, EXLSTRING(ied,BarrelGrey_DisplayName)],
    [QEGVAR(ied,Metal), 9, EXLSTRING(ied,MetalBarrel_DisplayName)],
    [QEGVAR(ied,Metal_English), 10, EXLSTRING(ied,MetalBarrelEnglish_DisplayName)],
    [QEGVAR(ied,Bucket), 11, EXLSTRING(ied,Bucket_DisplayName)]
]
