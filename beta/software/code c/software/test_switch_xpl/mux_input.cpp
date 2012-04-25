#include "mux_input.h"


extern byte Mux[];

void mux_setup() {    // Debut du setup

    //set pin to low level before DDR
    DATA_PORT &= ~_BV(DATA_BIT);
    //~ LATCH_PORT &= ~_BV(LATCH);
    CLOCK_PORT &= ~_BV(CLOCK);

    //set pins to output so you can control the shift register
    LATCH_DDR |= _BV(LATCH);
    CLOCK_DDR |= _BV(CLOCK);

    /* turn on internal pull-up resistor for the switch */
    DATA_PORT |= _BV(DATA_BIT);

}



// recupere les valeurs d'un multiplexeur
byte mux_input(void){

    byte value = 0;

    bitWrite(value,0,bit_is_clear(DATA_PIN, DATA_BIT));
    pull;
    bitWrite(value,1,bit_is_clear(DATA_PIN, DATA_BIT));
    pull;
    bitWrite(value,2,bit_is_clear(DATA_PIN, DATA_BIT));
    pull;
    bitWrite(value,3,bit_is_clear(DATA_PIN, DATA_BIT));
    pull;
    bitWrite(value,4,bit_is_clear(DATA_PIN, DATA_BIT));
    pull;
    bitWrite(value,5,bit_is_clear(DATA_PIN, DATA_BIT));
    pull;
    bitWrite(value,6,bit_is_clear(DATA_PIN, DATA_BIT));
    pull;
    bitWrite(value,7,bit_is_clear(DATA_PIN, DATA_BIT));
    pull;

    return value;


}



// recupere la valeur d'une entree
byte mux_retreive(byte _DI_address){

    StructAddress _address;

    _address.bitAddress= _DI_address & 0x0F;
    _address.byteAddress= (_DI_address >> 4);

    return bitRead(Mux[_address.byteAddress],_address.bitAddress);

}

int mux_update(){
    /* recuperation multiplexer */
    latch;
    for(int i=0; i<MUX_NUMBER; i++){
        Mux[i]=mux_input();
        //~ Serial.println(Mux[i], BIN);
    }
}

/* Create one global object */
byte Mux[MUX_NUMBER]; 
