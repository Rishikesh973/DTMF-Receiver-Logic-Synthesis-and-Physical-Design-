# DTMF Receiver: Logic Synthesis to Physical Design & generating GDSII file using GPDK 90nm process node

 Design of DTMF receiver from logic synthesis from rtl and perform Physical Design including floorplaning, partition, placement, CTS, Routing, STA and finally sign-off the design
 ---
 DTMF technology works by having the handset generate tones at specific frequencies and playing them over the phone line when a button is pressed on the keypad. Equipment at the other end of the phone line listens to the specific sounds and decodes them into commands.

These commands are typically used to dial a phone number to call but can also be used to signal phone control commands or control remote equipment, since the control tones are played on the same channel as the voice signal. It is an in-band signaling system; this is different than out-of-band systems.

DTMF specifies eight different tones. They are divided into a high group and a low group. Each key press corresponds to two tones -- hence the name dual tone -- one from the high group and one from the low group. This allows for 16 total keys.

---
## Contents
1. Logic Synthesis & Logic Optimization
2. Physical Design
 - 2.1. Importing the Design
 - 2.2. Floorplanning
 - 2.3. Power Planning
 - 2.4. placement
 - 2.5. Clock tree synthesis
 - 2.6. Exploring nets and via altration
 - 2.7. Final Sign-off and generating GDS file

---

# 1. Logic Synthesis
 work/

//This where you run your labs
Starting Genus
1. Change to the work directory by entering this command: cd genus labs/work
2. Start the software by entering this command:
genus -lic startup Virtuoso Digital Implem
You can type commands interactively at The command shell that starts Genus" is dedicated to the Genus shell. You must view files in a separate terminal window and not in the Genus shell.
the genus: shell prompt.

Loading Libraries and Designs
1. Source the setup file.

      source../tel/setup run.tel
setup_run.tcl contains all the variables needed for the design. The following list shows a few of the important variables from the setup.ted file:
The DESIGN variable is set to dtmf_recvr_core.
Variables are set for search paths for technology libraries, LEF libraries, scripts, RTL., etc.
The RTL LIST variable is set to the list of RTL/HDL files.
The LIB LIST variable is set to the list of technology library files.
The LEF LIST variable is set to the list of LEF library files.
Attributes to set search path for libraries, design and script are listed below:
   set db init lib_search_path 311B PATI
   set_db script_search_path #TCL PATH

Virtuoso Digital Implementanon Symhesis Fundamentals
     set db init hdl search path SRTL FATH
This is the command to read technology libraries:
      read libs $11B_LIST
This is the command to read the LEF library (which turns PLE on):
      read physicallef SLEP LIST
set de cap table file SCAP TABLE FILE
The physical layout estimation (PLE) is automatically set to ple when you read a LEF file. Use get_dh interconnect mode to check the wire delay estimation method used by the tool.
Tip: When writing Tel, multiple directories must be separated by a space and enclosed in double quotes or flower braces. (In cases where variables must be used, use double quotes
Tip: You can get help on all the library attributes by entering:
help attribute library
Tip: You can use the help command to get help on any attribute.
List the libraries that are louded into Genuх.

Use the get db command. Example: get_db library For this lab, you can ignore the warnings printed by the tool.

### Reading the Design

1. Read the RTL files using the following command:
   read hdl 3RTL LIST
You can ignore the warning messages.

Elaborating the Design
1. Elaborate the design.
    elaborate DESIGN
When you elaborate the design, it displays some warning messages. In a real design.
scenario, you typically look at these messages in detail.
Also, the elaboration must finish with the "Done elaborating...." message.

### Reading SDC Constraints
1. Read the constraint file.
   read sdc../constraints/constraints.ado
The SDC file has some errors. The log file reports the errors and the reasons.
Are there any errors and failed commands?
Answer:
Fixing Failed SDC Constraints
1. Analyze the messages in the console and in the logfile.
a. Fix the syntax errors and the failed commands.
b. Save the fixed commands into the constraints.sdc file.
Note: To reset the timing of the design, use the reset design command.
c. To read the constraints again, reset the timing of the design and read the updated SDC file.
reset design
   read sdc../constraints/constraints.sde (updated filel
2. Optional: If you did not complete the previous step, read the constraints using the following commands:
reset_design
read sde../constraints/dtmf_recvr_core.adc
Checking Timing Intent
1. Check for any missing constraints by entering:
check timing_intent
Tip: In a real design scenario, these missing constraints could actually be a problem. Clock definition is missing for the p_clk port of the PM_INST This can be ignored for now because this is a power module that has not been completely designed.
Tip: TDSP_DS_CS_INST gets a defined clock m clk, but it is gated with a data signal. You can define these gated clocks in your constraints.
Tip: Missing external delays. Some of these ports have no real connections in. the RTL., so they can be ignored until placement or routing.
In this lab, you do not have to fix these missing constraints. Let's assume that you
delegated this issue to logic design/verification group.
### Synthesizing the Design
1. Set the Generic Synthesis effort using an attribute. By default, Generic Synthesis is run using medium effort. Should you want to change this, use this attribute:
    set db ayn generic effort low/medium/high express
2. Synthesizes the design to generic gates. It takes a list of top-level designs and the RTI. blocks to generic gates using the given constraints and performs
RTL. optimization.
    syn generic
3. Set the effort level for mapping to technology library and optimization (defaults are
high).
    net ab syn map_offort medium
    set db syn opt effort medium
4. Synthesize the design to technology gates and optimize it.
    syn map
    syn opt
This command maps the design to the cells described in the supplied technology library.
and performs logic optimization.
When you synthesize the design, the tool shows you informational messages on how your
synthesis is being done. You can also view the log file in a separate window to view the
same results.
In a real design scenario, you typically pay detailed attention to these messages.
 5. Report the synthesis results.
     report qor
6. Save the optimized database
     write db-to_file $(DESIGN1_syn.db
7. Write out the following:
The netlist
     write netlist $(DESIGN) syn.v
The constraints
     write sdo > DESIGN) syn, sdc
Changes to the netlist and constraints are not written out unless explicitly specified.
 total area of the design?
 ~0. 235553868 mm2
total run time and memory usage to this point? 
~288.99 secs, ~1510.26 MB

# -1.Physical Design
 ## Imporing The Design
Starting the Software 
1. Change to the working directory by entering: 
   cd VDI/FPR/work 
2. Start the Virtuoso® Digital Implementation (VDI) system by entering: 
    innovus -vdi -stylus
Note: Do not use the window where you started the software for any windowing or 
UNIX operations, except to communicate with the tool. 
Importing a Design
1. To import a gate-level netlist, timing constraints, and libraries, choose File – Import
Design.
The Design Import form appears.
2. Fill in the form as shown and click OK.
 
![WhatsApp Image 2023-11-25 at 00 14 49_cd069aa2](https://github.com/Rishikesh973/DTMF-Receiver-Logic-Synthesis-and-Physical-Design-/assets/145873226/96b44279-e0fb-489e-ae02-53e85730eec3)
3. Place the I/Os by reading in a DEF file with I/O placements:
read_def DTMF_CHIP_io.def
4. Press f on the keyboard to fit the design to the screen.
The following table provides a brief description of the fields in the Design Import window



