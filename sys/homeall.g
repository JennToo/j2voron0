; homeall.g
; called to home all axes
;
; generated by RepRapFirmware Configuration Tool v3.3.10 on Mon May 30 2022 14:36:00 GMT-0500 (Central Daylight Time)
G91                  ; relative positioning
G1 H2 Z5 F6000       ; lift Z relative to current position
G1 H1 X125 Y125 F600 ; move quickly to X or Y endstop and stop there (first pass)
G1 H1 X125           ; home X axis
G1 H1 Y125           ; home Y axis
G1 X-5 Y-5 F6000     ; go back a few mm
G1 H1 X125 F180      ; move slowly to X axis endstop once more (second pass)
G1 H1 Y125           ; then move slowly to Y axis endstop
G1 H1 Z-126.5 F180   ; move Z down stopping at the endstop
G90                  ; absolute positioning
G92 Z-1.5            ; set Z position to axis minimum (you may want to adjust this)

; Uncomment the following lines to lift Z after probing
;G91                 ; relative positioning
;G1 Z5 F100          ; lift Z relative to current position
;G90                 ; absolute positioning


