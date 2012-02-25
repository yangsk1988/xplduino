#include "switch_hard.h"
#include "switch_core.h"
#include "mux_input.h"

extern Switch SWITCH[];

int switch_hard(){

    for(int i=0; i < MAX_SWITCH; i++){

        byte type_source=(SWITCH[i].parameter >> 4);

        if (type_source==1){ // carte d'entrée multiplexée
            SWITCH[i].update(mux_retreive(SWITCH[i].DI_address));
        }
        else if (type_source==0){ // digital input de la carte
            SWITCH[i].update(digitalRead(SWITCH[i].DI_address));
        }
        else{

        }

    }

    return 0;


}





