#ifndef button_xpl_h
#define button_xpl_h

#include "WProgram.h" 
#include <stdio.h>
#include <string.h>
#include "button_lib.h"

//~ #include <Udp.h>
#include "xpl.h"


//class button_xplClass {
//private:

	int  button_xpl_find_button(char *_command, StructButton *_button, int first);


//public:   

//	button_xplClass(void); // constructor

	// void button_xpl_confList();
	// void button_xpl_trigger(char * _device, char * _current);
	int button_xpl_status(byte _type, char * _device, char * _current);
	// void button_xpl_request(struct_command *_command, StructButton *_button);
	// void button_xpl_response(struct_command *_command, StructButton *_button);

//};

//extern button_xplClass button_xpl;

#endif




