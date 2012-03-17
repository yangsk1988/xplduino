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
#include "MemoryFree.h"



Switch SWITCH[MAX_SWITCH];

#define R_DPRE0(i)              bitRead(SWITCH[i].parameter, ADDR_PRE0)
#define R_DPRE1(i)              bitRead(SWITCH[i].parameter, ADDR_PRE1)


#define High 0
#define Low 1


void setup() {

    //start serial
    Serial.begin(115200);

    delay(1000);

    mux_setup();

    SWITCH[0].init("bp_salon", 0x11, 0x00, 10); // bp_salon, origine carte MUX et type "on" si l'entrée est à 1, d'adresse "0x01", "on" si entrée à 1 plus de 10*100ms, sinon pulse.
    SWITCH[1].init("bp_cuisine", 0x11, 0x01, 10); 
    SWITCH[2].init("bp_2", 0x11, 0x02, 10); 
    SWITCH[3].init("bp_3", 0x11, 0x03, 10); 
    SWITCH[4].init("bp_4", 0x11, 0x04, 10); 
    SWITCH[5].init("bp_5", 0x11, 0x05, 10); 
    SWITCH[6].init("bp_6", 0x11, 0x06, 10); 
    SWITCH[7].init("bp_7", 0x11, 0x07, 5); 
    SWITCH[8].init("bp_8", 0x11, 0x10, 10); 
    SWITCH[9].init("bp_9", 0x11, 0x11, 10); 
    SWITCH[10].init("bp_10", 0x11, 0x12, 10); 
    SWITCH[11].init("bp_11", 0x11, 0x13, 10); 
    SWITCH[12].init("bp_12", 0x11, 0x14, 10); 
    SWITCH[13].init("bp_13", 0x11, 0x15, 10); 
    SWITCH[14].init("bp_14", 0x11, 0x16, 10); 
    SWITCH[15].init("bp_15", 0x11, 0x17, 10); 

    Serial.print("free RAM in kB: ");
    Serial.println(freeMemory());



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
    Serial.println(freeMemory());
}

int switch_status_xpl(byte _id, byte _type){

    if(SWITCH[_id].status & 0x0F){
        Serial.println(freeMemory());
        Serial.print("new state of ");
        Serial.print(SWITCH[_id].name);
        Serial.print(": ");

        if(SWITCH[_id].status & 0x01){
            Serial.println("Pulse");
        }
        else if(SWITCH[_id].status & 0x02){
            Serial.println("Dpulse");
        }
        else if(SWITCH[_id].status & 0x04){
            Serial.println("High");
        }
        else if(SWITCH[_id].status & 0x08){
            Serial.println("Low");
        }
    }

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
