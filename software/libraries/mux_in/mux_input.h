#ifndef mux_input_h
#define mux_input_h

#include <avr/io.h>
#include "WProgram.h"
#include <stdio.h>

#define MUX_NUMBER 2

/// definition des macros pour piloter les pins

#define LATCH_DDR DDRB //pin8
#define LATCH_PORT PORTB
#define LATCH PINB0

#define CLOCK_DDR DDRD //pin7
#define CLOCK_PORT PORTD
#define CLOCK PIND7

#define DATA_PORT PORTD //pin6
#define DATA_PIN PIND
#define DATA_BIT PD6

#define  pull       CLOCK_PORT |= _BV(CLOCK);\
                    CLOCK_PORT &= ~_BV(CLOCK)

#define  latch_off  LATCH_PORT &= ~_BV(LATCH)

#define  latch_on   LATCH_PORT |= (1 << LATCH)


//~ byte Mux[MUX_NUMBER];

typedef struct StructAddress StructAddress;
struct StructAddress
{
    byte byteAddress;
    byte bitAddress;
};

void mux_setup(); // setup
int mux_input(void); // recupere les valeurs d'un multiplexeur
byte retreive(byte _DI_address); // recupere la valeur d'une entree


#endif
