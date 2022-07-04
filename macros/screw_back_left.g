G91              ; relative positioning
G1 Z5 F360       ; lift Z by 5mm
G90              ; absolute positioning
G1 X5 Y113 F6000 ; move to screw position
G91              ; relative positioning
G1 Z-5 F360      ; put Z back
G90              ; absolute positioning