//**************************************************************//
//  Name    : test.pde                                          //
//  Author  : R .TISSOT                                         //
//  Date    : 23/02/2012                                        //
//  Version : 0.0                                               //
//  Notes   : Code for testing library                          //
//          :                                                   //
//****************************************************************


#include "MemoryFree.h"

char udpPayload[]="test";

void setup() {

    //start serial
    Serial.begin(115200);

    Serial.print("free RAM in kB: ");
    Serial.println(freeMemory());
    
    delay(1000);
int i=0;
	if(udpPayload[i++]=='o')
        Serial.print("t");
	if(udpPayload[i++]=='e');
        Serial.print("e");
    if(udpPayload[i++]=='s');
        Serial.print("s");
    if(udpPayload[i++]=='t');
        Serial.print("t");




}

void loop() {



}





