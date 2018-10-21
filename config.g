; Configuration file for Duet WiFi (firmware version 1.21)
; executed by the firmware on start-up
;
; generated by RepRapFirmware Configuration Tool on Sun Oct 21 2018 08:01:55 GMT-0700 (Mountain Standard Time)

; General preferences
G90                                                ; Send absolute coordinates...
M83                                                ; ...but relative extruder moves
M555 P1                                            ; Set firmware compatibility to look like RepRapFirmare

; Network
M550 PEnder3                                       ; Set machine name
M552 S1                                            ; Enable network
M587 S"SSID" P"PASSWD"                             ; Configure access point. You can delete this line once connected
M586 P0 S1                                         ; Enable HTTP
M586 P1 S0                                         ; Disable FTP
M586 P2 S0                                         ; Disable Telnet

; Drives
M569 P0 S1                                         ; Drive 0 goes forwards
M569 P1 S1                                         ; Drive 1 goes forwards
M569 P2 S0                                         ; Drive 2 goes backwards
M569 P3 S0                                         ; Drive 3 goes backwards
M350 X16 Y16 Z16 E16 I1                            ; Configure microstepping with interpolation
M92 X80 Y80 Z400 E410                              ; Set steps per mm
M566 X900 Y900 Z24 E120                            ; Set maximum instantaneous speed changes (mm/min)
M203 X24000 Y24000 Z300 E480                       ; Set maximum speeds (mm/min)
M201 X400 Y400 Z100 E250                           ; Set accelerations (mm/s^2)
M906 X800 Y800 Z800 E800 I30                       ; Set motor currents (mA) and motor idle factor in per cent
M84 S30                                            ; Set idle timeout

; Axis Limits
M208 X0 Y0 Z0 S1                                   ; Set axis minima
M208 X230 Y230 Z260 S0                             ; Set axis maxima

; Endstops
M574 X1 Y1 S1                                      ; Set active high endstops

; Z-Probe
M574 Z1 S2                                         ; Set endstops controlled by probe
M307 H2 A-1 C-1 D-1                                ; Disable heater on PWM channel for BLTouch
M558 P9 H5 F120 T6000                              ; Set Z probe type to bltouch and the dive height + speeds
G31 P25 X-47 Y0 Z0                                 ; Set Z probe trigger value, offset and trigger height
M557 X15:215 Y15:215 S20                           ; Define mesh grid

; Heaters
M305 P0 T100000 B4138 C0 R4700                     ; Set thermistor + ADC parameters for heater 0
M143 H0 S120                                       ; Set temperature limit for heater 0 to 120C
M305 P1 T100000 B4725 C7.060000e-8 R4700           ; Set thermistor + ADC parameters for heater 1
M143 H1 S280                                       ; Set temperature limit for heater 1 to 280C

M307 H0 A160.1, C694.3, D3.6 B0                    ; Set heater0 calibration
M307 H1 A358.9, C166.1, D4.6 B0                    ; Set heater1 calibration

; Fans
M106 P0 S0 I0 F500 H-1                             ; Set fan 0 value, PWM signal inversion and frequency. Thermostatic control is turned off
M106 P1 S1 I0 F500 H-1                             ; Set fan 1 value, PWM signal inversion and frequency. Thermostatic control is turned off
M106 P2 S1 I0 F500 H-1                             ; Set fan 2 value, PWM signal inversion and frequency. Thermostatic control is turned off

; Tools
M563 P0 D0 H1                                      ; Define tool 0
G10 P0 X0 Y0 Z0                                    ; Set tool 0 axis offsets
G10 P0 R0 S0                                       ; Set initial tool 0 active and standby temperatures to 0C

; Automatic power saving
M911 S10 R11 P"M913 X0 Y0 G91 M83 G1 Z3 E-5 F1000" ; Set voltage thresholds and actions to run on power loss

; Custom settings are not configured
