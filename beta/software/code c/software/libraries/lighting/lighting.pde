//**************************************************************//
//  Name    : lighting.pde                                      //
//  Author  : R .TISSOT                                         //
//  Date    : 20/02/2012                                        //
//  Version : 0.0                                               //
//  Notes   : Code for testing lighting library                 //
//          :                                                   //
//****************************************************************


#include "lighting_xpl.h"
#include "lighting_core.h"
#include "lighting_hard.h"

Lighting LIGHTING[2];

void setup() {

    //start serial
    Serial.begin(115200);

    delay(1000);

    LIGHTING[0].init("lum_salon", 0, 0x00, 10);
    LIGHTING[1].init("lum_cuisine", 0, 0x04, 10);
    
    lighting_hard_init();
    
    delay(1000);

//~ LIGHTING[1].new_setpoint(80,10);
}

void loop() {


    LIGHTING[0].toggle(20,50,10,60);
    LIGHTING[1].toggle(0,100,10,60);
    
    lighting_hard();

    delay(1000);


}


// int switch_status(byte _type, char * _name, char * _current){

    // ici, le code pourra être l'envoi sur liaison série, ou sur XPL, ou tout autre canal
    // Serial.print("new state of ");
    // Serial.print(_name);
    // Serial.print(": ");
    // Serial.println(_current);

// }

// int status(char * _wait){
    
    // Serial.print("wait: ");
    // Serial.print(_wait);
    // Serial.print("/");
    // Serial.print(SWITCH[0].isPulse(), DEC);
    // Serial.print(SWITCH[0].isOn(), DEC);
    // Serial.print(SWITCH[0].isOnOns(), DEC);
    // Serial.print(SWITCH[0].isOff(), DEC);
    // Serial.println(SWITCH[0].isOffOns(), DEC);
// }
