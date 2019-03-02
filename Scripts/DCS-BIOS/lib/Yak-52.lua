BIOS.protocol.beginModule("Yak-52", 0x2000)
BIOS.protocol.setExportModuleAircrafts({"Yak-52"})

local documentation = moduleBeingDefined.documentation

local document = BIOS.util.document

local parse_indication = BIOS.util.parse_indication

local definePushButton = BIOS.util.definePushButton
local definePotentiometer = BIOS.util.definePotentiometer
local defineRotary = BIOS.util.defineRotary
local defineTumb = BIOS.util.defineTumb
local defineToggleSwitch = BIOS.util.defineToggleSwitch
local defineFloat = BIOS.util.defineFloat
local defineIndicatorLight = BIOS.util.defineIndicatorLight

--Remove Pilot Arg# 165

--- Fore Pit
    -- Fore Main Panel
definePushButton("WBRAKES_LOCK", 2, 3028, 4,"Fore Main Panel" , "Wheel Brakes Lock")
defineToggleSwitch("SMOKE", 6, 3039, 190,"Fore Main Panel" , "Smoke Apparat")
defineToggleSwitch("STARTER_COVER", 3, 3035, 13,"Fore Main Panel" , "Starter Button Cover")
definePushButton("STARTER", 3, 3039, 14,"Fore Main Panel" , "Starter Button")
defineTumb("MAGNET_SEL", 3, 3003, 10, 0.1, {0.0, 0.3}, nil, false, "Fore Main Panel", "Magnet Selector")
definePushButton("LAMP_TEST", 4, 3049, 8,"Fore Main Panel" , "Lamp Test Button")
definePushButton("STALL_TEST", 17, 3001, 41,"Fore Main Panel" , "Stall Warning Test Button")
definePushButton("ACCEL_BTN", 6, 3001, 45,"Fore Main Panel" , "Stall Warning Test Button")
defineRotary("ALT_KNOB", 6, 3004, 114, "Fore Main Panel", "Altimeter Knob")
defineRotary("AHORIZON_ZERO", 6, 3012, 143, "Fore Main Panel", "Artificial Horizon Zeroing")
definePushButton("AHORIZON_LOCK", 6, 3020, 145,"Fore Main Panel" , "Artificial Horizon LOCK Button")
defineToggleSwitch("UCE_LOCK", 2, 3002, 33,"Fore Main Panel" , "Undercarriage Extension Lock")
defineRotary("HSI_KNOB", 22, 3001, 155, "Fore Main Panel", "HSI Knob")
definePushButton("VOLTAMP_BTN", 15, 3001, 176,"Fore Main Panel" , "Voltamperemeter Button")
definePushButton("FUEL_GAUGE_TEST", 16, 3001, 177,"Fore Main Panel" , "Fuel Gauge Test Button")
defineToggleSwitch("FUEL_GAUGE_DIM", 16, 3002, 178,"Fore Main Panel" , "Fuel Gauge Dimmer")

    -- Starboard Circuit Breakers Panel
defineToggleSwitch("CB_BATTERY", 4, 3001, 96,"Circuit Breakers" , "Battery Selector")
defineToggleSwitch("CB_GENERATOR", 4, 3004, 97,"Circuit Breakers" , "Generator CB")
defineToggleSwitch("CB_IGNITION", 4, 3007, 98,"Circuit Breakers" , "Ignition CB")
defineToggleSwitch("CB_PITOT", 4, 3010, 99,"Circuit Breakers" , "Pitot Heater CB")
definePushButton("CB_OILDIL", 4, 3016, 232,"Circuit Breakers" , "Oil Dilution Button")
defineToggleSwitch("CB_E_HEAT", 4, 3018, 233,"Circuit Breakers" , "SSKUA-1 Heater CB")
defineToggleSwitch("CB_STALL", 4, 3021, 234,"Circuit Breakers" , "SSKUA-1 CB")

---Gauges
defineFloat("FRONT_ACCEL_MINUTE", 42, {-0.6, 0.9}, "Gauges", "Fore Accelerometer Minute")
defineFloat("FRONT_ACCEL_MIN", 44, {-0.6, 0.9}, "Gauges", "Fore Accelerometer Min")
defineFloat("FRONT_ACCEL_MAX", 43, {-0.6, 0.9}, "Gauges", "Fore Accelerometer Max")
defineFloat("REAR_ACCEL_MINUTE", 46, {-0.6, 0.9}, "Gauges", "Rear Accelerometer Minute")
defineFloat("REAR_ACCEL_MIN", 48, {-0.6, 0.9}, "Gauges", "Rear Accelerometer Min")
defineFloat("REAR_ACCEL_MAX", 47, {-0.6, 0.9}, "Gauges", "Rear Accelerometer Max")
defineFloat("FRONT_AIRSPEED", 109, {0.0, 0.5}, "Gauges", "Fore Airspeed Gauge")
defineFloat("REAR_AIRSPEED", 110, {0.0, 0.5}, "Gauges", "Rear Airspeed Gauge")
defineFloat("FRONT_ALT100", 111, {0.0, 1.0}, "Gauges", "Fore Altimeter 100")
defineFloat("FRONT_ALT1000", 112, {0.0, 1.0}, "Gauges", "Fore Altimeter 1000")
defineFloat("FRONT_ALT_PRESS", 113, {0.0, 1.0}, "Gauges", "Fore Altimeter Set Pressure")
defineFloat("REAR_ALT100", 115, {0.0, 1.0}, "Gauges", "Rear Altimeter 100")
defineFloat("REAR_ALT1000", 116, {0.0, 1.0}, "Gauges", "Rear Altimeter 1000")
defineFloat("REAR_ALT_PRESS", 117, {0.0, 1.0}, "Gauges", "Rear Altimeter Set Pressure")
defineFloat("FRONT_VARIOMETER", 161, {-1.0, 1.0}, "Gauges", "Fore Variometer Gauge")
defineFloat("FRONT_TURN", 162, {-1.0, 1.0}, "Gauges", "Fore Turn Gauge")
defineFloat("FRONT_SLIP", 163, {-1.0, 1.0}, "Gauges", "Fore Sideslip Gauge")
defineFloat("REAR_VARIOMETER", 164, {-1.0, 1.0}, "Gauges", "Rear Variometer Gauge")
defineFloat("REAR_TURN", 165, {-1.0, 1.0}, "Gauges", "Rear Turn Gauge")
defineFloat("REAR_SLIP", 166, {-1.0, 1.0}, "Gauges", "Rear Sideslip Gauge")
defineFloat("FRONT_AH_BANK", 146, {1.0, -1.0}, "Gauges", "Fore Artificial Horizon Bank")
defineFloat("FRONT_AH_PITCH", 147, {1.0, -1.0}, "Gauges", "Fore Artificial Horizon Pitch")
defineFloat("FRONT_AH_SLIP", 148, {1.0, -1.0}, "Gauges", "Fore Artificial Horizon Sideslip")
defineFloat("REAR_AH_BANK", 152, {1.0, -1.0}, "Gauges", "Rear Artificial Horizon Bank")
defineFloat("REAR_AH_PITCH", 153, {1.0, -1.0}, "Gauges", "Rear Artificial Horizon Pitch")
defineFloat("REAR_AH_SLIP", 154, {1.0, -1.0}, "Gauges", "Rear Artificial Horizon Sideslip")
defineFloat("FRONT_TACHO", 106, {0.0, 1.0}, "Gauges", "Fore Tachometer Gauge")
defineFloat("REAR_TACHO", 106, {0.0, 1.0}, "Gauges", "Rear Tachometer Gauge")
defineFloat("MANIFOLD_PRESS", 108, {0.0, 1.0}, "Gauges", "Manifold Pressure Gauge")
defineFloat("MANIFOLD_TEMP", 160, {-1.0, 0.0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6}, "Gauges", "Manifold Temperature Gauge")
defineFloat("VOLTMETER_G", 175, {-0.2, 0.6}, "Gauges", "Volt Amperemeter Gauge")
defineFloat("FRONT_UGR4K_CURR_CRS", 156, {0.0, 1.0}, "Gauges", "Fore UGR-4K Current Course")
defineFloat("FRONT_UGR4K_SET_CRS", 157, {0.0, 1.0}, "Gauges", "Fore UGR-4K Set Course")
defineFloat("FRONT_UGR4K_BCN_CRS", 158, {0.0, 1.0}, "Gauges", "Fore UGR-4K Beacon Course")
defineFloat("REAR_UGR4K_CURR_CRS", 280, {0.0, 1.0}, "Gauges", "Rear UGR-4K Current Course")
defineFloat("REAR_UGR4K_SET_CRS", 281, {0.0, 1.0}, "Gauges", "Rear UGR-4K Set Course")
defineFloat("REAR_UGR4K_BCN_CRS", 282, {0.0, 1.0}, "Gauges", "Rear UGR-4K Beacon Course")
defineFloat("FRONT_OIL_PRESS", 169, {-1.0, 0.0, 1.0}, "Gauges", "Fore Oil Pressure Gauge")
defineFloat("FRONT_OIL_TEMP", 167, {-1.0, 0.0, 1.0}, "Gauges", "Fore Oil Temperature Gauge")
defineFloat("FRONT_FUEL_PRESS", 168, {-1.0, 0.0, 1.0}, "Gauges", "Fore Fuel Pressure Gauge")
defineFloat("REAR_OIL_PRESS", 172, {-1.0, 0.0, 1.0}, "Gauges", "Rear Oil Pressure Gauge")
defineFloat("REAR_OIL_TEMP", 170, {-1.0, 0.0, 1.0}, "Gauges", "Rear Oil Temperature Gauge")
defineFloat("REAR_FUEL_PRESS", 171, {-1.0, 0.0, 1.0}, "Gauges", "Rear Fuel Pressure Gauge")
defineFloat("FRONT_CYL_TEMP", 173, {-0.05, 0.35}, "Gauges", "Fore Cylinder Heads Temperature Gauge")
defineFloat("REAR_CYL_TEMP", 174, {-0.05, 0.35}, "Gauges", "Rear Cylinder Heads Temperature Gauge")
defineFloat("FRONT_PNEU_MAIN_PRESS", 37, {0.0, 1.0}, "Gauges", "Fore Pneumatic Main Pressure Gauge")
defineFloat("FRONT_PNEU_STBY_PRESS", 38, {0.0, 1.0}, "Gauges", "Fore Pneumatic Standby Pressure Gauge")
defineFloat("REAR_PNEU_MAIN_PRESS", 39, {0.0, 1.0}, "Gauges", "Rear Pneumatic Main Pressure Gauge")
defineFloat("REAR_PNEU_STBY_PRESS", 40, {0.0, 1.0}, "Gauges", "Rear Pneumatic Standby Pressure Gauge")

--Warning, Caution and IndicatorLights
defineIndicatorLight("F_L_GEAR_UP", 17, "Warning, Caution and IndicatorLights","Front Left Gear UP Lamp (red)")
defineIndicatorLight("F_N_GEAR_UP", 18, "Warning, Caution and IndicatorLights","Front Nose Gear UP Lamp (red)")
defineIndicatorLight("F_R_GEAR_UP", 19, "Warning, Caution and IndicatorLights","Front Right Gear UP Lamp (red)")
defineIndicatorLight("F_L_GEAR_DOWN", 20, "Warning, Caution and IndicatorLights","Front Left Gear DOWN Lamp (green)")
defineIndicatorLight("F_N_GEAR_DOWN", 21, "Warning, Caution and IndicatorLights","Front Nose Gear DOWN Lamp (green)")
defineIndicatorLight("F_R_GEAR_DOWN", 22, "Warning, Caution and IndicatorLights","Front Right Gear DOWN Lamp (green)")
defineIndicatorLight("R_L_GEAR_UP", 23, "Warning, Caution and IndicatorLights","Rear Left Gear UP Lamp (red)")
defineIndicatorLight("R_N_GEAR_UP", 24, "Warning, Caution and IndicatorLights","Rear Nose Gear UP Lamp (red)")
defineIndicatorLight("R_R_GEAR_UP", 25, "Warning, Caution and IndicatorLights","Rear Right Gear UP Lamp (red)")
defineIndicatorLight("R_L_GEAR_DOWN", 26, "Warning, Caution and IndicatorLights","Rear Left Gear DOWN Lamp (green)")
defineIndicatorLight("R_N_GEAR_DOWN", 27, "Warning, Caution and IndicatorLights","Rear Nose Gear DOWN Lamp (green)")
defineIndicatorLight("R_R_GEAR_DOWN", 28, "Warning, Caution and IndicatorLights","Rear Right Gear DOWN Lamp (green)")
defineIndicatorLight("F_FLAPS_UP", 29, "Warning, Caution and IndicatorLights","Front Flaps UP Lamp (green)")
defineIndicatorLight("F_FLAPS_DOWN", 30, "Warning, Caution and IndicatorLights","Front Flaps DOWN Lamp (yellow)")
defineIndicatorLight("R_FLAPS_UP", 31, "Warning, Caution and IndicatorLights","Rear Flaps UP Lamp (green)")
defineIndicatorLight("R_FLAPS_DOWN", 32, "Warning, Caution and IndicatorLights","Rear Flaps DOWN Lamp (yellow)")
defineIndicatorLight("F_STALL_WARNL", 56, "Warning, Caution and IndicatorLights","Front Stall Warning Lamp (red)")
defineIndicatorLight("F_SPEED_WARNL", 57, "Warning, Caution and IndicatorLights","Front Danger Speed Warning Lamp (yellow)")
defineIndicatorLight("F_METAL_WARNL", 58, "Warning, Caution and IndicatorLights","Front Metal Chips Warning Lamp (yellow)")
defineIndicatorLight("F_GEN_WARNL", 59, "Warning, Caution and IndicatorLights","Front Generator Fault Warning Lamp (red)")
defineIndicatorLight("F_MAXG_WARNL", 60, "Warning, Caution and IndicatorLights","Front Max G Warning Lamp (red)")
defineIndicatorLight("F_GYRO_WARNL", 61, "Warning, Caution and IndicatorLights","Front Gyro Compass Warning Lamp (yellow)")
defineIndicatorLight("F_STALL_HEAT_WARNL", 62, "Warning, Caution and IndicatorLights","Front Stall Heat Warning Lamp (green)")
defineIndicatorLight("F_PITOT_HEAT_WARNL", 63, "Warning, Caution and IndicatorLights","Front Pitot-Tube Heat Warning Lamp (green)")
defineIndicatorLight("R_MAXG_WARNL", 64, "Warning, Caution and IndicatorLights","Rear Max G Warning Lamp (red)")
defineIndicatorLight("R_STALL_WARNL", 65, "Warning, Caution and IndicatorLights","Rear Stall Warning Lamp (red)")
defineIndicatorLight("R_SPEED_WARNL", 66, "Warning, Caution and IndicatorLights","Rear Danger Speed Warning Lamp (yellow)")
defineIndicatorLight("R_GEN_WARNL", 67, "Warning, Caution and IndicatorLights","Rear Generator Fault Warning Lamp (red)")
defineIndicatorLight("R_FUEL_L_WARNL", 68, "Warning, Caution and IndicatorLights","Rear Fuel 12L Left Warning Lamp (red)")
defineIndicatorLight("R_FUEL_R_WARNL", 69, "Warning, Caution and IndicatorLights","Rear Fuel 12L Right Warning Lamp (red)")
defineIndicatorLight("R_BATT_WARNL", 70, "Warning, Caution and IndicatorLights","Rear Battery ON Warning Lamp (green)")
defineIndicatorLight("R_GYRO_WARNL", 71, "Warning, Caution and IndicatorLights","Rear Gyro Compass Warning Lamp (yellow)")
defineIndicatorLight("R_METAL_WARNL", 72, "Warning, Caution and IndicatorLights","Rear Metal Chips Warning Lamp (yellow)")
defineIndicatorLight("R_PITOT_HEAT_WARNL", 73, "Warning, Caution and IndicatorLights","Rear Pitot-Tube Heat Warning Lamp (green)")
defineIndicatorLight("R_STALL_HEAT_WARNL", 74, "Warning, Caution and IndicatorLights","Rear Stall Heat Warning Lamp (green)")
defineIndicatorLight("R_EMPTY_WARNL", 75, "Warning, Caution and IndicatorLights","Rear Empty Warning Lamp (green)")
defineIndicatorLight("R_FUEL_12_WARNL", 180, "Warning, Caution and IndicatorLights","Right Fueltank 12L Warning Lamp (red)")
defineIndicatorLight("R_FUEL_15_WARNL", 181, "Warning, Caution and IndicatorLights","Right Fueltank 15L Warning Lamp (white)")
defineIndicatorLight("R_FUEL_20_WARNL", 182, "Warning, Caution and IndicatorLights","Right Fueltank 20L Warning Lamp (white)")
defineIndicatorLight("R_FUEL_25_WARNL", 183, "Warning, Caution and IndicatorLights","Right Fueltank 25L Warning Lamp (white)")
defineIndicatorLight("R_FUEL_30_WARNL", 184, "Warning, Caution and IndicatorLights","Right Fueltank 30L Warning Lamp (white)")
defineIndicatorLight("R_FUEL_35_WARNL", 185, "Warning, Caution and IndicatorLights","Right Fueltank 35L Warning Lamp (white)")
defineIndicatorLight("R_FUEL_40_WARNL", 186, "Warning, Caution and IndicatorLights","Right Fueltank 40L Warning Lamp (white)")
defineIndicatorLight("R_FUEL_45_WARNL", 187, "Warning, Caution and IndicatorLights","Right Fueltank 45L Warning Lamp (white)")
defineIndicatorLight("R_FUEL_50_WARNL", 188, "Warning, Caution and IndicatorLights","Right Fueltank 50L Warning Lamp (white)")
defineIndicatorLight("R_FUEL_60_WARNL", 189, "Warning, Caution and IndicatorLights","Right Fueltank 60L Warning Lamp (white)")
defineIndicatorLight("L_FUEL_12_WARNL", 200, "Warning, Caution and IndicatorLights","Left Fueltank 12L Warning Lamp (red)")
defineIndicatorLight("L_FUEL_15_WARNL", 201, "Warning, Caution and IndicatorLights","Left Fueltank 15L Warning Lamp (white)")
defineIndicatorLight("L_FUEL_20_WARNL", 202, "Warning, Caution and IndicatorLights","Left Fueltank 20L Warning Lamp (white)")
defineIndicatorLight("L_FUEL_25_WARNL", 203, "Warning, Caution and IndicatorLights","Left Fueltank 25L Warning Lamp (white)")
defineIndicatorLight("L_FUEL_30_WARNL", 204, "Warning, Caution and IndicatorLights","Left Fueltank 30L Warning Lamp (white)")
defineIndicatorLight("L_FUEL_35_WARNL", 205, "Warning, Caution and IndicatorLights","Left Fueltank 35L Warning Lamp (white)")
defineIndicatorLight("L_FUEL_40_WARNL", 206, "Warning, Caution and IndicatorLights","Left Fueltank 40L Warning Lamp (white)")
defineIndicatorLight("L_FUEL_45_WARNL", 207, "Warning, Caution and IndicatorLights","Left Fueltank 45L Warning Lamp (white)")
defineIndicatorLight("L_FUEL_50_WARNL", 208, "Warning, Caution and IndicatorLights","Left Fueltank 50L Warning Lamp (white)")
defineIndicatorLight("L_FUEL_60_WARNL", 209, "Warning, Caution and IndicatorLights","Left Fueltank 60L Warning Lamp (white)")
defineIndicatorLight("F_ARC15_LIGHT", 250, "Warning, Caution and IndicatorLights","Front ARC-15 Signal Light (green)")
defineIndicatorLight("R_ARC15_LIGHT", 257, "Warning, Caution and IndicatorLights","Rear ARC-15 Signal Light (green)")

BIOS.protocol.endModule()