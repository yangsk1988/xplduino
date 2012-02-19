//**************************************************************//
//  Name    : switch.pde                                        //
//  Author  : R .TISSOT                                         //
//  Date    : 18/02/2012                                        //
//  Version : 0.0                                               //
//  Notes   : Code for testing switch library                   //
//          :                                                   //
//****************************************************************

#include "switch_lib.h"


Switch SWITCH[16];

void setup() {

    //start serial
    Serial.begin(115200);

    delay(1000);

    SWITCH[0].init("bp_salon", 1, 1, 10); // bp_salon, information de type "on" si l'entrée est à 1, d'adresse "1", "on" si entrée à 1 plus de 10*100ms, sinon pulse.
    SWITCH[1].init("bp_cuisine", 1, 2, 10); 
    SWITCH[2].init("bp_2", 1, 2, 10); 
    SWITCH[3].init("bp_3", 1, 2, 10); 
    SWITCH[4].init("bp_4", 1, 2, 10); 
    SWITCH[5].init("bp_5", 1, 2, 10); 
    SWITCH[6].init("bp_6", 1, 2, 10); 
    SWITCH[7].init("bp_7", 1, 2, 10); 
    SWITCH[8].init("bp_8", 1, 2, 10); 
    SWITCH[9].init("bp_9", 1, 2, 10); 
    SWITCH[10].init("bp_10", 1, 2, 10); 
    SWITCH[11].init("bp_11", 1, 2, 10); 
    SWITCH[12].init("bp_12", 1, 2, 10); 
    SWITCH[13].init("bp_13", 1, 2, 10); 
    SWITCH[14].init("bp_14", 1, 2, 10); 
    SWITCH[15].init("bp_15", 1, 2, 10); 

    //controle si les parametres bien pris en compte
    SWITCH[0].config();
    SWITCH[1].config();
  
}

void loop() {
    
    Serial.println("######################");
    Serial.println("simu impulsion (moins de 1000 ms)");
    SWITCH[0].update(1);
    delay(100);
    SWITCH[0].update(1);
    delay(100);
    SWITCH[0].update(1);
    delay(100);
    status("00010");
    SWITCH[0].update(0);
    status("10010");
    SWITCH[0].update(0);
    status("00010");

    Serial.println("simu appui maintenu (plus de 1000 ms)");  
    delay(100);
    SWITCH[0].update(1);
    delay(100);
    SWITCH[0].update(1);
    delay(100);
    SWITCH[0].update(1);
    delay(100);
    SWITCH[0].update(1);
    delay(100);
    SWITCH[0].update(1);
    delay(100);
    SWITCH[0].update(1);
    delay(100);
    SWITCH[0].update(1);
    delay(100);
    SWITCH[0].update(1);
    delay(100);
    SWITCH[0].update(1);
    delay(100);
    SWITCH[0].update(1);
    delay(100);
    SWITCH[0].update(1);
    status("01100");
    delay(100);
    SWITCH[0].update(1);
    status("01000");
    delay(100);
    SWITCH[0].update(0);
    status("00011");
    delay(100);
    SWITCH[0].update(0);
    status("00010");
    
    //~ while(1){};
    
    delay(5000);

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
    Serial.print(SWITCH[0].isOn(), DEC);
    Serial.print(SWITCH[0].isOnOns(), DEC);
    Serial.print(SWITCH[0].isOff(), DEC);
    Serial.println(SWITCH[0].isOffOns(), DEC);
}
