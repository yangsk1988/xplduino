#include "mux_input.h"

byte Mux[MUX_NUMBER];

void setup() {    // Debut du setup

    //start serial
    Serial.begin(115200);

    mux_setup();

}


void loop(){
    
    //~ Serial.print(read());
    //~ Serial.println(DATA_PIN & (1 << DATA_BIT),BIN);
    //~ if bit_is_clear(DATA_PIN, DATA_BIT)

    Mux[0]=0xFF;
    Mux[1]=0xCC;

    Serial.println("###########");

    Serial.println(retreive(0x13),DEC);

    delay(1000);
    
    
}

