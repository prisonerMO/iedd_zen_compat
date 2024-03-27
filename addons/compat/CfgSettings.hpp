class CfgSettings {
    class CBA {
        class Versioning {
            class iedd_zen {
                class dependencies {
                    //ACE will hard exit if this is missing
                    IEDD[] = {"iedd_main", REQUIRED_IEDD_VERSION, "(true)"};
                    CBA[] = {"cba_main", REQUIRED_CBA_VERSION, "(true)"};
                    ace[] = {"ace_main", REQUIRED_ACE_VERSION, "(true)"};
                    zen[] = {"'zen_main'", REQUIRED_ZEN_VERSION, "(true)"};
                };
            };
        };
    };
};
