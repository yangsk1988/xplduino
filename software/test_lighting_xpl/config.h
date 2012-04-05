#ifndef config_h
#define config_h

#define lighting_activated
#define DEBUG_LIGHTING
#define DEBUG_ETHERNET
#define NO_EXPANDER //uncomment if we don't use an expander
//~ #define DEBUG_DIMMER
#define DEBUG_LIGHTING_XPL
#define DEBUG_INCOMING

#define DIMMER_EXPANDER

#define button_activated

#ifdef lighting_activated
#define LIGHTING_MAX 8	// maximum of light
#endif

#ifdef button_activated
#define BUTTON_MAX 8	// maximum of button
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
