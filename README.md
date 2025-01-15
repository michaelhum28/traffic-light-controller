# Traffic-Light-Controller

This repository contains the completed implementation of a **Universal Asynchronous Receiver-Transmitter (UART)** in VHDL, integrated with a traffic light controller to create a debuggable real-time system.  

## Features  
- **UART Implementation:** Includes fully functional transmitter, receiver, baud rate generator, and UART registers.  
- **Traffic Light Controller:** Debug messages are transmitted for each state of the traffic light finite state machine (FSM).  
- **Structural VHDL Design:** Designed entirely at the structural level, adhering to strict synchronous circuit constraints.  
- **FPGA Deployment:** Successfully implemented and tested on the DE-2 Altera FPGA board.  

## Functionality  
1. Asynchronous data transmission and reception using the UART.  
2. Real-time debug messaging for four traffic light states.
3. Customizable baud rate generator supporting multiple baud rates.  
4. Error detection using parity bits.  