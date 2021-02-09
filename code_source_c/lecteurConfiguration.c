/*******************************************************************************
* Copyright 2017 ROBOTIS CO., LTD.
*
* Licensed under the Apache License, Version 2.0 (the "License");
* you may not use this file except in compliance with the License.
* You may obtain a copy of the License at
*
*     http://www.apache.org/licenses/LICENSE-2.0
*
* Unless required by applicable law or agreed to in writing, software
* distributed under the License is distributed on an "AS IS" BASIS,
* WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
* See the License for the specific language governing permissions and
* limitations under the License.
*******************************************************************************/

/* Author: Ryu Woon Jung (Leon) */

//
// *********     Sync Read and Sync Write Example      *********
//
//
// Available Dynamixel model on this example : All models using Protocol 2.0
// This example is designed for using two Dynamixel PRO 54-200, and an USB2DYNAMIXEL.
// To use another Dynamixel model, such as X series, see their details in E-Manual(emanual.robotis.com) and edit below variables yourself.
// Be sure that Dynamixel PRO properties are already set as %% ID : 1 / Baudnum : 1 (Baudrate : 57600)
//

#if defined(__linux__) || defined(__APPLE__)
#include <fcntl.h>
#include <termios.h>
#define STDIN_FILENO 0
#elif defined(_WIN32) || defined(_WIN64)
#include <conio.h>
#endif

#include <stdlib.h>
#include <stdio.h>
#include "dynamixel_sdk.h"                                  // Uses Dynamixel SDK library
#include <string.h>
#include <unistd.h>

// Control table address
#define ADDR_PRO_TORQUE_ENABLE          64                  // Control table address is different in Dynamixel model
#define ADDR_PRO_PRESENT_POSITION       132

// Data Byte Length
#define LEN_PRO_PRESENT_POSITION        4

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
#define DXL_MINIMUM_POSITION_VALUE      1000             // Dynamixel will rotate between this value
#define DXL_MAXIMUM_POSITION_VALUE      2040             // and this value (note that the Dynamixel would not move when the position value is out of movable range. Check e-manual about the range of the Dynamixel you use.)
#define DXL_MOVING_STATUS_THRESHOLD     20                  // Dynamixel moving status threshold

#define ESC_ASCII_VALUE                 0x1b

int getch()
{
#if defined(__linux__) || defined(__APPLE__)
  struct termios oldt, newt;
  int ch;
  tcgetattr(STDIN_FILENO, &oldt);
  newt = oldt;
  newt.c_lflag &= ~(ICANON | ECHO);
  tcsetattr(STDIN_FILENO, TCSANOW, &newt);
  ch = getchar();
  tcsetattr(STDIN_FILENO, TCSANOW, &oldt);
  return ch;
#elif defined(_WIN32) || defined(_WIN64)
  return _getch();
#endif
}

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

int main()
{
  // Initialize PortHandler Structs
  // Set the port path
  // Get methods and members of PortHandlerLinux or PortHandlerWindows
  int port_num = portHandler(DEVICENAME);

  // Initialize PacketHandler Structs
  packetHandler();


  // Initialize Groupsyncread Structs for Present Position
  int groupread_num = groupSyncRead(port_num, PROTOCOL_VERSION, ADDR_PRO_PRESENT_POSITION, LEN_PRO_PRESENT_POSITION);

  
  int dxl_comm_result = COMM_TX_FAIL;               // Communication result
  uint8_t dxl_addparam_result = False;              // AddParam result
  uint8_t dxl_getdata_result = False;               // GetParam result
  

  //uint8_t dxl_error = 0;                            // Dynamixel error
  int32_t dxl1_present_position = 0, dxl2_present_position  = 0, dxl3_present_position = 0, dxl4_present_position = 0, dxl5_present_position = 0;                           // Present position


  FILE* fichier = NULL;           // Ecriture d'un fichier csv
  
  
  // Open port
  if (openPort(port_num))
  {
    printf("Succeeded to open the port!\n");
  }
  else
  {
    printf("Failed to open the port!\n");
    printf("Press any key to terminate...\n");
    getch();
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
    getch();
    return 0;
  }
  
  /*
  // Enable Dynamixel#1 Torque
  write1ByteTxRx(port_num, PROTOCOL_VERSION, DXL1_ID, ADDR_PRO_TORQUE_ENABLE, TORQUE_ENABLE);
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

  // Enable Dynamixel#2 Torque
  write1ByteTxRx(port_num, PROTOCOL_VERSION, DXL2_ID, ADDR_PRO_TORQUE_ENABLE, TORQUE_ENABLE);
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
    printf("Dynamixel#%d has been successfully connected \n", DXL2_ID);
  }
  */
  
  
  // Add parameter storage for Dynamixel#1 present position value
  dxl_addparam_result = groupSyncReadAddParam(groupread_num, DXL1_ID);
  if (dxl_addparam_result != True)
  {
    fprintf(stderr, "[ID:%03d] groupSyncRead addparam failed", DXL1_ID);
    return 0;
  }

  // Add parameter storage for Dynamixel#2 present position value
  dxl_addparam_result = groupSyncReadAddParam(groupread_num, DXL2_ID);
  if (dxl_addparam_result != True)
  {
    fprintf(stderr, "[ID:%03d] groupSyncRead addparam failed", DXL2_ID);
    return 0;
  }
  
  // Add parameter storage for Dynamixel#3 present position value
  dxl_addparam_result = groupSyncReadAddParam(groupread_num, DXL3_ID);
  if (dxl_addparam_result != True)
  {
    fprintf(stderr, "[ID:%03d] groupSyncRead addparam failed", DXL3_ID);
    return 0;
  }
  
  // Add parameter storage for Dynamixel#4 present position value
  dxl_addparam_result = groupSyncReadAddParam(groupread_num, DXL4_ID);
  if (dxl_addparam_result != True)
  {
    fprintf(stderr, "[ID:%03d] groupSyncRead addparam failed", DXL4_ID);
    return 0;
  }
  
  // Add parameter storage for Dynamixel#5 present position value
  dxl_addparam_result = groupSyncReadAddParam(groupread_num, DXL5_ID);
  if (dxl_addparam_result != True)
  {
    fprintf(stderr, "[ID:%03d] groupSyncRead addparam failed", DXL5_ID);
    return 0;
  }
  
  
  fichier = fopen("Configuration.csv" , "w");
  
  while (1)
  {
    printf("Press any key to continue! (or press ESC to quit!)\n");
    if (getch() == ESC_ASCII_VALUE)
      break;

    double Fe = 20;
    double Te = 20;
    int i = 0;
    
    while (i< Te*Fe)
    
    {
    
    // Syncread present position
    groupSyncReadTxRxPacket(groupread_num);
    if ((dxl_comm_result = getLastTxRxResult(port_num, PROTOCOL_VERSION)) != COMM_SUCCESS)
      printf("%s\n", getTxRxResult(PROTOCOL_VERSION, dxl_comm_result));

    // Check if groupsyncread data of Dynamixel#1 is available
    dxl_getdata_result = groupSyncReadIsAvailable(groupread_num, DXL1_ID, ADDR_PRO_PRESENT_POSITION, LEN_PRO_PRESENT_POSITION);
    if (dxl_getdata_result != True)
    {
      fprintf(stderr, "[ID:%03d] groupSyncRead getdata failed", DXL1_ID);
      return 0;
    }

    // Check if groupsyncread data of Dynamixel#2 is available
    dxl_getdata_result = groupSyncReadIsAvailable(groupread_num, DXL2_ID, ADDR_PRO_PRESENT_POSITION, LEN_PRO_PRESENT_POSITION);
    if (dxl_getdata_result != True)
    {
      fprintf(stderr, "[ID:%03d] groupSyncRead getdata failed", DXL2_ID);
      return 0;
    }
    
    // Check if groupsyncread data of Dynamixel#3 is available
    dxl_getdata_result = groupSyncReadIsAvailable(groupread_num, DXL3_ID, ADDR_PRO_PRESENT_POSITION, LEN_PRO_PRESENT_POSITION);
    if (dxl_getdata_result != True)
    {
      fprintf(stderr, "[ID:%03d] groupSyncRead getdata failed", DXL3_ID);
      return 0;
    }
    
    // Check if groupsyncread data of Dynamixel#4 is available
    dxl_getdata_result = groupSyncReadIsAvailable(groupread_num, DXL4_ID, ADDR_PRO_PRESENT_POSITION, LEN_PRO_PRESENT_POSITION);
    if (dxl_getdata_result != True)
    {
      fprintf(stderr, "[ID:%03d] groupSyncRead getdata failed", DXL4_ID);
      return 0;
    }

    // Check if groupsyncread data of Dynamixel#5 is available
    dxl_getdata_result = groupSyncReadIsAvailable(groupread_num, DXL5_ID, ADDR_PRO_PRESENT_POSITION, LEN_PRO_PRESENT_POSITION);
    if (dxl_getdata_result != True)
    {
      fprintf(stderr, "[ID:%03d] groupSyncRead getdata failed", DXL5_ID);
      return 0;
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

   
    float temps = i*1/Fe;
    
    if (fichier != NULL)
    {
 	
 			
    	fprintf(fichier, "%f,%03d,%03d,%03d,%03d,%03d\n", temps, dxl1_present_position, dxl2_present_position, dxl3_present_position, dxl4_present_position, dxl5_present_position);
		
       
     }
 	
    //printf("[ID:%03d] PresPos:%03d\t[ID:%03d] PresPos:%03d\t[ID:%03d] PresPos:%03d\t[ID:%03d] PresPos:%03d\t[ID:%03d] PresPos:%03d\n", DXL1_ID, dxl1_present_position, DXL2_ID, dxl2_present_position, DXL3_ID, dxl3_present_position, DXL4_ID, dxl4_present_position, DXL5_ID, dxl5_present_position);
	
  usleep(1/Fe*1e6);
  i++;
  }  
  }
  
  
  fclose(fichier);

  /*// Disable Dynamixel#1 Torque
  write1ByteTxRx(port_num, PROTOCOL_VERSION, DXL1_ID, ADDR_PRO_TORQUE_ENABLE, TORQUE_DISABLE);
  if ((dxl_comm_result = getLastTxRxResult(port_num, PROTOCOL_VERSION)) != COMM_SUCCESS)
  {
    printf("%s\n", getTxRxResult(PROTOCOL_VERSION, dxl_comm_result));
  }
  else if ((dxl_error = getLastRxPacketError(port_num, PROTOCOL_VERSION)) != 0)
  {
    printf("%s\n", getRxPacketError(PROTOCOL_VERSION, dxl_error));
  }

  // Disable Dynamixel#2 Torque
  write1ByteTxRx(port_num, PROTOCOL_VERSION, DXL2_ID, ADDR_PRO_TORQUE_ENABLE, TORQUE_DISABLE);
  if ((dxl_comm_result = getLastTxRxResult(port_num, PROTOCOL_VERSION)) != COMM_SUCCESS)
  {
    printf("%s\n", getTxRxResult(PROTOCOL_VERSION, dxl_comm_result));
  }
  else if ((dxl_error = getLastRxPacketError(port_num, PROTOCOL_VERSION)) != 0)
  {
    printf("%s\n", getRxPacketError(PROTOCOL_VERSION, dxl_error));
  }
  */
  
  
  // Close port
  closePort(port_num);

  return 0;
}
