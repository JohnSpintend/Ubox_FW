24/11/2025
----
The light control of Ubox V2.1 is connected to the pin PB3 and PB4 of the MCU of VESC controller.

With a lisp script, we can implement the brake light control. 

The VESC project did not support PB3, PB4 access natively. Previously, the solution is to customize the VESC firmware. Now we turn to use the [*native lib*](https://github.com/JohnSpintend/vesc_ubox_sources/tree/main/lisp_code_for_ubox_v2.1_brake_light_control) to access PB3 and PB4. In this way, we don't need to customize the VESC firmware. The Ubox V2.1 shares V2's firmware now.

