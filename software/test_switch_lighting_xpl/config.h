#ifndef config_h
#define config_h

#define lighting_activated
//~ #define DEBUG_LIGHTING
//~ #define DEBUG_ETHERNET

//~ #define DEBUG_DIMMER



/// debug message xpl
//~ #define DEBUG_INCOMING
//~ #define DEBUG_OUTCOMING

#define DIMMER_EXPANDER

//~ #define DEBUG_SWITCH_XPL
//~ #define DEBUG_LIGHTING_XPL

#define button_activated

#ifdef lighting_activated
#define LIGHTING_MAX 8	// maximum of light
#endif

#ifdef button_activated
#define SWITCH_MAX 16	// maximum of button
#endif

#ifdef button_activated
#define SHUTTER_MAX 8	// maximum of shutter
#endif


#define T_CMND 1
#define T_STAT 2
#define T_TRIG 3

#define VENDOR_ID xplduino
#define DEVICE_ID xplduino

//~ 
//~ char vendor_id[8+1]={'xplduino\0'};		// vendor id
//~ char device_id[8+1]={'lighting\0'};		// device id
//~ char instance_id[18+1]={'garage\0'};	// instance id

#endif
