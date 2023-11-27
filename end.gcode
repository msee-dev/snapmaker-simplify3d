;  Snapmaker 2.0 endingGcode 
G1 E-1 F300 ; Retract the filament a bit before lifting the nozzle
M107 S0 ; turn off left extruder fan
M107 S0 P1 ; turn off right extruder fan
M104 S0 T0 ; turn off left extruder
M104 S0 T1 ; turn off right extruder
M140 S0 ; turn off heated build platform
G28 ; Home Z
M84 ; disable motors
;  End of endingGcode 


