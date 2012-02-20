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

int pin = 7;
#define High 0
#define Low 1


void setup() {

    //start serial
    Serial.begin(115200);

    delay(1000);

    SWITCH[0].init("bp_salon", 1, 1, 10); // bp_salon, information de type "on" si l'entrée est à 1, d'adresse "1", "on" si entrée à 1 plus de 10*100ms, sinon pulse.
    SWITCH[1].init("bp_cuisine", High, 2, 5); 
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

    pinMode(pin, INPUT);    // initialisation de la pin en mode INPUT
    digitalWrite(pin, HIGH); //pull up activé

}

void loop() {
    
    Serial.println("# simu impulsion (moins de 1000 ms)");
    status("A000010");
    SWITCH[0].update(0);
    delay(100);
    status("A000010");
    SWITCH[0].update(0);
    delay(100);
    status("A000010");
    SWITCH[0].update(0);
    delay(100);
    status("A000010");
    SWITCH[0].update(1);
    delay(100);
    status("A000010");
    SWITCH[0].update(1);
    delay(100);
    SWITCH[0].update(1);
    status("A000010");
    delay(100);
    SWITCH[0].update(0);
    status("B100010");
    delay(100);
    SWITCH[0].update(0);
    status("C000010");
    
    // simulation d'une pause
    delay(100);
    SWITCH[0].update(0);
    delay(100);
    SWITCH[0].update(0);
    delay(100);
    SWITCH[0].update(0);
    
    Serial.println("# simu double impulsion (moins de 1000 ms)");
    SWITCH[0].update(1);
    delay(100);
    SWITCH[0].update(1);
    delay(100);
    SWITCH[0].update(1);
    delay(100);
    status("D000010");
    SWITCH[0].update(0);
    status("E010010");
    SWITCH[0].update(0);
    status("F000010");

    // simulation d'une pause
    delay(100);
    SWITCH[0].update(0);
    delay(100);
    SWITCH[0].update(0);
    delay(100);
    SWITCH[0].update(0);
    delay(100);
    SWITCH[0].update(0);
    delay(100);
    SWITCH[0].update(0);
    delay(100);
    SWITCH[0].update(0);
    delay(100);
    SWITCH[0].update(0);
    delay(100);
    SWITCH[0].update(0);
    delay(100);
    SWITCH[0].update(0);

    Serial.println("# simu appui maintenu (plus de 1000 ms)");  
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
    status("G001100");
    delay(100);
    SWITCH[0].update(1);
    status("H001000");
    delay(100);
    SWITCH[0].update(0);
    status("I000011");
    delay(100);
    SWITCH[0].update(0);
    status("J000010");
    
    Serial.print(digitalRead(pin));
    
    while(1){
        
    delay(100);
    SWITCH[1].update(digitalRead(pin));
        
    };
    
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
    Serial.print(SWITCH[0].isDoublePulse(), DEC);
    Serial.print(SWITCH[0].isOn(), DEC);
    Serial.print(SWITCH[0].isOnOSR(), DEC);
    Serial.print(SWITCH[0].isOff(), DEC);
    Serial.println(SWITCH[0].isOnOSF(), DEC);
}
