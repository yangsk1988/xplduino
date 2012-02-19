
/********************************************************************************************
 * button_xpl
 * bibliotheque gerant la couche xpl des boutons poussoirs ( bibliotheque button_lib)
 * version 0.0
 *
 * confList() => envoie les parametres reconfigurables CONFIG_LIST STATUS en reponse � CONFIG_LIST CMND
 * trigger()  => renvoi un message xpl contenant le nom du bp et son etat sur un changement d'etat (maintien, relachement, impulsion)
 * status()   => envoie l'etat du boutton en reponse a une commande sensor.request
 * request()  => recherche le device dans la liste et renvoie son etat si trouvee
 * response() => recherche le device dans la liste et modifie ses parametres suite a un message CONFIG.RESPONSE 
 *
 ********************************************************************************************/

#include "WProgram.h"
#include "button_xpl.h"
#include "net.h"
#include "EtherShield_broadcast.h"

#define  string_P_write(string)	while(pgm_read_byte(&string[j])!='\0')\
								{\
									buf[UDP_DATA_P+i]=pgm_read_byte(&string[j]);\
									i++;\
									j++;\
								}\
								j=0;\

#define  string_write(string)	while(string[j]!='\0')\
								{\
									buf[UDP_DATA_P+i]=string[j];\
									i++;\
									j++;\
								}\
								j=0;\

extern StructButton BP[];

extern uint8_t buf[udpPayload_SIZE+1];

extern char vendor_id[8+2];		// vendor id
extern char device_id[8+2];		// device id
extern char instance_id[18+2];		// instance id

// modif: remplace Udp1 par Udp

// envoie les parametres reconfigurables CONFIG_LIST STATUS en reponse a CONFIG_LIST CMND
void button_xpl_confList(){
  
	// char buffer[180]="\0"; //148

	char vendor_id[8+1];		// vendor id
	char device_id[8+1];		// device id
	char instance_id[16+1];		// instance id

	// sprintf(buffer, "%s%s", buffer,"xpl-stat\n{\nhop=1\nsource=");
	// sprintf(buffer, "%s%s", buffer,Config.vendor_id);
	// sprintf(buffer, "%s%s", buffer,"-button.");
	// sprintf(buffer, "%s%s", buffer,Config.instance_id);
	// sprintf(buffer, "%s%s", buffer,"\ntarget=*\n}\nconfig.list\n{\nconf=device\nreconf=new\nreconf=port\nreconf=channel\n}\n");

	///Udp1.sendPacket(buffer, Config.targetIp, Config.targetPort);
	
	//~ Serial.print(millis());
	//~ Serial.println(" - SEND button_xpl  config ----> ");

}

// envoie le nouvel etat du boutton sur changement d'etat TRIG (appel de la fonction par button_lib.cpp
// void button_xpl_trigger(char * _device, char * _current){
  
	// char buffer[180]="\0"; //147

	// sprintf(buffer, "%s%s", buffer,"xpl-trig\n{\nhop=1\nsource=");
	// sprintf(buffer, "%s%s", buffer,Config.vendor_id);
	// sprintf(buffer, "%s%s", buffer,"-button.");
	// sprintf(buffer, "%s%s", buffer,Config.instance_id);
	// sprintf(buffer, "%s%s", buffer,"\ntarget=*\n}\nsensor.basic\n{\ncurrent=");
	// sprintf(buffer, "%s%s", buffer, _current);
	// sprintf(buffer, "%s%s", buffer, "\ndevice=");
	// sprintf(buffer, "%s%s", buffer, _device);
	// sprintf(buffer, "%s%s", buffer, "\n}\n");

	// Udp1.sendPacket(buffer, Config.targetIp, Config.targetPort);

	//~ Serial.print(millis());
	//~ Serial.println(" - SEND button_xpl trigger ----> ");
	// Serial.println(buffer);  

// }

const prog_uint8_t string_xpltrig[] PROGMEM = {"xpl-trig\n\0"};
const prog_uint8_t string_xplstat[] PROGMEM = {"xpl-stat\n\0"};
const prog_uint8_t string_xplcmnd[] PROGMEM = {"xpl-cmnd\n\0"};

const prog_uint8_t string_stat_source[] PROGMEM = {"{\nhop=1\nsource=gromain-\0"};
const prog_uint8_t string_stat_target[] PROGMEM = {"\ntarget=*\n}\nsensor.basic\n{\ncurrent=\0"};
const prog_uint8_t string_stat_device[] PROGMEM = {"\ndevice=\0"};
const prog_uint8_t string_stat_end[] PROGMEM = {"\n}\n\0"};

// envoie l'etat du boutton en reponse a une commande sensor.request
// TODO: ne faire qu'une seule fonction de button_xpl_status et button_xpl_trigger pour economiser de la RAM
int button_xpl_status(byte _type, char * _device, char * _current){

	int i=0;
	int j=0;

	/* construction du message */

	switch (_type)
	{
	
	case T_STAT:
		string_P_write(string_xplstat)
	break;
	
	case T_TRIG:
		string_P_write(string_xpltrig)
	break;
	
	default: 
	return 0; // error on message type, we don't send the message
	
	}

	string_P_write(string_stat_source)

	string_write(device_id)

	buf[UDP_DATA_P+i]='.';
	i++;

	string_write(instance_id)

	string_P_write(string_stat_target)

	string_write(_current)

	string_P_write(string_stat_device)

	string_write(_device)

	string_P_write(string_stat_end)

	/* envoi du message */
	SendBroadcastData(buf, i);

	// Serial.print("B#");
	// Serial.print(_device);
	// Serial.print("-");
	// Serial.println(_current);

	// sprintf(buffer, "%s%s", buffer, "\n{\nhop=1\nsource=");
	// sprintf(buffer, "%s%s", buffer, Config.vendor_id);
	// sprintf(buffer, "%s%s", buffer, "-button.");
	// sprintf(buffer, "%s%s", buffer, Config.instance_id);
	// sprintf(buffer, "%s%s", buffer, "\ntarget=*\n}\nsensor.basic\n{\ncurrent=");
	// sprintf(buffer, "%s%s", buffer, _current);
	// sprintf(buffer, "%s%s", buffer, "\ndevice=");
	// sprintf(buffer, "%s%s", buffer, _device);
	// sprintf(buffer, "%s%s", buffer, "\n}\n");

	///Udp1.sendPacket(buffer, Config.targetIp, Config.targetPort);

	//~ Serial.print(millis());
	//~ Serial.println(" - SEND button_xpl status ----> ");
	// Serial.println(buffer);  
 	return 1;
 
}

// recherche le device dans la liste et renvoie son etat si trouvee
void button_xpl_request(struct_command *_command, StructButton *_button){
  
  
 	// if(!(strcmp(_command[0].value,"current")) && (!strcmp(_command[1].name,"device")))	
	// {

	// on recherche le device a modifier
	// int position=button_xpl_find_button(_command[1].value, _button, 0);

		// if(position>=0)
		// {

			// char * _current	="unknown";

			// if(bitRead(BP[position].byte0, ADDR_PULSE))
			// {
				// sprintf(_current,"%s","pulse");
			// }
			// else if(bitRead(BP[position].byte0, ADDR_MAINTAINED))
			// {
				// sprintf(_current,"%s","on");
			// }
			// else
			// {
				// sprintf(_current,"%s","off");
			// }

			// button_xpl_status(STAT, _command[1].value, _current);

		// }
		// else
		// {
			// button_xpl_status(STAT, _command[1].value, "not-found");	//	the device is not founded
		// }
	// } 

}

// recherche le device dans la liste et modifie ses parametres suite a un message CONFIG.RESPONSE 
/*
void button_xpl_response(struct_command *_command, StructButton *_button){

	if(!(strcmp(_command[0].name,"device")) && (!strcmp(_command[1].name,"new")))	
	{

		//on recherche le device a modifier
		int position=button_xpl_find_button(_command[0].value, _button, 0);
		
		if(position>=0)
		{
			// on recherche si le nouveau nom n existe pas deja
			if(button_xpl_find_button(_command[1].value, _button, position+1)<0)
			{
			// TODO: ajouter une condition si champs vide (fin de la liste)
			// TODO: permettre de reaffecter le numero de pin (port+channel) depuis un message xpl

				//~ Serial.print("changed name of device '");
				//~ Serial.print(_button[position].name);
//~ 
				//~ sprintf(_button[position].name,"%s",_command[1].value);

				//~ Serial.print("' in position ");
				//~ Serial.print(position);
				//~ Serial.print(" to ");
				//~ Serial.println(_button[position].name);

				button_xpl_status(STAT, _command[1].value, "ok");

				// return;
			}
			else
			{
				//~ Serial.print("device name'");
				//~ Serial.print(_command[1].value);
				//~ Serial.println("' already affect to a device !");

				button_xpl_status(STAT, _command[0].value, "Er02");	//	the device is not founded or new name already assigned
			}

		}
		else
		{
			//~ Serial.print("device '");
			//~ Serial.print(_command[0].value);
			//~ Serial.println("' is not founded and can't be changed !");

			button_xpl_status(STAT, _command[0].value, "Er01");	//	the device is not founded or new name already assigned
		}

	}
}
*/
/*
// recherche le device dans la liste et modifie ses parametres suite a un message CONFIG.RESPONSE 
int button_xpl_find_button(char *_name, StructButton *_button, int first){

	// on parcourt la liste des device button en commencant par la ligne "first"
	for(int i=first; i < 4; i++){

		if(!strcmp(_name, _button[i].name))	// si device trouve alors on retourne le numero
		{
			//~ Serial.print("device '");
			//~ Serial.print(_name);
			//~ Serial.print(" ' has been found at position ");
			//~ Serial.println(i);
			return i;
		}
	}
	return -1; // si device pas trouve alors on retourne -1
}
*/
/* Create one global object */
//	button_xplClass button_xpl;



