//**************************************************************//
//  Name    : test.pde                                          //
//  Author  : R .TISSOT                                         //
//  Date    : 23/02/2012                                        //
//  Version : 0.0                                               //
//  Notes   : Code for testing library                          //
//          :                                                   //
//****************************************************************

#include "switch_core.h"
#include "switch_hard.h"
#include "mux_input.h"


Switch SWITCH[MAX_SWITCH];

#define R_DPRE0(i)              bitRead(SWITCH[i].parameter, ADDR_PRE0)
#define R_DPRE1(i)              bitRead(SWITCH[i].parameter, ADDR_PRE1)



int pin = 9;
#define High 0
#define Low 1


void setup() {

    //start serial
    Serial.begin(115200);

    delay(1000);

    SWITCH[0].init("bp_salon", 0x11, 0x00, 10); // bp_salon, information de type "on" si l'entrée est à 1, d'adresse "1", "on" si entrée à 1 plus de 10*100ms, sinon pulse.
    SWITCH[1].init("bp_cuisine", 0x11, 0x01, 10); 
    SWITCH[2].init("bp_2", 0x11, 0x02, 10); 
    SWITCH[3].init("bp_3", 0x11, 0x03, 10); 
    SWITCH[4].init("bp_4", 0x11, 0x04, 10); 
    SWITCH[5].init("bp_5", 0x11, 0x05, 10); 
    SWITCH[6].init("bp_6", 0x11, 0x06, 10); 
    SWITCH[7].init("bp_7", 0x11, 0x07, 10); 
    SWITCH[8].init("bp_8", 0x01, pin, 10); 
    // SWITCH[9].init("bp_9", 1, 2, 10); 
    // SWITCH[10].init("bp_10", 1, 2, 10); 
    // SWITCH[11].init("bp_11", 1, 2, 10); 
    // SWITCH[12].init("bp_12", 1, 2, 10); 
    // SWITCH[13].init("bp_13", 1, 2, 10); 
    // SWITCH[14].init("bp_14", 1, 2, 10); 
    // SWITCH[15].init("bp_15", 1, 2, 10); 

    pinMode(pin, INPUT);    // initialisation de la pin en mode INPUT
    digitalWrite(pin, HIGH); //pull up activé

    // switch_hard();

}

void loop() {

    delay(100);

    /* recupere les valeurs des multiplexeurs */
    mux_update();

    /* update des switchs */
    switch_hard();

}


int switch_status(byte _type, char * _name, char * _current){

    //ici, le code pourra être l'envoi sur liaison série, ou sur XPL, ou tout autre canal
    Serial.print("new state of ");
    Serial.print(_name);
    Serial.print(": ");
    Serial.println(_current);

}

int status(char * _wait){

    Serial.print("wait: ");
    Serial.print(_wait);
    Serial.print("/");
    Serial.print(SWITCH[0].isPulse(), DEC);
    Serial.print(SWITCH[0].isDoublePulse(), DEC);
    Serial.print(SWITCH[0].isOn(), DEC);
    Serial.print(SWITCH[0].isOnOSR(), DEC);
    Serial.print(SWITCH[0].isOff(), DEC);
    Serial.println(SWITCH[0].isOnOSF(), DEC);
}
