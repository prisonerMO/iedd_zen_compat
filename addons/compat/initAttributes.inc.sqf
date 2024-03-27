[
    "Object",
    [EXCSTRING(ied,Distance),EXCSTRING(ied,Distance_Tooltip)],
    "zen_attributes_slider",
    [0, 30, 1, false,{format ["%1%2", round(_this),"m"]}],
    {
        [QGVAR(setData),[_entity,"dist",round(_value)]] call CBA_fnc_serverEvent;
    },
    {
        [_entity,"dist"] call FUNC(getData);
    },
    {
        alive _entity && {typeOf _entity in IEDD_CLASSES}
    }
] call zen_attributes_fnc_addAttribute;

[
    "Object",
    [EXCSTRING(ied,Dud),EXCSTRING(iedd,Dud_Tooltip)],
    "zen_attributes_slider",
    [0, 1, 0.1, true],
    {
        [QGVAR(setData),[_entity,"dud",_value]] call CBA_fnc_serverEvent;
    },
    {
        [_entity,"dud"] call FUNC(getData);
    },
    {
        alive _entity && {typeOf _entity in IEDD_CLASSES}
    }
] call zen_attributes_fnc_addAttribute;

[
    "Object",
    [EXCSTRING(ied,Size),EXCSTRING(iedd,Size_Tooltip)],
    "zen_attributes_combo",
    [[
        [0, [EXCSTRING(ied,Name_Small),"Change size to small"]],
        [1, [EXCSTRING(ied,Name_Medium),"Change size to medium"]],
        [2, [EXCSTRING(ied,Name_Large),"Change size to large"]],
        [3, [EXCSTRING(ied,Name_Huge),"Change size to huge"]],
        [4, [EXCSTRING(ied,Name_Random),"Change size to random, huge exluded"]]
    ]],
    {
        [QGVAR(setData),[_entity,"size",_value]] call CBA_fnc_serverEvent;
    },
    {
        [_entity,"size"] call FUNC(getData);
    },
    {
        alive _entity && {typeOf _entity in IEDD_CLASSES}
    }
] call zen_attributes_fnc_addAttribute;
