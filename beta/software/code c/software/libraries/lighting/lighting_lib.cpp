//      switch_lib.cpp
//      
//      Copyright 2012 Romain TISSOT CHARLOD <romain@romain-laptop>
//      
//      This program is free software; you can redistribute it and/or modify
//      it under the terms of the GNU General Public License as published by
//      the Free Software Foundation; either version 2 of the License, or
//      (at your option) any later version.
//      
//      This program is distributed in the hope that it will be useful,
//      but WITHOUT ANY WARRANTY; without even the implied warranty of
//      MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
//      GNU General Public License for more details.
//      
//      You should have received a copy of the GNU General Public License
//      along with this program; if not, write to the Free Software
//      Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston,
//      MA 02110-1301, USA.


/********************************************************************************************
 * switch_lib
 * bibliotheque gerant les éclairages (bibliotheque lighting_lib)
 * version 0.0 beta
 *
 * init() => initialise les parametres de l'objet boutton
 * update() => sur appel de la fonction, reactualise l'etat du switch
 *
 ********************************************************************************************/


#include "WProgram.h"
#include "lighting_lib.h"
/// #include "dimmer.h"

//############################### GESTION LIGHTING ##################################
extern Lighting LIGHTING[];
// extern Canal canal[];


//constructor
Lighting::Lighting(){
}

int Lighting::init(char *_name, byte _parameter, byte _DO_address, byte _fade)
{

	DO_address =_DO_address;	// affectation du n° de DO_address

	// DO_addressMode(_DO_address, OUTPUT); // DO_address mode output

	W_STATUS(false); // raz flag pour envoi nouvel etat0

	
	sprintf(_name,"%s",_name);	// namenique de la variable

	if(_fade>0) // si fade autorisée
	{
		fade=_fade;	// mode dimmer: temps de fade lors d'un changement niveau de canal (par pas de 10 ms) ex: 2 x 50 cycles de 10ms= 1s de transition
		W_FADE(true); // le fading est autorisee
	}
	else
	{
		fade=0;	// mode dans dimmer
		W_FADE(false); // le fading est interdit
	}
	
	setpoint=ETEINT;		// consigne demandee
	last_setpoint=DEFAULT;		// consigne demandee


	#ifdef NO_EXPANDER
	Serial.print("L#");
	Serial.print(name);
	Serial.print("-c=");
	Serial.print(setpoint, DEC);
	Serial.print("-t=");
	Serial.print(fade, DEC);
	Serial.print("-p=");
	Serial.println(DO_address, DEC);
	#endif

	#ifndef NO_EXPANDER
	Serial.print("L#");
	Serial.print(name);
	Serial.print("-c=");
	Serial.print(setpoint, DEC);
	Serial.print("-t=");
	Serial.println(fade, DEC);
	#endif

	return 0;
}



// name: toggle
// @param:
// byte _mini -> minimum level to applied
// byte _maxi -> maximum level to applied
// byte _fade -> fade rate to applied
// @return

// la fonction toggle est une fonction télérupteur évolué. Elle permet de basculer l'état de la lumiere entre une consigne mini et une consigne maxi.

int Lighting::toggle(byte _mini, byte _maxi, byte _fade, int _timer)
{

	#ifdef DEBUG_LIGHTING
		Serial.println("toggle debut ---");
		Serial.println(setpoint);
		Serial.println(_mini, DEC);
		Serial.println(_maxi, DEC);	
		Serial.println("--- toggle fin");
	#endif

	// si maxi = 255 alors on utilise la derniere valeur enregistre
	if(_maxi == 255){

		_maxi= constrain(last_setpoint,5,100);
		
		if(setpoint>0)
		{
			set_current(_mini, _fade);
		}
		else
		{
			set_current(_maxi, _fade);
		}
		
	}
	else{
		if(R_LAST_DIRECTION())
		{
			set_current(_mini, _fade);
		}
		else
		{
			set_current(_maxi, _fade);
		}
	}

	return 0;
	
}

// name: set_current
// @param:
// byte _new_setpoint -> new level to applied
// byte _fade -> fade rate to applied
// @return

// la fonction set_current permet d'appliquer une nouvelle consigne à la lumière. Dans cette fonction, on met en forme les paramètres pour être compatible.


int Lighting::set_current(byte _new_setpoint, byte _fade)	// force une nouvelle current sans tenir compte de la current actuelle
{

	// mise en forme bornage des paramètres
	_fade=constrain( _fade, 0, 255);
	_new_setpoint=constrain(_new_setpoint, 0, 100);

	// la nouvelle consigne est-elle différente de l'actuelle ?
	if(setpoint != _new_setpoint){

		//~ if(LIGHTING[_id].setpoint > _new_setpoint){W_LAST_DIRECTION(true);}else{W_LAST_DIRECTION(false);};
		W_LAST_DIRECTION(_new_setpoint > setpoint);
		
		#ifdef DEBUG_LIGHTING
		Serial.print("sens=");
		Serial.println(R_LAST_DIRECTION());
		#endif
		
		setpoint=_new_setpoint; // nouvelle consigne

		if(R_FADE()){ // si variation autorisee par la configuration de la lampe

			if(_fade > 0){
				/// dimmer_set_current(_new_setpoint, _fade); // on applique le fade rate passé en paramètre car non nul
			}
			else{
				/// dimmer_set_current(_new_setpoint, 2); // on applique le fade rate par défaut
			}
		}
		else //si variation interdite
		{
			///dimmer_set_current(_new_setpoint, 0); // no fade
		}

		W_STATUS(false); // raz flag pour envoi nouvel etat

		fade=_fade;

	return 0;

	}




		#ifdef DEBUG_LIGHTING
		//~ light_message(_light);
		#endif

	return 1;

}


int Lighting::extinction_light(boolean _pulse)
{

	//~ switch (_light.mode) {
//~ 
		//~ case 0: // cas mode classique

			// if( _light.setpoint && _pulse){
				// _light.on.duree=_light.on.duree++;
			// }	// incremente le compteur de temps d'allightage si lighting allightee et pulse 1 seconde

			// if( _light.on.duree == (_light.on.max - _light.on.alerte) && _light.current!=ETEINT){
				// _light.current=ETEINT;
				// Serial.print("alerte OFF auto de ");
				// Serial.println(_light.name);
			// }
			
			// if( _light.on.duree == (_light.on.max - _light.on.alerte +1) && _light.current!=ALLIGHT){
				// _light.current=ALLIGHT;
				// Serial.print("alerte ON auto de ");
				// Serial.println(_light.name);
			// }
			
			// if( _light.on.duree >= _light.on.max && _light.current!=ETEINT){
				// _light.setpoint=ETEINT;
				// _light.current=_light.setpoint;	// demande l'application de la nouvelle current
				// _light.on.duree=0;
				// light_message(_light);
			// }
					
			//~ break;
				//~ 
		//~ case 1:
							
				
		//~ break;
		
	//~ }

	return 0;
}


void Lighting::post()		// permet la commande direct de la lighting en fonction de la current
{

	 // switch (_light.mode) {

		// case 0: // cas mode classique


#ifdef NO_EXPANDER
			if(_light.setpoint>0){

				digitalWrite(_light.DO_address, HIGH);

				}
			else{

				digitalWrite(_light.DO_address, LOW);
	 		}
#endif
		// break;
		
		// case 1: // cas mode dimmer
				
			
		// break;
	
	// }

	// return;
}


int Lighting::stop()		// force de l'arret de la variation
{

	/// last_setpoint=setpoint=dimmer_stop();

	return 0;
}






