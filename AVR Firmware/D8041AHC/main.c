/************************************************************************
	main.c

    D8041AHC Dumper
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

// Use the internal clock
#define F_CPU 16000000UL

// Global includes
#include <avr/io.h>
#include <stdio.h>
#include <util/delay.h>

#include "hardwaremap.h"
#include "uart.h"

#define INPUT 0
#define OUTPUT 1

#define CMD_DELAY 2

void setDataDirection(uint8_t direction)
{
	if (direction == INPUT) {
			// Set databus pins to input
			D0_DDR &= ~D0;
			D1_DDR &= ~D1;
			D2_DDR &= ~D2;
			D3_DDR &= ~D3;
			D4_DDR &= ~D4;
			D5_DDR &= ~D5;
			D6_DDR &= ~D6;
			D7_DDR &= ~D7;
			
			// Turn on weak pull-ups
			D0_PORT |= D0;
			D1_PORT |= D1;
			D2_PORT |= D2;
			D3_PORT |= D3;
			D4_PORT |= D4;
			D5_PORT |= D5;
			D6_PORT |= D6;
			D7_PORT |= D7;
	} else {
			// Set databus pins to output
			D0_DDR |= D0;
			D1_DDR |= D1;
			D2_DDR |= D2;
			D3_DDR |= D3;
			D4_DDR |= D4;
			D5_DDR |= D5;
			D6_DDR |= D6;
			D7_DDR |= D7;
			
			// Set the databus pins to 0
			D0_PORT &= ~D0;
			D1_PORT &= ~D1;
			D2_PORT &= ~D2;
			D3_PORT &= ~D3;
			D4_PORT &= ~D4;
			D5_PORT &= ~D5;
			D6_PORT &= ~D6;
			D7_PORT &= ~D7;
	}
}

// Function to initialise the hardware
void hardwareInialize(void) 
{
	setDataDirection(INPUT);

	// Set the address pins to output
	AD0_DDR |= AD0;
	AD1_DDR |= AD1;
	AD2_DDR |= AD2;
	
	// Set the pins to 0
	AD0_PORT &= ~AD0;
	AD1_PORT &= ~AD1;
	AD2_PORT &= ~AD2;
	
	// Set the miscellaneous pins to output
	PROG_DDR |= PROG;
	TEST0_DDR |= TEST0;
	NRESET_DDR |= NRESET;
	
	// Set the pins to 0
	PROG_PORT &= ~PROG;
	TEST0_PORT |= TEST0;
	NRESET_PORT &= ~NRESET;
}

int16_t main(void)
{
	// Initialize the hardware
	hardwareInialize();
	uartInitialize();			// Initialize the UART library
	
	// Output some title text
	printf("Domesday86.com: D8041AHC Internal ROM Dumping utility\r\n");
	
	while(1) { // Test loop
		
	// Set the initial ROM address (10-bit value)
	uint16_t romAddress = 0x00;
	
	// Keep track of the number of bytes presented in the data field
	uint16_t columnCount = 0;
	
	// Keep track of the data values for the checksum
	uint16_t dataTotal = 0; // Maximum value of 16*256 = 4,096
	
	// Data byte value read from chip
	uint16_t dataByte = 0;
	
	// Main program loop (0x400 = 1024 = 1K ROM)
    while (romAddress < 0x400) {
		// Step 3: TEST0 = 0V
		TEST0_PORT &= ~TEST0;
		_delay_ms(CMD_DELAY);
		
		// Step 4: EA = 7V (fixed in circuit)
		
		// Step 5: Address applied to BUS and P20-1
		setDataDirection(OUTPUT);
				
		// Place the required address on the databus and address lines
		if (romAddress & 0b0000000001)  D0_PORT |=  D0; else D0_PORT  &= ~D0;
		if (romAddress & 0b0000000010)  D1_PORT |=  D1; else D1_PORT  &= ~D1;
		if (romAddress & 0b0000000100)  D2_PORT |=  D2; else D2_PORT  &= ~D2;
		if (romAddress & 0b0000001000)  D3_PORT |=  D3; else D3_PORT  &= ~D3;
		if (romAddress & 0b0000010000)  D4_PORT |=  D4; else D4_PORT  &= ~D4;
		if (romAddress & 0b0000100000)  D5_PORT |=  D5; else D5_PORT  &= ~D5;
		if (romAddress & 0b0001000000)  D6_PORT |=  D6; else D6_PORT  &= ~D6;
		if (romAddress & 0b0010000000)  D7_PORT |=  D7; else D7_PORT  &= ~D7;
		if (romAddress & 0b0100000000) AD0_PORT |= AD0; else AD0_PORT &= ~AD0;
		if (romAddress & 0b1000000000) AD1_PORT |= AD1; else AD1_PORT &= ~AD1;
		
		AD2_PORT &= ~AD2; // Unused, always zero
		
		// Is this byte the start of the data field?
		if (columnCount == 0) {
			// Output the Intel HEX header for this line
			printf(":"); // Intel HEX start code
			printf("10"); // Intel HEX byte count (0x10 = d16)
			printf("%04X", romAddress); // Intel HEX 16-bit address of data field start location
			printf("00"); // Intel HEX record type (00 = data)
			
			// Reset the data total for the checksum
			dataTotal = 0;
		}
		
		// Step 6: NRESET = 5V (latch address)
		NRESET_PORT |= NRESET;
		_delay_ms(CMD_DELAY);
		_delay_ms(CMD_DELAY);
		_delay_ms(CMD_DELAY);
		_delay_ms(CMD_DELAY);
		setDataDirection(INPUT);
		_delay_ms(CMD_DELAY);
		
		// Step 7: Data applied to BUS
		// Skip this step
		
		// Step 8: Vdd = 25V (programming power)
		// Skip this step
		
		// Step 9: PROG = 0V
		//PROG_PORT &= ~PROG;
		//_delay_ms(CMD_DELAY);
		//_delay_ms(60);
		
		// Step 10: Vdd = 5V (fixed in circuit)
		
		// Step 11: TEST0 = 5V (verify mode)
		TEST0_PORT |= TEST0;
		_delay_ms(CMD_DELAY);
		_delay_ms(CMD_DELAY);
		_delay_ms(CMD_DELAY);
		_delay_ms(CMD_DELAY);
		
		// Step 12: Read and verify data on BUS
		
		// Read the byte on the databus
		dataByte = 0;
		if ((D0_PIN & D0) != 0) dataByte += 0b00000001;
		if ((D1_PIN & D1) != 0) dataByte += 0b00000010;
		if ((D2_PIN & D2) != 0) dataByte += 0b00000100;
		if ((D3_PIN & D3) != 0) dataByte += 0b00001000;
		if ((D4_PIN & D4) != 0) dataByte += 0b00010000;
		if ((D5_PIN & D5) != 0) dataByte += 0b00100000;
		if ((D6_PIN & D6) != 0) dataByte += 0b01000000;
		if ((D7_PIN & D7) != 0) dataByte += 0b10000000;
		
		printf("%02X", dataByte);
		
		// Add the byte to the checksum total
		dataTotal += dataByte;
		
		// Step 13: TEST0 = 0V
		TEST0_PORT &= ~TEST0;
		_delay_ms(CMD_DELAY);
		
		// Step 14: NRESET = 0V
		NRESET_PORT &= ~NRESET;
		_delay_ms(CMD_DELAY);
		
		// Repeat for next address
		romAddress++;
		
		// Pretty print
		columnCount++;
		
		// Is this byte the end of the data field?
		if (columnCount == 16) {
			// Output the checksum for the previous line
			dataTotal = dataTotal & 0xFF; // Truncate
			dataTotal = ~dataTotal; // Invert
			dataTotal++; // +1 = two's complement.
			dataTotal = dataTotal & 0xFF; // Truncate
					
			printf("%02X\r\n", dataTotal);
			
			// Next line
			columnCount = 0;
		}
    }
	
	// Output the end of data Intel HEX field
	printf(":00000001FF\r\n\r\n");
	} // Test loop
	
	// Done... loop away
	while(1);
}

