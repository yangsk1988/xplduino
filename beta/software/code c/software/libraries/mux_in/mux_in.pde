#include "mux_input.h"

// byte Mux[MUX_NUMBER];

void setup() {    // Debut du setup

    //start serial
    Serial.begin(115200);

    mux_setup();

}


void loop(){


    latch;

    Mux[0]=mux_input();
    Mux[1]=mux_input();


    Mux[0]=0xFF; // 1111 1111
    Mux[1]=0xCC; // 1100 1100

    Serial.println("# retreive port 0 #");

    Serial.print(mux_retreive(0x00),DEC);
    Serial.print(mux_retreive(0x01),DEC);
    Serial.print(mux_retreive(0x02),DEC);
    Serial.print(mux_retreive(0x03),DEC);
    Serial.print(mux_retreive(0x04),DEC);
    Serial.print(mux_retreive(0x05),DEC);
    Serial.print(mux_retreive(0x06),DEC);
    Serial.println(mux_retreive(0x07),DEC);


    delay(1000);
    
    
}

