/************************************************************************
	hardwaremap.h

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

#ifndef HARDWAREMAP_H_
#define HARDWAREMAP_H_

// Target device: ATmega32u4 (Arduino Leonardo)

// D0 (PD1/Digital2)
#define D0_PORT	PORTD
#define D0_PIN	PIND
#define D0_DDR	DDRD
#define D0		(1 << 1)

// D1 (PD0/Digital3)
#define D1_PORT	PORTD
#define D1_PIN	PIND
#define D1_DDR	DDRD
#define D1		(1 << 0)

// D2 (PD4/Digital4)
#define D2_PORT	PORTD
#define D2_PIN	PIND
#define D2_DDR	DDRD
#define D2		(1 << 4)

// D3 (PC6/Digital5)
#define D3_PORT	PORTC
#define D3_PIN	PINC
#define D3_DDR	DDRC
#define D3		(1 << 6)

// D4 (PD7/Digital6)
#define D4_PORT	PORTD
#define D4_PIN	PIND
#define D4_DDR	DDRD
#define D4		(1 << 7)

// D5 (PE6/Digital7)
#define D5_PORT	PORTE
#define D5_PIN	PINE
#define D5_DDR	DDRE
#define D5		(1 << 6)

// D6 (PB4/Digital8)
#define D6_PORT	PORTB
#define D6_PIN	PINB
#define D6_DDR	DDRB
#define D6		(1 << 4)

// D7 (PB5/Digital9)
#define D7_PORT	PORTB
#define D7_PIN	PINB
#define D7_DDR	DDRB
#define D7		(1 << 5)



// AD0 (PB6/Digital10)
#define AD0_PORT	PORTB
#define AD0_PIN		PINB
#define AD0_DDR		DDRB
#define AD0			(1 << 6)

// AD1 (PB7/Digital11)
#define AD1_PORT	PORTB
#define AD1_PIN		PINB
#define AD1_DDR		DDRB
#define AD1			(1 << 7)

// AD2 (PD6/Digital12)
#define AD2_PORT	PORTD
#define AD2_PIN		PIND
#define AD2_DDR		DDRD
#define AD2			(1 << 6)



// PROG (PC7/Digital13)
#define PROG_PORT	PORTC
#define PROG_PIN	PINC
#define PROG_DDR	DDRC
#define PROG		(1 << 7)

// TEST0 (PF7/Analogue0)
#define TEST0_PORT	PORTF
#define TEST0_PIN	PINF
#define TEST0_DDR	DDRF
#define TEST0		(1 << 7)

// NRESET (PF6/Analogue1)
#define NRESET_PORT	PORTF
#define NRESET_PIN	PINF
#define NRESET_DDR	DDRF
#define NRESET		(1 << 6)

#endif /* HARDWAREMAP_H_ */