09/24/2024

FW 6.05 release, fixed the bug that shuts down when running, contributed by Syler Clayton. Thanks to him!

https://sylerclayton.com/blog/Fixed-Critical-Bug-In-Ubox-VESC-Controller-Firmware/

And added the auto off support to Ubox V2.1 75V, the planning upgrade model of the Ubox V2 75V.

NOTE: Use latching button to do upgrade firmware! Because the MCU will reset itself to start to reprogram itself, and a reset it will release the power enable pin, cause power off, will brick the controller！Latching button will forcing to make power on, prevent bricking.

----
09/09/2023

Ubox single 100V 100A, Ubox ALU 80V 100A, Ubox ALU 85V 200A, are now support VESC's shutdown mode.

Support both momentary button and latching button now, we need to use momentary button instead of latching button to use auto shutdown function.

NOTE: Use latching button to do upgrade firmware! Because the MCU will reset itself to start to reprogram itself, and a reset it will release the power enable pin, cause power off, will brick the controller！Latching button will forcing to make power on, prevent bricking.

When using momentaty button, press less than 1 second will make power on, then will excute shutdown as configured on VESC tool->App Config->ShutDown Mode. Hold press the button more than 2 seconds then release the button can force shutdown the controller.

The button light driver of Ubox single 100V 100A, Ubox AlU 80V 100A, and Ubox ALU 85V 200A, are just copies of the green and red LED of the VESC status lights, so right after power on, the green light will not on immediately till the VESC finish the boot-up. So do the force shutdown, the green light is still on if you not release the button, because push the button will force power on.

Ubox V2/V1 are not support this function, because there are controled by its internal 2.4G recevier.
Ubox single 75V 100A also not, very sorry.


07/13/2023


Update FW version 6.02

Added the new UBOX_SINGLE_85_200 firmware for our new Ubox ALU 85V 200A controller.

And raise the hardwarw limit of the input voltage of the Ubox ALU 80V 100A to 85V, in order to make convenience for the users who want run it with 20S battery, its default limit is 78V now.


----------
This is the compliled firmware of the Ubox family, version 5.02 and 5.03, and 6.0.

Ubox is officially supported in the VESC tool 6.0 now.

But we are sorry that the hardware name in the firmware are re-arranged, so the 6.0 VESC tool cann't match them automatically. So please download the right file for your hardware then upgrade them manually by "custom file" mode. After this, the newer firmware will recognize and upgrade by VESC tool  automatically.

Than you.
