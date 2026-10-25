// class EditableObjects; 								#inheritance forZEN editable object menu
// class EditableObjects: EditableObjects 			#Use in menu context
class zen_context_menu_actions {
    class GVAR(main) {
        displayName = EXCSTRING(notebook,Action_Menu);
        icon = QPATHTOF(data\notebook.paa);
        condition = QUOTE(!isNull findDisplay 312);
        priority = 50;
        class GVAR(notebook) {
            icon = QPATHTOF(data\notebook.paa);
            displayName = EXCSTRING(notebook,Action_Open);
            condition = "true";
            statement = QUOTE(createDialog QQEXGVAR(notebook,display));
        };
        class GVAR(activate) {
            displayName = EXCSTRING(notebook,Action_Active);
            condition = QUOTE(_objects call FUNC(canActivate));
            statement = QUOTE(_objects call FUNC(activate));
        };
        class GVAR(explode) {
            displayName = EXCSTRING(notebook,Action_Explode);
            condition = QUOTE(_objects call FUNC(hasIed));
            statement = QUOTE(_objects call FUNC(explode));
        };
        class GVAR(placeIed) {
            displayName = EXCSTRING(modules,Zeus_Place_Ied);
            condition = QUOTE(isNull _hoveredEntity);
            statement = QUOTE(_position call FUNC(openPlaceDialog));
            //statement = QUOTE(createDialog QQEXGVAR(modules,RcsIeds));
        };
        class GVAR(defuse) {
            displayName = "TEST DEFUSE";
            condition = QUOTE(_objects call FUNC(hasIed));
            statement = QUOTE(_objects call FUNC(forceDefuse));
        };
        class GVAR(bury) {
            displayName = EXCSTRING(ied,IsBury);
            condition = QUOTE(_objects call FUNC(isNotBury));
            statement = QUOTE(_objects call FUNC(openBuryDialog));
        };
        class GVAR(digUp) {
            displayName = EXCSTRING(ied,DigUp_DisplayName);
            condition = QUOTE(_objects call FUNC(isBury));
            statement = QUOTE(_objects call FUNC(digUp));
        };
        class GVAR(placeTrainingIed) {
            displayName = EXCSTRING(modules,Zeus_Place_Training_Ied);
            condition = QUOTE(isNull _hoveredEntity);
            statement = QUOTE(_position call FUNC(openTrainingDialog));
        };
        class GVAR(resetTrainingRandom) {
            displayName = EXCSTRING(ied,Random_DisplayName);
            condition = QUOTE(_objects call FUNC(hasTrainingIed));
            statement = QUOTE([ARR_2(_objects,true)] call FUNC(resetTrainingIed));
        };
        class GVAR(resetTrainingKeep) {
            displayName = EXCSTRING(ied,Keep_DisplayName);
            condition = QUOTE(_objects call FUNC(hasTrainingIed));
            statement = QUOTE([ARR_2(_objects,false)] call FUNC(resetTrainingIed));
        };
        class GVAR(makeSuicideBomber) {
            displayName = EXCSTRING(modules,Zeus_Suicide);
            condition = QUOTE(_objects call FUNC(hasSuicide));
            statement = QUOTE(_objects call FUNC(openSuicideDialog));
        };
    };
};
