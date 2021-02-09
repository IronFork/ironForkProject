#if defined(__linux__) || defined(__APPLE__)
#include <fcntl.h>
#include <termios.h>
#define STDIN_FILENO 0
#endif

#include <stdlib.h>
#include <stdio.h>
#include "dynamixel_sdk.h"                                  // Uses Dynamixel SDK library
#include <string.h>
#include <unistd.h>

#include <wiringPi.h>                                      // Hardware library
#include <wiringPiI2C.h>


// Control table address
#define ADDR_PRO_TORQUE_ENABLE          64                  // Control table address is different in Dynamixel model
#define ADDR_PRO_PRESENT_POSITION       132
#define ADDR_PRO_GOAL_POSITION          116
#define ADDR_POSITION_KP                84
#define ADDR_POSITION_KI                82
#define ADDR_POSITION_KD                80

// Data Byte Length
#define LEN_PRO_PRESENT_POSITION        4
#define LEN_PRO_GOAL_POSITION           4

// Protocol version
#define PROTOCOL_VERSION                2.0                 // See which protocol version is used in the Dynamixel

// Default setting
#define DXL1_ID                         1                   // Dynamixel#1 moteur de la Tourelle
#define DXL2_ID                         2                   // Dynamixel#2 moteur 1 du Bras
#define DXL3_ID                         3                   // Dynamixel#3 moteur 2 du Bras
#define DXL4_ID                         4                   // Dynamixel#4 moteur de l'Avant-Bras
#define DXL5_ID                         5                   // Dynamixel#5 moteur de la Pince

#define BAUDRATE                        115200
#define DEVICENAME                      "/dev/ttyUSB0"      // Check which port is being used on your controller
                                                            // ex) Windows: "COM1"   Linux: "/dev/ttyUSB0" Mac: "/dev/tty.usbserial-*"

#define TORQUE_ENABLE                   1                   // Value for enabling the torque
#define TORQUE_DISABLE                  0                   // Value for disabling the torque





// Define some device parameters
#define I2C_ADDR   0x27 // I2C device address

#define LedGreenPin 0
#define LedBluePin 2
#define LedRedPin 3
#define sensorPin 4

// Define some device constants
#define LCD_CHR  1 // Mode - Sending data
#define LCD_CMD  0 // Mode - Sending command

#define LINE1  0x80 // 1st line
#define LINE2  0xC0 // 2nd line

#define LCD_BACKLIGHT   0x08  // On
// LCD_BACKLIGHT = 0x00  # Off

#define ENABLE  0b00000100 // Enable bit

// fonction ecran lcd
void lcd_init(void);
void lcd_byte(int bits, int mode);
void lcd_toggle_enable(int bits);
void lcdLoc(int line); //move cursor
void ClrLcd(void); // clr LCD return home
void typeln(const char *s);
int fd;


int kbhit(void)
{
#if defined(__linux__) || defined(__APPLE__)
  struct termios oldt, newt;
  int ch;
  int oldf;

  tcgetattr(STDIN_FILENO, &oldt);
  newt = oldt;
  newt.c_lflag &= ~(ICANON | ECHO);
  tcsetattr(STDIN_FILENO, TCSANOW, &newt);
  oldf = fcntl(STDIN_FILENO, F_GETFL, 0);
  fcntl(STDIN_FILENO, F_SETFL, oldf | O_NONBLOCK);

  ch = getchar();

  tcsetattr(STDIN_FILENO, TCSANOW, &oldt);
  fcntl(STDIN_FILENO, F_SETFL, oldf);

  if (ch != EOF)
  {
    ungetc(ch, stdin);
    return 1;
  }

  return 0;
#elif defined(_WIN32) || defined(_WIN64)
  return _kbhit();
#endif
}

//Fonctions des messages IronFork
void messageSalut(void){
    
    
    ClrLcd();
    lcdLoc(LINE1);
    typeln("Salut! Je suis");
    lcdLoc(LINE2);
    typeln("   IronFork");
    delay(3000);

    ClrLcd();
    lcdLoc(LINE1);
    typeln("Allons manger!");
    delay(3000);
}

void messageApprendreTraj(void){
    
    ClrLcd();
    lcdLoc(LINE1);
    typeln("Voulez-vous");
    delay(2000);

    ClrLcd();
    lcdLoc(LINE1);
    typeln("apprendre une");
    lcdLoc(LINE2);
    typeln("trajectoire ?");
    

}

void messageRecuperationTraj(void){
    
    ClrLcd();
    lcdLoc(LINE1);
    typeln("Recuperation de");
    lcdLoc(LINE2);
    typeln("la trajectoire");
    delay(2000);
    

}

void messageTrajCharge(void){
    
    ClrLcd();
    lcdLoc(LINE1);
    typeln("Trajectoire");
    lcdLoc(LINE2);
    typeln("chargee !");
    delay(2000);
    

}

void messageNouvelleTraj(void){
    ClrLcd();
    lcdLoc(LINE1);
    typeln("Nouvelle");
    lcdLoc(LINE2);
    typeln("trajectoire !");
    delay(3000);

}

void messageEnregistreMonte(void){
    ClrLcd();
    lcdLoc(LINE1);
    typeln("Pour enregistrer");
    lcdLoc(LINE2);
    typeln("la traj de monte");
    delay(3000);
    
    ClrLcd();
    lcdLoc(LINE1);
    typeln("appuie sur");
    lcdLoc(LINE2);
    typeln("le bouton !");
    
}

    
void messageEnregistrementEnCours(void){
    ClrLcd();
    lcdLoc(LINE1);
    typeln("Enregistrement");
    lcdLoc(LINE2);
    typeln("en cours !");
       
}


void messageEnregistreMonteValide(void){
    ClrLcd();
    lcdLoc(LINE1);
    typeln("Traj monte");
    lcdLoc(LINE2);
    typeln("enregistre !!");
    delay(3000);
    

}    
    

void messageEnregistreDown(void){
    ClrLcd();
    lcdLoc(LINE1);
    typeln("Pour enregistrer");
    lcdLoc(LINE2);
    typeln("la descente");
    delay(3000);
    
    ClrLcd();
    lcdLoc(LINE1);
    typeln("appuie sur");
    lcdLoc(LINE2);
    typeln("le bouton !");
    
    
    

}

void messageEnregistreDownValide(void){
    ClrLcd();
    lcdLoc(LINE1);
    typeln("Traj descente");
    lcdLoc(LINE2);
    typeln("enregistre !!");
    delay(3000);
    

}    


void messagePrepare(void){
    ClrLcd();
    lcdLoc(LINE1);
    typeln("Mettre en");
    lcdLoc(LINE2);
    typeln("place IronFork");
    delay(3000);
    
    ClrLcd();
    lcdLoc(LINE1);
    typeln("Et appuie sur");
    lcdLoc(LINE2);
    typeln("le bouton !");
    
    
    

}


void messageLancementCycle(void){
    
    ClrLcd();
    lcdLoc(LINE1);
    typeln("Pour manger ...");
    delay(2000);

    
    
    ClrLcd();
    lcdLoc(LINE1);
    typeln("appuie sur");
    lcdLoc(LINE2);
    typeln("le bouton !!");
 
 

}

void messageCycle(void){
    ClrLcd();
    lcdLoc(LINE1);
    typeln("Cycle en");
    lcdLoc(LINE2);
    typeln("cours !!");
    

}

//FONCTIONS POUR ALLUMER ET ETEINDRE LES LEDS

void turnOnLedGreen(void){
	digitalWrite(LedGreenPin, HIGH);   //led on
}
void turnOnLedBlue(void){
	digitalWrite(LedBluePin, HIGH);   //led on
}
void turnOnLedRed(void){
	digitalWrite(LedRedPin, HIGH);   //led on
}

void turnOffLedGreen(void){
	digitalWrite(LedGreenPin, LOW);   //led off
}
void turnOffLedBlue(void){
	digitalWrite(LedBluePin, LOW);   //led off
}
void turnOffLedRed(void){
	digitalWrite(LedRedPin, LOW);   //led off
}


int main(void) {
	if(wiringPiSetup() == -1) 
	{ //when initialize wiringPi failed, print message to screen
		printf("setup wiringPi failed !\n");
        return -1;
	
    }
	
	fd = wiringPiI2CSetup(I2C_ADDR);
	printf("setup wiringPi ok !\n");
	pinMode(LedGreenPin, OUTPUT);
	pinMode(LedBluePin, OUTPUT);
	pinMode(LedRedPin, OUTPUT);
	pinMode(sensorPin,INPUT);
	
	// Initialize PortHandler Structs
	// Set the port path
	// Get methods and members of PortHandlerLinux or PortHandlerWindows
	int port_num = portHandler(DEVICENAME);

	// Initialize PacketHandler Structs
	packetHandler();


	// Initialize Groupsyncread Structs for Present Position
	int groupread_num = groupSyncRead(port_num, PROTOCOL_VERSION, ADDR_PRO_PRESENT_POSITION, LEN_PRO_PRESENT_POSITION);

	// Initialize Groupsyncwrite Structs
	int groupwrite_num = groupSyncWrite(port_num, PROTOCOL_VERSION, ADDR_PRO_GOAL_POSITION, LEN_PRO_GOAL_POSITION);
  
	
	int id[5]={DXL1_ID,DXL2_ID,DXL3_ID,DXL4_ID,DXL5_ID};
	
	
	int dxl_comm_result = COMM_TX_FAIL;               // Communication result
	uint8_t dxl_addparam_result = False;              // AddParam result
	uint8_t dxl_getdata_result = False;               // GetParam result
	uint8_t dxl_error = 0;                            // Dynamixel error

  	
	int32_t dxl1_present_position = 0, dxl2_present_position  = 0, dxl3_present_position = 0, dxl4_present_position = 0, dxl5_present_position = 0;                           // Present position
	
	int dxl1_goal_position, dxl2_goal_position, dxl3_goal_position, dxl4_goal_position, dxl5_goal_position;
	
	
	
	
	
	int timer2=1;
	
	FILE* fichier = NULL;           //Gestion du fichier de trajectoire
	double Fe = 20;					//Fréquence d'échantillonnage
	int i1=0;
	int i2=0;
	
	
	turnOnLedBlue();
	messageSalut(); 
	
	
	// Open port
	if (openPort(port_num))
	{
    	printf("Succeeded to open the port!\n");
  	}
  	else
  	{
    	printf("Failed to open the port!\n");
    	printf("Press any key to terminate...\n");
    	return 0;
  	}

  	// Set port baudrate
  	if (setBaudRate(port_num, BAUDRATE))
  	{
    printf("Succeeded to change the baudrate!\n");
  	}
  	else
  	{
    	printf("Failed to change the baudrate!\n");
    	printf("Press any key to terminate...\n");
    	return 0;
  	}	

	
	
	
	
	
	messageApprendreTraj();

	while(digitalRead(sensorPin)==1)
	{
		
	}
	
	delay(2000);
	timer2= digitalRead(sensorPin);	
	
	turnOffLedBlue();
	
	
	
	
	if(timer2==0) // Apprendre une nouvelle trajectoire
	{
		
		turnOnLedGreen();
		messageNouvelleTraj();	
		
		// Add parameter storage for Dynamixel#i present position value
  		for (int i=0; i<5; i++)
  		{
  			dxl_addparam_result = groupSyncReadAddParam(groupread_num, id[i]);
  			if (dxl_addparam_result != True)
  			{
  	  			fprintf(stderr, "[ID:%03d] groupSyncRead addparam failed", id[i]);
    			return 0;
  			}
  		}
  		
  		
	
	
		printf("Pour enregistrer la traj de montée appuie sur le bouton !\n");    
    	messageEnregistreMonte();
		
		do
		{
		
		}
		while(digitalRead(sensorPin)==1);
		
		turnOffLedGreen();
		messageEnregistrementEnCours();
		

	    fichier = fopen("Configuration1.csv" , "w");

	    
	    
	    
    
	    while (digitalRead(sensorPin)==1)
    
	    {
    		
		    // Syncread present position
		    groupSyncReadTxRxPacket(groupread_num);
		    if ((dxl_comm_result = getLastTxRxResult(port_num, PROTOCOL_VERSION)) != COMM_SUCCESS)
		    	printf("%s\n", getTxRxResult(PROTOCOL_VERSION, dxl_comm_result));

		    // Check if groupsyncread data of Dynamixel#i is available
		    
		    for (int n=0; n<5; n++)
		    {
    			dxl_getdata_result = groupSyncReadIsAvailable(groupread_num, id[n], ADDR_PRO_PRESENT_POSITION, LEN_PRO_PRESENT_POSITION);
				if (dxl_getdata_result != True)
		    	{
					fprintf(stderr, "[ID:%03d] groupSyncRead getdata failed", id[n]);
			    	return 0;
    			}
			}
    		



    		// Get Dynamixel#1 present position value
    		dxl1_present_position = groupSyncReadGetData(groupread_num, DXL1_ID, ADDR_PRO_PRESENT_POSITION, LEN_PRO_PRESENT_POSITION);
    
    		// Get Dynamixel#2 present position value
    		dxl2_present_position = groupSyncReadGetData(groupread_num, DXL2_ID, ADDR_PRO_PRESENT_POSITION, LEN_PRO_PRESENT_POSITION);
    
    		// Get Dynamixel#3 present position value
    		dxl3_present_position = groupSyncReadGetData(groupread_num, DXL3_ID, ADDR_PRO_PRESENT_POSITION, LEN_PRO_PRESENT_POSITION);
    
    		// Get Dynamixel#4 present position value
    		dxl4_present_position = groupSyncReadGetData(groupread_num, DXL4_ID, ADDR_PRO_PRESENT_POSITION, LEN_PRO_PRESENT_POSITION);
    
    		// Get Dynamixel#5 present position value
    		dxl5_present_position = groupSyncReadGetData(groupread_num, DXL5_ID, ADDR_PRO_PRESENT_POSITION, LEN_PRO_PRESENT_POSITION);

   
    		
    		
    		if (fichier != NULL)
    		{
 	
 			
    		fprintf(fichier, "%03d,%03d,%03d,%03d,%03d\n", dxl1_present_position, dxl2_present_position, dxl3_present_position, dxl4_present_position, dxl5_present_position);
		
       
     		}
 	
			turnOnLedBlue();
  			usleep(1/Fe*1e6);
  			turnOffLedBlue();
  			i1++;
  		
  		}
  		
  		
  		fclose(fichier);

		turnOnLedGreen();
		messageEnregistreMonteValide();
    
    	printf("Enregistre la descente !\n");
    	
    	messageEnregistreDown();
    
    	do
		{
			
		}
		while(digitalRead(sensorPin)==1);

    	turnOffLedGreen();
    	messageEnregistrementEnCours();
    	
    	fichier = fopen("Configuration2.csv" , "w");
    	
    	
    
    	while (digitalRead(sensorPin)==1)
    
    	{
    
    	// Syncread present position
    	groupSyncReadTxRxPacket(groupread_num);
    	if ((dxl_comm_result = getLastTxRxResult(port_num, PROTOCOL_VERSION)) != COMM_SUCCESS)
      		printf("%s\n", getTxRxResult(PROTOCOL_VERSION, dxl_comm_result));

    	// Check if groupsyncread data of Dynamixel#i is available
		    
		for (int n=0; n<5; n++)
		{
    			dxl_getdata_result = groupSyncReadIsAvailable(groupread_num, id[n], ADDR_PRO_PRESENT_POSITION, LEN_PRO_PRESENT_POSITION);
			if (dxl_getdata_result != True)
		    	{
					fprintf(stderr, "[ID:%03d] groupSyncRead getdata failed", id[n]);
			    	return 0;
    			}
		}


		// Get Dynamixel#1 present position value
		dxl1_present_position = groupSyncReadGetData(groupread_num, DXL1_ID, ADDR_PRO_PRESENT_POSITION, LEN_PRO_PRESENT_POSITION);
    	
	    // Get Dynamixel#2 present position value
	    dxl2_present_position = groupSyncReadGetData(groupread_num, DXL2_ID, ADDR_PRO_PRESENT_POSITION, LEN_PRO_PRESENT_POSITION);
	    
	    // Get Dynamixel#3 present position value
	    dxl3_present_position = groupSyncReadGetData(groupread_num, DXL3_ID, ADDR_PRO_PRESENT_POSITION, LEN_PRO_PRESENT_POSITION);
    
	    // Get Dynamixel#4 present position value
	    dxl4_present_position = groupSyncReadGetData(groupread_num, DXL4_ID, ADDR_PRO_PRESENT_POSITION, LEN_PRO_PRESENT_POSITION);
    
	    // Get Dynamixel#5 present position value
	    dxl5_present_position = groupSyncReadGetData(groupread_num, DXL5_ID, ADDR_PRO_PRESENT_POSITION, LEN_PRO_PRESENT_POSITION);

  
	    if (fichier != NULL)
	    {
 	
 			
	    	fprintf(fichier, "%03d,%03d,%03d,%03d,%03d\n", dxl1_present_position, dxl2_present_position, dxl3_present_position, dxl4_present_position, dxl5_present_position);
		
       
	    }
 	
	
	  	turnOnLedBlue();
  		usleep(1/Fe*1e6);
  		turnOffLedBlue();
	  	i2++;
	  	}
		
		
	
	  	fclose(fichier);
		turnOnLedGreen();
	
		messageEnregistreDownValide();
	}
	
	
	
	
	
	
	
	
	

	
	turnOnLedGreen();
	messageRecuperationTraj();
	
	
	
	char* nom_fichier_monte= "Configuration1.csv";
	char* nom_fichier_down= "Configuration2.csv";
	int nbLignes=1000;                        //attention au dela de 50s d'enregistrement erreur !!!
  	char ligne[nbLignes];
	
	
	//récupération de la taille des fichiers
	
	i1=0;
	
	fichier=fopen(nom_fichier_monte, "r");
	
  	if (fichier==NULL)
	{
		printf("Ouverture du fichier de trajectoire impossible !");
		return 0;
  	}
  
	while (fgets( ligne, nbLignes, fichier))
  	{
  		i1++;
  	}
	
	fclose(fichier);
	
	i2=0;
	
	fichier=fopen(nom_fichier_down, "r");
	
  	if (fichier==NULL)
	{
		printf("Ouverture du fichier de trajectoire impossible !");
		return 0;
  	}
  
	while (fgets( ligne, nbLignes, fichier))
  	{
  		i2++;
  	}
	
	fclose(fichier);		
  
  	
  
  	
  	int trajMonte[i1][5];
  	int trajDown[i2][5];
  	
  	char *ptr_chain; 
  	int num_ligne = 1 ;
  	double data; 
  		
	
  	fichier=fopen(nom_fichier_monte, "r");
	
  	if (fichier==NULL)
	{
		printf("Ouverture du fichier de trajectoire impossible !");
		return 0;
  	}
  
	while (fgets( ligne, nbLignes, fichier))
  	{
  	
  			ptr_chain = strtok( ligne,  ",");
  			int num_colonne = 0;
  			while (ptr_chain != NULL)
  			{
  				sscanf(ptr_chain, "%lf" , &data);
  				trajMonte[num_ligne-1][num_colonne]=data;
  				ptr_chain = strtok( NULL,  ",");
  				num_colonne++ ;	
  			}
  			num_ligne++ ;	  
  	}
  
  	fclose(fichier);


  	
  	num_ligne=1;
  	

  	fichier=fopen(nom_fichier_down, "r");
	
  	if (fichier==NULL)
  	{
			printf("Ouverture du fichier de trajectoire impossible !");
			return 0;
  	}
  
  	while (fgets( ligne, nbLignes, fichier))
  	{
  	
  			ptr_chain = strtok( ligne,  ",");
  			int num_colonne = 0;
  			while (ptr_chain != NULL)
  			{
  				sscanf(ptr_chain, "%lf" , &data);
  				trajDown[num_ligne-1][num_colonne]=data;
  				ptr_chain = strtok( NULL,  ",");
  				num_colonne++ ;	
  			}	
  		num_ligne++ ;	  
  		}
  
  	fclose(fichier);
		
		
	messageTrajCharge();

	
    

  
    
    
    //Réglage des asservissements des servos//
  
  	int coeffPID[5][3] ={{330,200,1000},
  						 {180,150,2000},
  						 {180,150,2000},
  						 {250,200,2000},
  						 {150,150,3000}};
  
  
  	int addrPID[3]={ADDR_POSITION_KP,ADDR_POSITION_KI,ADDR_POSITION_KD};
  
  	for  (int i=0;i<5;i++)
 	{
  		for (int n=0;n<3;n++)
  		{
  			write2ByteTxRx(port_num, PROTOCOL_VERSION, id[i], addrPID[n], coeffPID[i][n]);
    		if ((dxl_comm_result = getLastTxRxResult(port_num, PROTOCOL_VERSION)) != COMM_SUCCESS)
    		{
        		printf("%s\n", getTxRxResult(PROTOCOL_VERSION, dxl_comm_result));
    		}
   			else if ((dxl_error = getLastRxPacketError(port_num, PROTOCOL_VERSION)) != 0)
    		{
      			printf("%s\n", getRxPacketError(PROTOCOL_VERSION, dxl_error));
    		}
		}
  
  	}
       
	messagePrepare();
	
	do
	{
	
	}
	while(digitalRead(sensorPin)==1);
	

	
  
  	
  
  	// Enable Dynamixel#i Torque
  	
  	for (int i=0; i<5 ; i++)
  	{
  	
  		write1ByteTxRx(port_num, PROTOCOL_VERSION, id[i], ADDR_PRO_TORQUE_ENABLE, TORQUE_ENABLE);
  		if ((dxl_comm_result = getLastTxRxResult(port_num, PROTOCOL_VERSION)) != COMM_SUCCESS)
  		{
    		printf("%s\n", getTxRxResult(PROTOCOL_VERSION, dxl_comm_result));
  		}
  		else if ((dxl_error = getLastRxPacketError(port_num, PROTOCOL_VERSION)) != 0)
  		{
    		printf("%s\n", getRxPacketError(PROTOCOL_VERSION, dxl_error));
  		}
  		else
  		{
    		printf("Dynamixel#%d has been successfully connected \n", DXL1_ID);
  		}
	}
  
	
	
	
	
	
	while(1)
	{
		messageLancementCycle();

		do
		{
	
		}
		while(digitalRead(sensorPin)==1);
		
		turnOffLedGreen();
		turnOnLedRed();
		messageCycle();
	
		
		for (int i=0; i<i1;i++)
    	{
    
    
    
   
    	// Write goal position
    	dxl1_goal_position = trajMonte[i][0];
    	dxl2_goal_position = trajMonte[i][1];
    	dxl3_goal_position = trajMonte[i][2];
    	dxl4_goal_position = trajMonte[i][3];
    	dxl5_goal_position = trajMonte[i][4];

  
		// Add Dynamixel#1 goal position value to the Syncwrite storage
	    dxl_addparam_result = groupSyncWriteAddParam(groupwrite_num, DXL1_ID, dxl1_goal_position, LEN_PRO_GOAL_POSITION);
	    if (dxl_addparam_result != True)
	    {
		      fprintf(stderr, "[ID:%03d] groupSyncWrite addparam failed", DXL1_ID);
		      return 0;
	    }
	
	    // Add Dynamixel#2 goal position value to the Syncwrite parameter storage
	    dxl_addparam_result = groupSyncWriteAddParam(groupwrite_num, DXL2_ID, dxl2_goal_position, LEN_PRO_GOAL_POSITION);
	    if (dxl_addparam_result != True)
	    {
		      fprintf(stderr, "[ID:%03d] groupSyncWrite addparam failed", DXL2_ID);
		      return 0;
	    }
    
	    // Add Dynamixel#3 goal position value to the Syncwrite storage
	    dxl_addparam_result = groupSyncWriteAddParam(groupwrite_num, DXL3_ID, dxl3_goal_position, LEN_PRO_GOAL_POSITION);
	    if (dxl_addparam_result != True)
	    {
		      fprintf(stderr, "[ID:%03d] groupSyncWrite addparam failed", DXL3_ID);
    		  return 0;
    	}
    
    	// Add Dynamixel#4 goal position value to the Syncwrite storage
    	dxl_addparam_result = groupSyncWriteAddParam(groupwrite_num, DXL4_ID, dxl4_goal_position, LEN_PRO_GOAL_POSITION);
    	if (dxl_addparam_result != True)
    	{
      		fprintf(stderr, "[ID:%03d] groupSyncWrite addparam failed", DXL4_ID);
      		return 0;
    	}
    
     	// Add Dynamixel#5 goal position value to the Syncwrite storage
    	dxl_addparam_result = groupSyncWriteAddParam(groupwrite_num, DXL5_ID, dxl5_goal_position, LEN_PRO_GOAL_POSITION);
    	if (dxl_addparam_result != True)
    	{
      		fprintf(stderr, "[ID:%03d] groupSyncWrite addparam failed", DXL5_ID);
      		return 0;
    	}
    
    

    	// Syncwrite goal position
    	groupSyncWriteTxPacket(groupwrite_num);
    	if ((dxl_comm_result = getLastTxRxResult(port_num, PROTOCOL_VERSION)) != COMM_SUCCESS)
      		printf("%s\n", getTxRxResult(PROTOCOL_VERSION, dxl_comm_result));
     
     
    	// Clear syncwrite parameter storage
    	groupSyncWriteClearParam(groupwrite_num);

    	usleep(1/Fe*1e6);
    
  
   
   		}

		do
		{
	
		}
		while(digitalRead(sensorPin)==1);


    	for (int i=0; i<i2;i++)
    	{
    
    
    
   
    	// Write goal position
    	dxl1_goal_position = trajDown[i][0];
    	dxl2_goal_position = trajDown[i][1];
    	dxl3_goal_position = trajDown[i][2];
    	dxl4_goal_position = trajDown[i][3];
    	dxl5_goal_position = trajDown[i][4];

  
    

    
    
    	// Add Dynamixel#1 goal position value to the Syncwrite storage
    	dxl_addparam_result = groupSyncWriteAddParam(groupwrite_num, DXL1_ID, dxl1_goal_position, LEN_PRO_GOAL_POSITION);
    	if (dxl_addparam_result != True)
    	{
      		fprintf(stderr, "[ID:%03d] groupSyncWrite addparam failed", DXL1_ID);
      		return 0;
    	}

    	// Add Dynamixel#2 goal position value to the Syncwrite parameter storage
    	dxl_addparam_result = groupSyncWriteAddParam(groupwrite_num, DXL2_ID, dxl2_goal_position, LEN_PRO_GOAL_POSITION);
    	if (dxl_addparam_result != True)
    	{
    		  fprintf(stderr, "[ID:%03d] groupSyncWrite addparam failed", DXL2_ID);
    		  return 0;
    	}
    	
    	// Add Dynamixel#3 goal position value to the Syncwrite storage
    	dxl_addparam_result = groupSyncWriteAddParam(groupwrite_num, DXL3_ID, dxl3_goal_position, LEN_PRO_GOAL_POSITION);
    	if (dxl_addparam_result != True)
    	{
    		  fprintf(stderr, "[ID:%03d] groupSyncWrite addparam failed", DXL3_ID);
    		  return 0;
    	}
    
    	// Add Dynamixel#4 goal position value to the Syncwrite storage
    	dxl_addparam_result = groupSyncWriteAddParam(groupwrite_num, DXL4_ID, dxl4_goal_position, LEN_PRO_GOAL_POSITION);
    	if (dxl_addparam_result != True)
    	{
      		fprintf(stderr, "[ID:%03d] groupSyncWrite addparam failed", DXL4_ID);
      		return 0;
    	}
    
     	// Add Dynamixel#5 goal position value to the Syncwrite storage
    	dxl_addparam_result = groupSyncWriteAddParam(groupwrite_num, DXL5_ID, dxl5_goal_position, LEN_PRO_GOAL_POSITION);
   		if (dxl_addparam_result != True)
    	{
      		fprintf(stderr, "[ID:%03d] groupSyncWrite addparam failed", DXL5_ID);
      		return 0;
    	}
    
    

    	// Syncwrite goal position
    	groupSyncWriteTxPacket(groupwrite_num);
    	if ((dxl_comm_result = getLastTxRxResult(port_num, PROTOCOL_VERSION)) != COMM_SUCCESS)
    	  	printf("%s\n", getTxRxResult(PROTOCOL_VERSION, dxl_comm_result));
     
     
    	// Clear syncwrite parameter storage
    	groupSyncWriteClearParam(groupwrite_num);

    	usleep(1/Fe*1e6);
    	} 
	
	
	
	
	
	
	
	
	turnOffLedRed();
	turnOnLedGreen();

	}
	
        return 0;

}






void lcd_init()   {
  // Initialise display
  lcd_byte(0x33, LCD_CMD); // Initialise
  lcd_byte(0x32, LCD_CMD); // Initialise
  lcd_byte(0x06, LCD_CMD); // Cursor move direction
  lcd_byte(0x0C, LCD_CMD); // 0x0F On, Blink Off
  lcd_byte(0x28, LCD_CMD); // Data length, number of lines, font size
  lcd_byte(0x01, LCD_CMD); // Clear display
  delayMicroseconds(500);
}


void lcd_toggle_enable(int bits)   {
  // Toggle enable pin on LCD display
  delayMicroseconds(500);
  wiringPiI2CReadReg8(fd, (bits | ENABLE));
  delayMicroseconds(500);
  wiringPiI2CReadReg8(fd, (bits & ~ENABLE));
  delayMicroseconds(500);
}


void lcd_byte(int bits, int mode)   {

  //Send byte to data pins
  // bits = the data
  // mode = 1 for data, 0 for command
  int bits_high;
  int bits_low;
  // uses the two half byte writes to LCD
  bits_high = mode | (bits & 0xF0) | LCD_BACKLIGHT ;
  bits_low = mode | ((bits << 4) & 0xF0) | LCD_BACKLIGHT ;

  // High bits
  wiringPiI2CReadReg8(fd, bits_high);
  lcd_toggle_enable(bits_high);

  // Low bits
  wiringPiI2CReadReg8(fd, bits_low);
  lcd_toggle_enable(bits_low);
}

// go to location on LCD
void lcdLoc(int line)   {
  lcd_byte(line, LCD_CMD);
}


// clr lcd go home loc 0x80
void ClrLcd(void)   {
  lcd_byte(0x01, LCD_CMD);
  lcd_byte(0x02, LCD_CMD);
}

// this allows use of any size string
void typeln(const char *s)   {

  while ( *s ) lcd_byte(*(s++), LCD_CHR);

}
