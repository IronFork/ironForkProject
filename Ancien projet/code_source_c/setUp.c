//CODE LED RGB (https://www.admfactory.com/blinking-led-on-raspberry-pi-using-c/)

#include <wiringPi.h>
#include <wiringPiI2C.h>
#include <stdlib.h>
#include <stdio.h>

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
    delay(2000);

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
    delay(2000);

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
        if(wiringPiSetup() == -1) { //when initialize wiringPi failed, print message to screen
                printf("setup wiringPi failed !\n");
                return -1;
	
        }
	fd = wiringPiI2CSetup(I2C_ADDR);
	printf("setup wiringPi ok !\n");
        pinMode(LedGreenPin, OUTPUT);
	pinMode(LedBluePin, OUTPUT);
	pinMode(LedRedPin, OUTPUT);
	pinMode(sensorPin,INPUT);
	
	int timer1=1;
	int timer2=1;
	
	turnOnLedBlue();
        messageSalut(); 

	messageApprendreTraj();

	while(digitalRead(sensorPin)==1)
	{
	timer1=digitalRead(sensorPin);
	}
	
	delay(2000);
	timer2= digitalRead(sensorPin);	
	
	if(timer2==0)
	{
	turnOffLedBlue();
	turnOnLedGreen();
	messageNouvelleTraj();	
	
	
	}
	
	if(timer2==1)
	{
	turnOffLedBlue();
	turnOnLedGreen();
	messageRecuperationTraj();
	
	messageTrajCharge();

	} 
       
	

	while(1)
	{
	messageLancementCycle();

	do
	{
	timer1= digitalRead(sensorPin);
	}
	while(digitalRead(sensorPin)==1);
	
	turnOffLedGreen();
	turnOnLedRed();
	messageCycle();
	
	turnOffLedRed();
	turnOnLedGreen();

	}
	turnOffLedGreen();
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
