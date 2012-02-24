#include "switch_hard.h"
#include "switch_core.h"
#include "mux_input.h"

int switch_hard(){

for(int i=0; i<MAX_SWITCH){

	int type_source=(Switch[i].parameter >> 5)

	if (type_source==1){ // carte d'entrée multiplexée
		Switch[i].update(mux_retreive(Switch[i].DI_address));
	}
	else if (type_source==0){ // digital input de la carte
		Switch[i].update(0)
	}
	else{

	}

}

return 0;


}





