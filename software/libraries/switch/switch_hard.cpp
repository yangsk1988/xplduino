#include "switch_hard.h"
#include "switch_core.h"
#include "mux_input.h"

extern Switch SWITCH[];


/* this routin retreive the status of the digital input linked to the
 * switch. The source is encoded in the 4 MSB bits of byte "parameter"
 */


int switch_hard(){

    for(int i=0; i < MAX_SWITCH; i++){

        byte type_source=(SWITCH[i].parameter >> 4);

        if (type_source==1){ // carte d'entrée multiplexée
            SWITCH[i].update(i, mux_retreive(SWITCH[i].DI_address));
        }
        else if (type_source==0){ // digital input de la carte
            SWITCH[i].update(i, digitalRead(SWITCH[i].DI_address));
        }
        else{

        }

    }

    return 0;

}





