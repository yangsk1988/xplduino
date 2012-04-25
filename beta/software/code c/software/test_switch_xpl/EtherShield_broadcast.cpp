/*
 * Arduino ENC28J60 Ethernet shield UDP broadcast client
 */
#include "EtherShield_broadcast.h"
//~ #include "xpl.h"
//~ #include "parserXpl.h"
#include "config.h"
#include "WProgram.h"

#include "MemoryFree.h"
// Note: This software implements a web server and a web browser.
// The web server is at "myip" 
// 
// Please modify the following lines. mac and ip have to be unique
// in your local area network. You can not have the same numbers in
// two devices:
// how did I get the mac addr? Translate the first 3 numbers into ascii is: TUX
static uint8_t mymac[6] = {
  0x54,0x55,0x58,0x10,0x00,0x25};

static uint8_t myip[4] = {
  192,168,1,25};

static uint8_t broadcastip[4] = {
  // 255,255,255,255};
  192,168,1,255};

#define BROADCAST 0xFF
#define LF 10

//#define MESSAGE_BUFFER_MAX 140
#define BUFFER_MAX 300	// max lenght of a line

// Port 52240
// #define DEST_PORT_L  0x10
// #define DEST_PORT_H  0xCC

const char iphdr[] PROGMEM ={
  0x45,0,0,0x82,0,0,0x40,0,0x20}; // 0x82 is the total
//~ 
//~ struct UDPPayload {
  //~ uint32_t time;            // Time
  //~ uint16_t temperature;     // Temp in 1/10 degree
  //~ uint16_t data[10];        //watts data
  //~ uint16_t errorCount;      // count of errors in the XML.
  //~ uint16_t timeout_count;   // count of all protocol lockups
//~ };

	//~ char udpPayload[40]="\0"; // 213

//~ UDPPayload udpPayload;
// uint8_t  srcport = 3865;

// Port 3865 // TODO: un seul endroit pour modifier le port UDP
#define DEST_PORT_L  0x19
#define DEST_PORT_H  0xF
#define DEBUG_ETHERNET
#define MYUDPPORT 3865
// verifier si on filtre bien les autres ports que 3865
// Packet udpPayload, must be big enough to packet and payload
#define udpPayload_SIZE 300
uint8_t buf[udpPayload_SIZE+1];
//~ static uint8_t buf[udpPayload_SIZE+1];

EtherShield es=EtherShield();
long lastUpdate = 0;

void setup_udp(){

  /*initialize enc28j60*/
  es.ES_enc28j60Init(mymac);

  //init the ethernet/ip layer:
  es.ES_init_ip_arp_udp_tcp(mymac,myip, MYUDPPORT);


#ifdef DEBUG_ETHERNET
	Serial.print("filtre ERXFCON=");
	Serial.println(es.ES_enc28j60Revision(ERXFCON),BIN);

	Serial.print("==================== free RAM memory= ");
	Serial.print(freeMemory());
	Serial.println(" ====================");
#endif  
	Serial.println(" ---- setup udp ok ----");

}


void SendBroadcastData(uint8_t *buf, uint8_t lenght) {

	uint8_t i=0;
	uint16_t ck;

/*
	Serial.println("------------udpPayload buffer: ");

	Serial.print(udpPayload);

	Serial.print("length of --> ");	
	Serial.println(sizeof(udpPayload));
*/

	/// Setup the MAC addresses for ethernet header
	while(i<6){
		buf[ETH_DST_MAC +i]=BROADCAST; // Broadcast address
		buf[ETH_SRC_MAC +i]=mymac[i];
		i++;
	}
	buf[ETH_TYPE_H_P] = ETHTYPE_IP_H_V;
	buf[ETH_TYPE_L_P] = ETHTYPE_IP_L_V;
	es.ES_fill_buf_p(&buf[IP_P],9,iphdr);

	/// IP Header
	//~ buf[IP_TOTLEN_L_P]=28+sizeof( buf-UDP_DATA_P );
	//~ buf[IP_TOTLEN_L_P]=28+udpPayload_SIZE;
	buf[IP_TOTLEN_L_P]=28+lenght;
	buf[IP_PROTO_P]=IP_PROTO_UDP_V;
	i=0;
	while(i<4){
		buf[IP_DST_P+i]=broadcastip[i];
		buf[IP_SRC_P+i]=myip[i];
		i++;
	}
	es.ES_fill_ip_hdr_checksum(buf);
	buf[UDP_DST_PORT_H_P]=DEST_PORT_H;
	buf[UDP_DST_PORT_L_P]=DEST_PORT_L;
	buf[UDP_SRC_PORT_H_P]=DEST_PORT_H;
	buf[UDP_SRC_PORT_L_P]=DEST_PORT_L; // lower 8 bit of src port
	buf[UDP_LEN_H_P]=0;
	//~ buf[UDP_LEN_L_P]=8+sizeof( buf-UDP_DATA_P ); // fixed len
	//~ buf[UDP_LEN_L_P]=8+udpPayload_SIZE; // fixed len
	buf[UDP_LEN_L_P]=8+lenght; // fixed len
	// zero the checksum
	buf[UDP_CHECKSUM_H_P]=0;
	buf[UDP_CHECKSUM_L_P]=0;
	// copy the data:
	i=0;
	// most fields are zero, here we zero everything and fill later
	//~ while(i< sizeof( udpPayload ) ){
		//~ uint8_t* b = (uint8_t*)&udpPayload;
		//~ buf[UDP_DATA_P+i]=udpPayload[i];
		//~ i++;
	//~ }

  // Create correct checksum
  //~ ck=es.ES_checksum(&buf[IP_SRC_P], 16 + sizeof( buf-UDP_DATA_P ),1);
  //~ ck=es.ES_checksum(&buf[IP_SRC_P], 16 + udpPayload_SIZE,1);
  ck=es.ES_checksum(&buf[IP_SRC_P], 16 + lenght,1);
  buf[UDP_CHECKSUM_H_P]=ck>>8;
  buf[UDP_CHECKSUM_L_P]=ck& 0xff;
  //~ es.ES_enc28j60PacketSend(42 + sizeof( buf-UDP_DATA_P ), buf);
  //~ es.ES_enc28j60PacketSend(42 + udpPayload_SIZE, buf);
  es.ES_enc28j60PacketSend(42 + lenght, buf);
  
  // delay(1);
	//~ for(i=0;i<52;i++)
	//~ {
		//~ Serial.print(buf[i]);
	//~ } 
}




