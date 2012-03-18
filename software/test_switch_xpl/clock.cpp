#include "clock.h"

#include "WProgram.h"
#include <avr/io.h>
#include <avr/interrupt.h>
#include <avr/sleep.h>

#define LED_DDR   DDRD
#define LED_PORT  PORTD
#define LED       PIND4
#define LED_PIN   PIND

volatile byte c10ms=0;
volatile byte c500ms=0;
volatile byte c1000ms=0;

byte pulse_100ms=0;
byte pulse_1000ms=0;
byte pulse_500ms=0;


ISR(TIMER0_COMPA_vect){
  TCCR0A = 0;
  c10ms++;
}

void clock_setup() {

 // Serial.begin(115200);
  
LED_DDR |= _BV(LED);

TCCR0A = 0;

OCR0A=0x9C; //156

TIMSK0=(1<<OCIE0A)|(0<<TOIE0)|(0<<OCIE0B);
TCCR0A=(1<<CS02)|(0<<CS01)|(1<<CS00);
sei();
delay(1);

//~ set_sleep_mode(SLEEP_MODE_IDLE);   // sleep mode is set here

}

void clock_update() {

  pulse_100ms=0;
  pulse_1000ms=0;
  pulse_500ms=0;    
 
  if (c10ms>=10){ // 100 ms
    c500ms++;
    c1000ms++;
    c10ms=0;
    pulse_100ms=1;
  }
  
  if (c500ms>=50){ // 500 ms
    c500ms=0;
    pulse_500ms=1;
  }
  
  if (c1000ms>=100){ // 1 seconde
    c1000ms=0;
    pulse_1000ms=1;
  }
  
  if(pulse_500ms){
    LED_PIN |= _BV(LED);  
  }
  
  //~ sleep_enable();          // enables the sleep bit in the mcucr register
}

