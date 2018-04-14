/************************************************************************
	uart.c

    ATmega32u4 UART driver
    Copyright (C) 2018 Simon Inns

    This program is free software: you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with this program.  If not, see <http://www.gnu.org/licenses/>.

	Email: simon.inns@gmail.com

************************************************************************/

// Global includes
#include <avr/io.h>
#include <stdio.h>

// Local includes
#include "uart.h"

# define USART_BAUDRATE 57600
# define BAUD_PRESCALE ((( F_CPU / ( USART_BAUDRATE * 16UL))) - 1)

void uartInitialize(void) {
	// Set baud rate
	unsigned int baud = BAUD_PRESCALE;
	UBRR1H = (unsigned char)(baud >> 8);
	UBRR1L = (unsigned char)baud;
	
	// Enable UART RX and TX
	UCSR1B = (1<<RXEN1)|(1<<TXEN1);
	// Set 8N1 length, parity and stop-bit
	UCSR1C = (1<<UCSZ11)|(1<<UCSZ10);
	
	// Open a STDIO handler for printf and other functions to STDOUT/STDIN
	fdevopen(&uartPutChar, &uartGetChar);
}

void uartWrite(char character) {
	// Wait for the receive buffer to be empty
	while (!(UCSR1A & (1 << UDRE1)));
		
	// Send the character
	UDR1 = character;
}

// Returns 1 if a character is waiting, otherwise it returns 0
uint8_t uartCharIsWaiting(void) {
	return (UCSR1A & (1<<RXC1));
}

char uartRead(void) {
	// Wait for a character to be received
    while (!(UCSR1A & (1 << RXC1)));
    
	// Get the character from the UART
	return UDR1;
}

int uartPutChar(char character, FILE *stream) {
	uartWrite(character);
	return 0;
}

int uartGetChar(FILE *stream) {
	return uartRead();
}