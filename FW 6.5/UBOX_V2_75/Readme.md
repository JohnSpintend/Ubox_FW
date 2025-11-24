24/11/2025
----
The light control of Ubox V2.1 is connected to the pin PB3 and PB4 of the MCU of VESC controller.

With a lisp script, we can implement the brake light control. The VESC project did not support PB3, PB4 access natively.

previously, the solution is to custimize the VESC firmware. Now we trun to use the *native lib* to access PB3 and PB4. 
In this way, we don't need to customize the VESC firmware.

