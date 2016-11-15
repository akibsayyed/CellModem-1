
/****************************************************************************
 Module
   SendingService.c

 Revision
   1.0.1

 Description
   This is a template file for implementing a simple service under the 
   Gen2 Events and Services Framework.

 Notes

 History
 When           Who     What/Why
 -------------- ---     --------
 01/16/12 09:58 jec      began conversion from TemplateFSM.c
****************************************************************************/
/*----------------------------- Include Files -----------------------------*/
/* include header files for this state machine as well as any machines at the
   next lower level in the hierarchy that are sub-machines to this machine
*/
#include "ES_Configure.h"
#include "ES_Framework.h"
#include "SendingService.h"
#include "ReceivingService.h"
#include "ProcessDataModule.h"
#include <string.h>

/*----------------------------- Module Defines ----------------------------*/
#define ONE_SEC 100
#define HALF_SEC ONE_SEC/2
#define TENTH_SEC ONE_SEC/10
#define THREE_SEC ONE_SEC*3
#define FIFTH_SEC ONE_SEC/5
#define SPBRGL_CONSTANT 0x33
#define XBEE_OVERHEAD 9
#define MAX_DATA_SIZE 33
#define MAX_PACKET_SIZE (XBEE_OVERHEAD+MAX_DATA_SIZE)
/*---------------------------- Module Functions ---------------------------*/
/* prototypes for private functions for this service.They should be functions
   relevant to the behavior of this service
*/
static void SendPacket(void);
static void PacketData(void);
static void InitSendingEUSART(void);
/*---------------------------- Module Variables ---------------------------*/
// with the introduction of Gen2, we need a module level Priority variable
static uint8_t MyPriority;
//static uint8_t Data2Send[] = {0x21,0x18,0xFF,0x7E,0x12,0x05};
//static uint8_t *Data2Send;
//static uint8_t Packet2Process[MAX_PACKET_SIZE];
//static uint8_t Packet2Send[MAX_PACKET_SIZE];
//static uint8_t API_Identifier = 0x01;
//static uint16_t DestinationAddress = 0x2181;
//static uint8_t FrameID = 0x01;
//static uint8_t CheckSum = 0;
static uint8_t *Packet2Send;
static uint8_t Packet2SendSize;
static uint8_t SendPacketIndex = 0;
static SendingState_t CurrentState;
static bool SendingTimeoutFlag = false;
static bool PacketReadyFlag = false;



/*------------------------------ Module Code ------------------------------*/
/****************************************************************************
 Function
     InitSendingService

 Parameters
     uint8_t : the priority of this service

 Returns
     bool, false if error in initialization, true otherwise

 Description
     Saves away the priority, and does any 
     other required initialization for this service
 Notes

 Author
     J. Edward Carryer, 01/16/12, 10:00
****************************************************************************/
bool InitSendingService ( uint8_t Priority )
{
    ES_Event ThisEvent;

    MyPriority = Priority;
    /********************************************
     in here you write your initialization code
     *******************************************/
    InitSendingEUSART();
    CurrentState = WaitingToSend;
    // Enable sending timer
    ES_Timer_InitTimer(SENDING_TIMER, FIFTH_SEC);
  
    // post the initial transition event
    ThisEvent.EventType = ES_INIT;
    if (ES_PostToService( MyPriority, ThisEvent) == true)
    {
        return true;
    }else
    {
        return false;
    }
}

static void InitSendingEUSART(void) {
    // Set desired baud rate
    BRGH = 0;
    BRG16 = 0;
    SPBRGH = 0;
    SPBRGL = SPBRGL_CONSTANT;
    
    // SENDING EUSART
    // Enable 8-bit mode
    TX9 = 0;
    // Enable asynchronous serial port by clearing SYNC bit and setting SPEN bit
    SYNC = 0;
    SPEN = 1;
    // Enable transmission by setting TXEN bit
    TXEN = 1;
    // Set TX pin to RB6
    TXSEL = 1;
    // Make sure interrupt is disabled
    TXIE = 0;
    

}

/****************************************************************************
 Function
     PostSendingService

 Parameters
     EF_Event ThisEvent ,the event to post to the queue

 Returns
     bool false if the Enqueue operation failed, true otherwise

 Description
     Posts an event to this state machine's queue
 Notes

 Author
     J. Edward Carryer, 10/23/11, 19:25
****************************************************************************/
bool PostSendingService( ES_Event ThisEvent )
{
  return ES_PostToService( MyPriority, ThisEvent);
}

/****************************************************************************
 Function
    RunSendingService

 Parameters
   ES_Event : the event to process

 Returns
   ES_Event, ES_NO_EVENT if no error ES_ERROR otherwise

 Description
   add your description here
 Notes
   
 Author
   J. Edward Carryer, 01/15/12, 15:23
****************************************************************************/
ES_Event RunSendingService( ES_Event ThisEvent )
{
    SendingState_t NextState = CurrentState;
    ES_Event ReturnEvent;
    ReturnEvent.EventType = ES_NO_EVENT; // assume no errors
    /********************************************
     in here you write your service code
     *******************************************/
    if (CurrentState == WaitingToSend) {
        /*
        if (ThisEvent.EventType == DBButtonDown) {
            //Data2Send = GetFrameDataPacket();
            //SizeOfData = GetFrameDataPacketSize();
            //SizeOfData = sizeof(Data2Send);
            // Packet the Data
            //PacketData();
            if (RA1 == 1) {
                RA1 = 0;
            } else if (RA1 == 0) {
                RA1 = 1;
            } 
            //NextState = Sending;
            //ConstructPacket();
            //SendPacket();
            

        } else */
        if (ThisEvent.EventType == ES_TIMEOUT) {
            if(ThisEvent.EventParam == SENDING_TIMER) {
                if (PacketReadyFlag) {
                    // Debugging code below
                    PacketReadyFlag = false;
                    SendingTimeoutFlag = false;
                    // End Debugging code
                    NextState = Sending;
                    SendPacket();

                } else {
                    SendingTimeoutFlag = true;
                }
            }
        } else if (ThisEvent.EventType == PACKET_READY) {
            if (SendingTimeoutFlag) {
                // Debugging code below
                SendingTimeoutFlag = false;
                PacketReadyFlag = false;
                // End Debugging code
                NextState = Sending;
                SendPacket();

            } else {
                PacketReadyFlag = true;
            }
        }
    }
    
    CurrentState = NextState;
    return ReturnEvent;
}

/***************************************************************************
 public functions
 ***************************************************************************/

/***************************************************************************
 private functions
 ***************************************************************************/

static void SendPacket(void) {
    // Get Packet2Send
    Packet2Send = GetPacket2Send();
    // Get Packet2SendSize
    Packet2SendSize = GetPacket2SendSize();
    // Set DataIndex equal to 0
    SendPacketIndex = 0;
    // Enable interrupt by setting TXIE interrupt enable bit (PIE1 register)
    TXIE = 1;
    // Enable sending timer
    ES_Timer_InitTimer(SENDING_TIMER, FIFTH_SEC);
}

void TXIF_ISR() {
    // Write next byte to TXREG register
    TXREG = Packet2Send[SendPacketIndex];
    // Increment DataIndex
    SendPacketIndex++;
    // If write is done
    if (SendPacketIndex == Packet2SendSize) {
        // Disable TXIE interrupts
        TXIE = 0;
        // Set current state to WaitingToSend
        CurrentState = WaitingToSend;
        // Clear flags
        
        // CURRENTLY COMMENTED OUT TO TEST, MIGHT UNCOMMENT LATER
        //SendingTimeoutFlag = false;
        //PacketReadyFlag = false;
    }
    
}

/*----------------------------Deleted Functions ---------------------------*/

/*
static void PacketData() {
    // Clear Packet2Send
    memset(Packet2Send,0,sizeof(Packet2Send));
    // Set CheckSum equal to 0
    CheckSum = 0;
    // Start Delimiter
    Packet2Send[0] = 0x7E;
    // MSB of length
    Packet2Send[1] = 0x00;
    // LSB of length
    Packet2Send[2] = SizeOfData + 5;
    // API Identifier
    Packet2Send[3] = API_Identifier;
    // Add to CheckSum
    CheckSum += Packet2Send[3];
    // Frame ID
    Packet2Send[4] = FrameID;
    // Add to CheckSum
    CheckSum += Packet2Send[4];
    // Destination Address LSB
    Packet2Send[6] = DestinationAddress & 0xFF;
    // Add to CheckSum
    CheckSum += Packet2Send[6];
    // Destination Address MSB
    Packet2Send[5] = (DestinationAddress >> 8);
    // Add to CheckSum
    CheckSum += Packet2Send[5];
    // Options Byte
    Packet2Send[7] = 0x00;
    // Add to CheckSum
    CheckSum += Packet2Send[7];
    // Actual Data
    for (uint8_t index = 0; index < SizeOfData; index++) {
        Packet2Send[(XBEE_OVERHEAD-1) + index] = Data2Send[index];
        CheckSum += Packet2Send[(XBEE_OVERHEAD-1) + index];
    }
    // Calculate Checksum
    CheckSum = 0xFF - CheckSum;
    // Add CheckSum to Packet
    Packet2Send[(XBEE_OVERHEAD-1) + SizeOfData] = CheckSum;
    // Calculate size of Packet
    SizeOfPacket = XBEE_OVERHEAD + SizeOfData;
    // Increment FrameID
    FrameID++;
    // If frame ID is 0, set it to 1
    if (FrameID == 0) {
        FrameID++;
    }
}
*/

/*uint8_t *GetReceivedPacket(void) {
    return ReceivedPacket;
}
*/
/*------------------------------- Footnotes -------------------------------*/
/*------------------------------ End of file ------------------------------*/


