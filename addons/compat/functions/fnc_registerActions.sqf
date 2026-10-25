// #include "..\script_component.hpp"
// /*
//  * Author: IEDD
//  * Registers IEDD's actions in Zeus Enhanced's (ZEN) right-click context menu.
//  * Only called when ZEN is loaded, see modules_zen\XEH_postInit.sqf.
//  *
//  * Arguments:
//  * None
//  *
//  * Return Value:
//  * None
//  *
//  * Public: No
//  */

// private _category = ["IEDD", "IEDD", ["x\iedd\addons\models\preview\notebook.paa"], {}, {GVAR(zenContextMenuEnabled)}] call zen_context_menu_fnc_createAction;
// private _categoryPath = [_category, [], 50] call zen_context_menu_fnc_addAction;
// private _fnc_hasIed = {_objects findIf {typeOf _x in IEDD_CLASSES} != -1};
// private _fnc_onEmptyGround = {isNull _hoveredEntity};

// private _placeIed = [
//     QGVAR(placeIed),
//     LEXLSTRING(modules,Zeus_Place_Ied),
//     "",
//     {_position call FUNC(openPlaceDialog)},
//     _fnc_onEmptyGround
// ] call zen_context_menu_fnc_createAction;
// [_placeIed, _categoryPath, 0] call zen_context_menu_fnc_addAction;

// private _activateIed = [
//     QGVAR(activateIed),
//     LEXLSTRING(modules,Zeus_Active),
//     "",
//     {[_objects] call FUNC(activateIed)},
//     _fnc_hasIed
// ] call zen_context_menu_fnc_createAction;
// [_activateIed, _categoryPath, 0] call zen_context_menu_fnc_addAction;

// private _explodeIed = [
//     QGVAR(explodeIed),
//     LEXLSTRING(modules,Zeus_Explode),
//     "",
//     {[_objects] call FUNC(explodeIed)},
//     _fnc_hasIed
// ] call zen_context_menu_fnc_createAction;
// [_explodeIed, _categoryPath, 0] call zen_context_menu_fnc_addAction;

// private _forceDefuseIed = [
//     QGVAR(forceDefuseIed),
//     LEXLSTRING(modules,Zeus_ForceDefuse),
//     "",
//     {[_objects] call FUNC(forceDefuseIed)},
//     _fnc_hasIed
// ] call zen_context_menu_fnc_createAction;
// [_forceDefuseIed, _categoryPath, 0] call zen_context_menu_fnc_addAction;

// private _fnc_hasUnburiedIed = {_objects findIf {(typeOf _x in (IEDD_CLASSES + IEDD_FAKE_CLASSES)) && {!(_x getVariable [QEGVAR(ied,isBury), false])}} != -1};
// private _fnc_hasBuriedIed = {_objects findIf {(typeOf _x in (IEDD_CLASSES + IEDD_FAKE_CLASSES)) && {_x getVariable [QEGVAR(ied,isBury), false]}} != -1};

// private _buryIed = [
//     QGVAR(buryIed),
//     LEXLSTRING(ied,IsBury),
//     "",
//     {[_objects] call FUNC(openBuryDialog)},
//     _fnc_hasUnburiedIed
// ] call zen_context_menu_fnc_createAction;
// [_buryIed, _categoryPath, 0] call zen_context_menu_fnc_addAction;

// private _digUpIed = [
//     QGVAR(digUpIed),
//     LEXLSTRING(ied,DigUp_DisplayName),
//     "",
//     {[_objects] call FUNC(digUpIed)},
//     _fnc_hasBuriedIed
// ] call zen_context_menu_fnc_createAction;
// [_digUpIed, _categoryPath, 0] call zen_context_menu_fnc_addAction;

// private _placeTrainingIed = [
//     QGVAR(placeTrainingIed),
//     LEXLSTRING(modules,Zeus_Place_Training_Ied),
//     "",
//     {[_position] call FUNC(openTrainingDialog)},
//     _fnc_onEmptyGround
// ] call zen_context_menu_fnc_createAction;
// [_placeTrainingIed, _categoryPath, 0] call zen_context_menu_fnc_addAction;

// private _fnc_hasTrainingIed = {_objects findIf {typeOf _x in IEDD_TRAINING_CLASSES} != -1};

// private _resetTrainingIed = [
//     QGVAR(resetTrainingIed),
//     LEXLSTRING(modules,Zeus_ResetTrainingIED),
//     "",
//     {},
//     _fnc_hasTrainingIed
// ] call zen_context_menu_fnc_createAction;

// private _resetTrainingRandom = [
//     QGVAR(resetTrainingRandom),
//     LEXLSTRING(ied,Random_DisplayName),
//     "",
//     {[_objects, true] call FUNC(resetTrainingIed)}
// ] call zen_context_menu_fnc_createAction;
// [_resetTrainingRandom, _categoryPath, 0] call zen_context_menu_fnc_addAction;

// private _resetTrainingKeep = [
//     QGVAR(resetTrainingKeep),
//     LEXLSTRING(ied,Keep_DisplayName),
//     "",
//     {[_objects, false] call FUNC(resetTrainingIed)}
// ] call zen_context_menu_fnc_createAction;
// [_resetTrainingKeep, _categoryPath, 0] call zen_context_menu_fnc_addAction;

// private _makeSuicideBomber = [
//     QGVAR(makeSuicideBomber),
//     LEXLSTRING(modules,Zeus_Suicide),
//     "",
//     {[_objects] call FUNC(openSuicideDialog)},
//     {_objects findIf {(_x isKindOf "CAManBase") && {alive _x} && {!(_x getVariable [QEGVAR(ied,isCharge), false])}} != -1}
// ] call zen_context_menu_fnc_createAction;
// [_makeSuicideBomber, _categoryPath, 0] call zen_context_menu_fnc_addAction;
