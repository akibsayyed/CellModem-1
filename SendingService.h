/* 
 * File:   SendingService.h
 * Author: wfindlay
 *
 * Created on May 5, 2016, 4:08 PM
 */

#ifndef SENDINGSERVICE_H
#define	SENDINGSERVICE_H

#include "ES_Types.h"


// typedefs for the state
typedef enum { WaitingToSend, Sending } SendingState_t ;

// Public Function Prototypes

bool InitSendingService ( uint8_t Priority );
bool PostSendingService( ES_Event ThisEvent );
ES_Event RunSendingService( ES_Event ThisEvent );
void TXIF_ISR(void);


#endif	/* SENDINGSERVICE_H */

