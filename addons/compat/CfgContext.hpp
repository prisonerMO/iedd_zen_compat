//class EditableObjects; 								#inheritance forZEN editable object menu
//class EditableObjects: EditableObjects { 				#Use in menu context
class zen_context_menu_actions {
	class GVAR(main) {
		displayName = EXCSTRING(notebook,Action_Menu);
		icon = QPATHTOF(data\notebook.paa);
		condition = QUOTE(!isNull findDisplay 312);
		priority = 25;
		class GVAR(notebook) {
			icon = QPATHTOF(data\notebook.paa);
			displayName = EXCSTRING(notebook,Action_Open);
			condition = "true";
			statement = QUOTE(createDialog QQGVAR(display));
		};
		class GVAR(activate) {
			displayName = EXCSTRING(notebook,Action_Active);
			condition = QUOTE(call EXFUNC(notebook,canActivate));
			statement = QUOTE(call EXFUNC(notebook,activate));
		};
		class GVAR(explode) {
			displayName = EXCSTRING(notebook,Action_Explode);
			condition = QUOTE(call EXFUNC(notebook,canExplode));
			statement = QUOTE(call EXFUNC(notebook,explode));
		};
	};
};
