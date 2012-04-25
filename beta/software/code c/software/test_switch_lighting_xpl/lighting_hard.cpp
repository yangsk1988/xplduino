#include "lighting_hard.h"
#include "lighting_core.h"
//~ #include "mux_ouput.h"
#include "config.h"

extern Lighting LIGHTING[];
extern int lighting_status(byte _lighting_id, byte _type);
///provisoire
//~ #define MAX_LIGHTING 2
#define T_CMND 1
#define T_STAT 2
#define T_TRIG 3

int lighting_hard(){

    for(int i=0; i < LIGHTING_MAX; i++){

        if(bitRead(LIGHTING[i].status, ADDR_SP_CHANGED)){

            byte type_source=(LIGHTING[i].parameter >> 4);

            if (type_source==1){ // carte d'entrée multiplexée
                //~ if (LIGHTING[i].update(mux_retreive(LIGHTING[i].DI_address))) // si l'update renvoi une valeur >0 alors c'est qu'il y a eu un chgt
                    //~ LIGHTING_status(i, T_TRIG); //TRIG 
            
            }
            else if (type_source==2){ // dimmer
                //~ if (LIGHTING[i].update(digitalRead(LIGHTING[i].DI_address)))
                    //~ LIGHTING_status(i, T_TRIG); //TRIG 
            //~ }
            }
            else if (type_source==0){ // digital input de la carte
                digitalWrite(LIGHTING[i].DO_address, LIGHTING[i].setpoint);
                lighting_status(i, T_TRIG); //TRIG
                bitWrite(LIGHTING[i].status, ADDR_STATUS, true);
            }
            else{

            }
        bitWrite(LIGHTING[i].status, ADDR_SP_CHANGED, false); // on indique qu'on a traité le changement
        }
    }

    return 0;

}

int lighting_hard_init(){
 
    for(int i=0; i < LIGHTING_MAX; i++){

        if(LIGHTING[i].parameter >> 4 == 0) // si type PIN alors on configure la pin en sortie
        pinMode(LIGHTING[i].DO_address,OUTPUT);

    }

    return 0;
    
}

int lighting_hard_status(){

    for(int i=0; i < LIGHTING_MAX; i++){

        if(!bitRead(LIGHTING[i].status, ADDR_STATUS)){
            lighting_status(i, T_TRIG); //TRIG
            bitWrite(LIGHTING[i].status, ADDR_STATUS, true);
        }
        
    }

    return 0;

}
