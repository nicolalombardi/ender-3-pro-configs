G90 ; use absolute coordinates
M83 ; extruder relative mode
M140 S{first_layer_bed_temperature[0]} ; set final bed temp
G28 ; home all axis
G29 A ; Activate the UBL system.
G29 L0; Load UBL mesh in slot 0
G29 J ; Quick 3-point level
G29 F10.0 ; Set fade height to 10mm
G1 Z5 ; Raise the nozzle a bit to avoid leaving filament on the bed
G1 X0 Y0; Move to the expected home position
M104 S{first_layer_temperature[0]} ; set final nozzle temp
M190 S{first_layer_bed_temperature[0]} ; wait for bed temp to stabilize
M109 S{first_layer_temperature[0]} ; wait for nozzle temp to stabilize
G1 Z1 ; Lower the nozzle closer to the bed
G1 Z0.28 F240
G92 E0
G1 Y140 E10 F1500 ; prime the nozzle
G1 X2.3 F5000
G92 E0
G1 Y10 E10 F1200 ; prime the nozzle
G92 E0