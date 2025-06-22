# digital-clock

A fully modular 12-hour digital clock built using Verilog HDL. The design includes BCD counters for seconds, minutes, and hours, along with PM toggle logic. The project is structured for simulation, synthesis, and RTL analysis — ideal for learning or showcasing digital design skills.

## 📁 Folder Structure
digital-clock/
├── src/ # Verilog source files
│ ├── digital_clock.v
│ └── clock_counter.v
├── tb/ # Testbenches
│ └── digital_clock_tb.v
├── sim/ # Simulation output (GTKWave)
│ └── waveform.png
├── rtl_schematic/ # RTL schematic image (optional)
│ └── rtl_schematic.png
├── README.md


##  Features

- ⏱ 12-hour digital clock (HH:MM:SS)
- 🔢 BCD-based counters for accurate display
- 🌓 PM bit toggles at 11:59:59
- 🧱 Modular counter design
- 🧪 Testbench included for full simulation
- 🖼️ RTL schematic image for design visualization

## ▶️ Simulation Instructions (Icarus Verilog + GTKWave)

If you have [Icarus Verilog](http://iverilog.icarus.com/) and [GTKWave](http://gtkwave.sourceforge.net/) installed:

```bash
# Compile the testbench and modules
iverilog -o digital_clock_tb tb/digital_clock_tb.v src/*.v

# Run simulation
vvp digital_clock_tb

# View waveform
gtkwave digital_clock_tb.vcd


