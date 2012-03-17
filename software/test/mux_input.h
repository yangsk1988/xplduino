#ifndef mux_input_h
#define mux_input_h

#include <avr/io.h>
#include "WProgram.h"
#include <stdio.h>

#define MUX_NUMBER 2 // nombre de multiplexeur chainés (2 par carte digital 16 in)

/// definition des macros pour piloter les pins

#define LATCH_DDR DDRD //pin8
#define LATCH_PORT PORTD
#define LATCH PIND7

#define CLOCK_DDR DDRB //pin7
#define CLOCK_PORT PORTB
#define CLOCK PINB0

#define DATA_PORT PORTB //pin6
#define DATA_PIN PINB
#define DATA_BIT PINB1

#define  pull       CLOCK_PORT |= _BV(CLOCK);\
                    CLOCK_PORT &= ~_BV(CLOCK)

#define  latch_off  LATCH_PORT &= ~_BV(LATCH)

#define  latch_on   LATCH_PORT |= (1 << LATCH)

#define  latch      LATCH_PORT &= ~_BV(LATCH);\
                    LATCH_PORT |= (1 << LATCH)

extern byte Mux[MUX_NUMBER];

typedef struct StructAddress StructAddress;
struct StructAddress
{
    byte byteAddress;
    byte bitAddress;
};

void mux_setup(); // setup
byte mux_input(void); // recupere les valeurs d'un multiplexeur
byte mux_retreive(byte _DI_address); // recupere la valeur d'une entree
int  mux_update(void); // recupere les valeurs des multiplexeurs


#endif
