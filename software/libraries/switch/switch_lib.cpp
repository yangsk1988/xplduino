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
 * bibliotheque gerant les boutons poussoirs (bibliotheque switch_lib)
 * version 0.0
 *
 * init() => initialise les parametres de l'objet boutton
 * update() => sur appel de la fonction, reactualise l'etat du switch
 *
 ********************************************************************************************/


#include "WProgram.h"
#include "switch_lib.h"
#include <stdio.h>

#define TRIG 0
#define switch_lib_debug // comment this line to inhibit debug message and save memory

extern int switch_status(byte _type, char * _name, char * _current);

//constructor
Switch::Switch(){
}

int Switch::init(char *_name, byte _parameter, byte _DI_address, byte _maintained_delay)
{

    parameter=_parameter;

    //lecture du type d'entrée (niveau haut ou niveau bas) pour ajuster le flag de changement d'état.
    //evitant ainsi de detecter un faux changement d'état au premier update du switch
    W_LEVEL(not R_HIGH);

    //raz des bits d'etat
    W_PULSE(false);
    W_DPULSE(false);
    W_ON(false);
    W_ON_OSR(false);
    W_ON_OSF(false);
    W_HIGH(_parameter);
    W_TEMP(false);

    maintained_delay=_maintained_delay; // valeur pour declarer une entree en appui long
    timer_maintained=0;  // init timer detection maintien
    timer_doublepulse=0; // init timer double pulse

    DI_address=_DI_address;

    sprintf(name,"%s",_name);

    #ifdef switch_lib_debug
    Serial.print("B#");
    Serial.print(name);
    Serial.print("'-ms=");
    Serial.print(maintained_delay, DEC);
    Serial.print("-p=");
    Serial.print(DI_address, DEC);
    Serial.print("-high=");
    Serial.print(R_HIGH, BIN);
    #endif

    return 0;
}


int Switch::update(byte _new_level)
{

    W_PULSE(false);   // RAZ de la memoire appuie pulse
    W_DPULSE(false);  // RAZ de la memoire appuie double pulse
    W_ON_OSF(false);  // RAZ Front descendant 'on'
    W_ON_OSR(false);  // RAZ Front montant 'on'

    W_TEMP(_new_level);    // on stocke le niveau de l'entree temporairement

    if (R_TEMP != R_LEVEL){  // Traitement du changement d'etat de l'entree

        if (R_TEMP!=R_HIGH && !R_ON){   // cas haut => bas, relachement du switch avant d'atteindre l'etat "on"
            if(timer_doublepulse>0){
                W_DPULSE(true);  // info "appuie double pulse" pour un cycle
                switch_status(TRIG, name, "dpulse"); // envoi vers exterieur (xpl...)

                #ifdef switch_lib_debug
                Serial.print("B#dpulse-");
                Serial.println(name);
                #endif

            }else{
                W_PULSE(true);  // info "appuie pulse" pour un cycle
                timer_doublepulse=maintained_delay; // sur detection d'un pulse, on lance le timer doublepulse: si un nouveau pulse est detecté avant la fin du décompteur, ce sera un double pulse
                switch_status(TRIG, name, "pulse"); // envoi vers exterieur (xpl...)

                #ifdef switch_lib_debug
                Serial.print("B#pulse-");
                Serial.println(name);
                #endif

            }
        }
        else if (R_TEMP!=R_HIGH && R_ON){ // cas haut => bas, relachement du switch suite etat "on"
            W_ON_OSF(true);  // Front montant switch released
            switch_status(TRIG, name, "off"); // envoi vers xpl

            #ifdef switch_lib_debug
            Serial.print("B#off-");
            Serial.println(name);
            #endif

        }

        W_LEVEL(R_TEMP); // a la fin du traitement on copie le nouvel etat de l'entree

    }

    if( R_LEVEL==R_HIGH ){   //  Traitement selon etat de l'entree

        if(R_ON==0){

            timer_maintained=timer_maintained++; // incremente le compteur a chaque appel de routine tous les 100 ms

            if (timer_maintained > maintained_delay){ // si appuie sur le switch depuis plus de x ms et pas encore detecte maintenu
                W_ON(true);     // info "appuie maintenu" jusqu'au relachement du switch
                W_ON_OSR(true); // info "mode maintenu" un seul cycle

                switch_status(TRIG, name, "on"); // envoi vers xpl
                #ifdef switch_lib_debug
                Serial.print("B#on-");
                Serial.println(name);
                #endif

            }
        }

    }
    else{  // si switch released
        W_ON(false);         // RAZ de la memoire "appuie maintenu"
        timer_maintained=0;  // RAZ du compteur de duree d'appui
    }

    // gestion du timer de détection du double impulsion
    if(timer_doublepulse>0){
        timer_doublepulse--;
    }

    return 0;
}


int Switch::config(){

    #ifdef switch_lib_debug
    Serial.print("B#");
    Serial.print(name);
    Serial.print("'-ms=");
    Serial.print(maintained_delay, DEC);
    Serial.print("-p=");
    Serial.print(DI_address, DEC);
    Serial.print("-high=");
    Serial.println(R_HIGH, BIN);
    #endif

    return 0;
}

int Switch::isPulse(){

    return R_PULSE;

}

int Switch::isDoublePulse(){

    return R_DPULSE;

}

int Switch::isOn(){

    return R_ON;

}

int Switch::isOnOSR(){

    return R_ON_OSR;

}

int Switch::isOff(){

    return not R_ON;

}

int Switch::isOnOSF(){

    return R_ON_OSF;

}
