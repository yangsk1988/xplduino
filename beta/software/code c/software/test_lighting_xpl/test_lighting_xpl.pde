//**************************************************************//
//  Name    : lighting.pde                                      //
//  Author  : R .TISSOT                                         //
//  Date    : 20/02/2012                                        //
//  Version : 0.0                                               //
//  Notes   : Code for testing lighting library                 //
//          :                                                   //
//****************************************************************

#include "config.h"	// specific project data

#include "lighting_xpl.h"
#include "lighting_core.h"
#include "lighting_hard.h"

#include "MemoryFree.h"
#include "EtherShield_broadcast.h"
#include "clock.h"
/// à remplacer gromain par xplduino
char vendor_id[8+2]={"gromain\0"};		// vendor id
char device_id[8+2]={"lighting\0"};		// device id
char instance_id[18+1]={"garage\0"};	// instance id

Lighting LIGHTING[LIGHTING_MAX];

extern byte pulse_100ms;
extern byte pulse_1000ms;
extern byte pulse_500ms;

void setup() {

    //start serial
    Serial.begin(115200);

    delay(1000);

    setup_udp();
    
    clock_setup();

    LIGHTING[0].init("grange", 0, 0x00, 10);
    LIGHTING[1].init("cuisine", 0, 0x04, 10);
    LIGHTING[2].init("lum2", 0, 0x04, 10);
    LIGHTING[3].init("lum3", 0, 0x05, 10);
    LIGHTING[4].init("lum4", 0, 0x06, 10);
    LIGHTING[5].init("lum5", 0, 0x05, 10);
    LIGHTING[6].init("lum6", 0, 0x06, 10);
    LIGHTING[7].init("lum7", 0, 0x05, 10);
    
    lighting_hard_init();
    
    delay(1000);

    Serial.print("free RAM in kB: ");
    Serial.println(freeMemory());


    LIGHTING[0].toggle(20,50,10,60);
    LIGHTING[1].toggle(0,100,10,60);
    
    //test envoi d'une commande lighting vers un autre xplduino
    lighting_xpl_cmdlighting("grange", "grenier", -1, 2);

}

void loop() {

    clock_update();

    loop_udp();

    if(pulse_100ms){



        /* update des lighting */
        lighting_hard();

        //~ Serial.println(millis()-temp);
        //~ Serial.println(millis());
    }

    if(pulse_500ms){
        lighting_hard_status();
    }

    if(pulse_1000ms){
        //~ LIGHTING[0].toggle(20,50,10,60);
        //~ LIGHTING[1].toggle(0,100,10,60);
    }
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
