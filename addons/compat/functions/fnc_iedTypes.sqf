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
    [QEXGVAR(ied,CanisterPlastic), 0, EXLSTRING(ied,PlasticCanister_DisplayName)],
    [QEXGVAR(ied,CanisterFuel), 1, EXLSTRING(ied,FuelCanister_Green)],
    [QEXGVAR(ied,CanisterFuel), 2, EXLSTRING(ied,FuelCanister_Blue)],
    [QEXGVAR(ied,CanisterFuel), 3, EXLSTRING(ied,FuelCanister_Red)],
    [QEXGVAR(ied,CanisterFuel), 4, EXLSTRING(ied,FuelCanister_White)],
    [QEXGVAR(ied,Cardboard), 5, EXLSTRING(ied,Cardboard_DisplayName)],
    [QEXGVAR(ied,Cinder), 6, EXLSTRING(ied,Cinder_DisplayName)],
    [QEXGVAR(ied,Barrel), 7, EXLSTRING(ied,Barrel_DisplayName)],
    [QEXGVAR(ied,Barrel_Grey), 8, EXLSTRING(ied,BarrelGrey_DisplayName)],
    [QEXGVAR(ied,Metal), 9, EXLSTRING(ied,MetalBarrel_DisplayName)],
    [QEXGVAR(ied,Metal_English), 10, EXLSTRING(ied,MetalBarrelEnglish_DisplayName)],
    [QEXGVAR(ied,Bucket), 11, EXLSTRING(ied,Bucket_DisplayName)]
]
