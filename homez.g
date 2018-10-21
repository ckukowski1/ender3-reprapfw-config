; homez.g
; called to home the Z axis
;
; generated by RepRapFirmware Configuration Tool on Sat Oct 06 2018 22:57:33 GMT-0700 (Mountain Standard Time)
G91               ; relative positioning
G1 Z5 F6000 S2    ; lift Z relative to current position
G1 S1 Z-265 F1800 ; move Z down until the endstop is triggered
G92 Z0            ; set Z position to axis minimum (you may want to adjust this)

; Uncomment the following lines to lift Z after probing
;G91              ; relative positioning
;G1 S2 Z5 F100    ; lift Z relative to current position
;G90              ; absolute positioning