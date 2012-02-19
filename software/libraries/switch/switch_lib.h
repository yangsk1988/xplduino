#ifndef switch_lib_h
#define switch_lib_h

#include "WProgram.h"
#include <stdio.h>

#define ADDR_LEVEL			0	// 1=niveau precedent de l'entree
#define ADDR_PULSE			1	// 1=appui pulse
#define ADDR_MAINTAINED		2	// 1=appui maintenu
#define ADDR_MAINTAINED_ONS	3	// 1=appui maintenu, sur un cycle
#define ADDR_RELEASED 		4	// 1=switch relaché
#define ADDR_RELEASED_ONS   5	// 1=switch relaché, sur un cycle
#define ADDR_TEMP 			6	// 1=nouveau niveau de l'entree

#define ADDR_HIGH			0	// 1=LOW, inverse le sens de l’entrée
#define ADDR_PRE0			6	// fonction de pré-traitement associé
#define ADDR_PRE1			7	// fonction de pré-traitement associé


#define R_LEVEL				bitRead(status, ADDR_LEVEL)
#define R_PULSE				bitRead(status, ADDR_PULSE)
#define R_MAINTAINED		bitRead(status, ADDR_MAINTAINED)
#define R_MAINTAINED_ONS	bitRead(status, ADDR_MAINTAINED_ONS)
#define R_RELEASED 			bitRead(status, ADDR_RELEASED)
#define R_RELEASED_ONS		bitRead(status, ADDR_RELEASED_ONS)
#define R_TEMP 				bitRead(status, ADDR_TEMP)

#define R_HIGH 				bitRead(parameter, ADDR_HIGH)
#define R_PRE0 				bitRead(parameter, ADDR_HIGH)
#define R_PRE1 				bitRead(parameter, ADDR_HIGH)


#define W_LEVEL(value)				bitWrite(status, ADDR_LEVEL, value)
#define W_PULSE(value)				bitWrite(status, ADDR_PULSE, value)
#define W_MAINTAINED(value)			bitWrite(status, ADDR_MAINTAINED, value)
#define W_MAINTAINED_ONS(value)		bitWrite(status, ADDR_MAINTAINED_ONS, value)
#define W_RELEASED(value) 			bitWrite(status, ADDR_RELEASED, value)
#define W_RELEASED_ONS(value) 			bitWrite(status, ADDR_RELEASED_ONS, value)
#define W_TEMP(value) 				bitWrite(status, ADDR_TEMP, value)

#define W_HIGH(value) 				bitWrite(parameter, ADDR_HIGH, value)
#define W_PRE0(value) 				bitWrite(parameter, ADDR_HIGH, value)
#define W_PRE1(value) 				bitWrite(parameter, ADDR_HIGH, value)


class Switch
{
    public:
    
    //méthodes
    Switch();
    
    int init(char *_name, byte _parameter, byte _DI_address, byte _maintained_delay);
    int update(byte _new_level);
    int isPulse();
    int isOn();
    int isOnOns();
    int isOff();
    int isOffOns();
    

    int config();//provisoire, juste pour relire les valeurs et vérifier qu'elles sont correctement memorisees. TODO: a supprimer

    private:

    char   name[16+1];            // nom du switch
    byte   DI_address;            // entrée numérique de la fonction de pré-traitement
    byte   status;                // octet contenant les états calculés (cf détails)
    byte   mem_millis;            // compteur incrémenté tant que l’entrée est à 1 (x100ms)
    byte   parameter;             // octet contenant un ensemble de paramètres (cf détails)
    byte   maintained_delay;      // délai en ms button pour considérer comme maintenu

};




#endif




