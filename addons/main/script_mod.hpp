#define MAINPREFIX x
#define PREFIX iedd_zen

#include "script_version.hpp"

#define VERSION     MAJOR.MINOR
#define VERSION_STR MAJOR.MINOR.PATCHLVL.BUILD
#define VERSION_AR  MAJOR,MINOR,PATCHLVL,BUILD

// MINIMAL required version for the Mod. Components can specify others..
#define REQUIRED_VERSION 1.0
#define REQUIRED_ACE_VERSION {3,16,1}
#define REQUIRED_CBA_VERSION {3,16,1}
#define REQUIRED_IEDD_VERSION {1,4,2}
#define REQUIRED_ZEN_VERSION {1,0,0}