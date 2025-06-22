# digital-clock

A fully modular 12-hour digital clock built using Verilog HDL. The design includes BCD counters for seconds, minutes, and hours, along with PM toggle logic. The project is structured for simulation, synthesis, and RTL analysis — ideal for learning or showcasing digital design skills.

##  Project Structure

digital-clock/     
├── src/                
│   ├── digital_clock.v  
│   └── clock_counter.v  
├── tb/                    
│   └── digital_clock_tb.v  
├── sim/                   
│   └── waveform.png  
├── rtl_schematic/       
│   └── rtl_schematic.png  
├── README.md              


##  Features

-  12-hour digital clock (HH:MM:SS)
-  BCD-based counters for accurate display
-  PM bit toggles at 11:59:59
-  Modular counter design
-  Testbench included for full simulation
-  RTL schematic image for design visualization

