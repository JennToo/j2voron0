# Config Notes

[RRF Config Tool][config-tool]

Based on Klipper config from the [Voron-0][klipper] repo.

## General

Enable `config-override.g`

Geometry: CoreXY

 - X: min 0 max 120
 - Y: min 0 max 120
 - Z: min -1.5 max 120

Homing:

 - Speed 1: 10
 - Speed 2: 3
 - Travels: 100
 - Z-dive: 5 ???

## IO Mapping

Drives:

 - X: driver0, endstop io5 alpu
 - Y: driver1, endstop io6 alpu
 - Z: driver2, endstop io4 alpu

Heaters:

 - Bed: 0, out0, temp0
 - Nozzle: 1, out1, temp1

Fans:

 - Fan 0 (hotend): out3
 - Fan 1 (part cooling): out4
 - Fan 2 (controller): out5

Z-probe:

 - Not configured

## Motors

Currents are peak, vs Klipper which is RMS. Multiplied Klipper values by 1.414

TODO: Verify currents against datasheets once I get the motors
TODO: Will need to validate jerk, these are just the RRF defaults

| Motor | Microstep | Steps/mm | Speed Change | Max Speed | Acceleration | Current |
|-------|-----------|----------|--------------|-----------|--------------|---------|
| X     | x32 (off) |      160 |           15 |       200 |         2000 |  707 mA |
| Y     | x32 (off) |      160 |           15 |       200 |         2000 |  707 mA |
| Z     | x32 (off) |      800 |            1 |        15 |           45 |  523 mA |
| E0    | x32 (off) |    287.9 |            2 |        20 |          250 |  424 mA |

## Endstops

 - X: Switch, High End
 - Y: Switch, High End
 - Z: Switch, Low End

## Heaters

Heated Bed: 120 C, 100%, 100k, 4981, 1.632834e-7

## Fans

Frequency 500 Hz ???

 - Hotend: speed 0, Thermo Controlled on H1, 45 C
 - Part Cooling: speed 0
 - Controller: speed 0 TODO

[config-tool]: https://configtool.reprapfirmware.org/Start
[klipper]: https://github.com/VoronDesign/Voron-0/blob/b0ee0538a3ab36cf6b478b0bbd259e3c688c18d5/Firmware/skr-mini-E3-v3.0.cfg