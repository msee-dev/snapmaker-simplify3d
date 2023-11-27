;  Snapmaker 2.0 startingGcode 

G28 ; home all axes
M140 S[bed0_temperature] ; Set heated bed temp
M104 S[extruder0_temperature] T0 ; Set extruder temp
M104 S[extruder1_temperature] T1 ; Set extruder temp
M107 S0 T0; turn off left extruder fan
M107 S0 T1 ; turn off right extruder fan
M109 S[extruder0_temperature] T0 ; Wait for left extruder temp
M109 S[extruder1_temperature] T1 ; Wait for right extruder temp
M190 S[bed0_temperature] ; Wait for heated bed temp

T0 ; select left extruder
G90 ; Set all axes to absolute
G1 X-12 Y10 F3000 ; Move to X-12 & Y10 & set the feedrate to 3000mm/min
G1 Z0 F1800 ; Move to Z0 & set the feedrate to 1800mm/min
G92 E0 ; Set extruder position to 0
G1 Z0.15 F1200 ; Move Z to .15mm
G1 E11 F300 ; Extrude 11mm of filament at 300mm/min
G1 X10 E20 F1200 ; Extrude 20mm and slow wipe extruder
G1 Z0.5 F4000 ; Lift Z to .5mm
G92 E-1 ; Set filament position to -1
G1 E0 F200 ; Move filament position to 0 & Prime the extruder


T1 ; select right extruder
G90 ; Set all axes to absolute
G1 X-12 Y15 F3000 ; Move to X-12 & Y10 & set the feedrate to 3000mm/min
G1 Z0 F1800 ; Move to Z0 & set the feedrate to 1800mm/min
G92 E0 ; Set extruder position to 0
G1 Z0.15 F1200 ; Move Z to .15mm
G1 E11 F300 ; Extrude 11mm of filament at 300mm/min
G1 X10 E20 F1200 ; Extrude 20mm and slow wipe extruder
G1 Z0.5 F4000 ; Lift Z to .5mm
G92 E-1 ; Set filament position to -1
G1 E0 F200 ; Move filament position to 0 & Prime the extruder

;  End of startingGcode
