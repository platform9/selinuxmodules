module pf9 1.0;

require {
        type unconfined_t;
        type usr_t;
        type useradd_t;
        class dir write;
        class file { getattr open read };
        class capability2 mac_admin;
}
#============= useradd_t ==============

#!!!! This avc is allowed in the current policy
allow useradd_t usr_t:dir write;

