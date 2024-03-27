#include "\x\cba\addons\main\script_macros_common.hpp"
#include "\x\cba\addons\xeh\script_xeh.hpp"
#define AUTHOR "Prion"
#define AUTHORS {"Prisoner","Lion"}

#ifdef DISABLE_COMPILE_CACHE
    #undef PREP
    #define PREP(fncName) DFUNC(fncName) = compile preprocessFileLineNumbers QPATHTOF(functions\DOUBLES(fnc,fncName).sqf)
#else
    #undef PREP
    #define PREP(fncName) [QPATHTOF(functions\DOUBLES(fnc,fncName).sqf), QFUNC(fncName)] call CBA_fnc_compileFunction
#endif
#define DFUNC(var1) TRIPLES(ADDON,fnc,var1)
#define DEFUNC(var1,var2) TRIPLES(DOUBLES(PREFIX,var1),fnc,var2)

// IEDD Notebook
#define IEDD_PREFIX iedd
#define XADDON DOUBLES(IEDD_PREFIX,COMPONENT)
#define XGVAR(var) DOUBLES(XADDON,var)
#define EXGVAR(var1,var2) TRIPLES(IEDD_PREFIX,var1,var2)
#define QXGVAR(var) QUOTE(XGVAR(var))
#define QEXGVAR(var1,var2) QUOTE(EXGVAR(var1,var2))
#define QQXGVAR(var) QUOTE(QXGVAR(var))
#define QQEXGVAR(var1,var2) QUOTE(QEXGVAR(var1,var2))
#define IEDD_PREP(func) PREP(func); TRIPLES(XADDON,fnc,func) = DFUNC(func)
#define EXCSTRING(var1,var2) QUOTE(TRIPLES($STR,DOUBLES(IEDD_PREFIX,var1),var2))
#define XFUNC(var1) TRIPLES(IEDD_PREFIX,fnc,var1))
#define QXFUNC(var1) QUOTE(XFUNC(var1))
#define QQXFUNC(var1) QUOTE(QXFUNC(var1))
#define XFUNC_INNER(var1,var2) TRIPLES(DOUBLES(IEDD_PREFIX,var1),fnc,var2)
#define EXFUNC(var1,var2) XFUNC_INNER(var1,var2)
#define QQXFUNC_INNER(var1,var2) QUOTE(QXFUNC_INNER(var1,var2))
#define QQEXFUNC(var1,var2) QUOTE(QEXFUNC(var1,var2))