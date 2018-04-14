/************************************************************************
	uart.h

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

#ifndef UART_H_
#define UART_H_

// Global FILE stream for STDIO use
FILE uartStream;

// Function prototypes
void uartInitialize(void);
void uartWrite(char x);
uint8_t uartCharIsWaiting(void);
char uartRead(void);
int uartPutChar(char x, FILE *stream);
int uartGetChar(FILE *stream);

#endif /* UART_H_ */