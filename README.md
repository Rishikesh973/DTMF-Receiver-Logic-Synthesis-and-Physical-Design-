# DTMF Receiver: Logic Synthesis to Physical Design & generating GDSII file using GPDK 90nm process node

 Design of DTMF receiver from logic synthesis from rtl and perform Physical Design including floorplaning, partition, placement, CTS, Routing, STA and finally sign-off the design
 ---
 - DTMF technology works by having the handset generate tones at specific frequencies and playing them over the phone line when a button is pressed on the keypad. Equipment at the other end of the phone line listens to the specific sounds and decodes them into commands.

- These commands are typically used to dial a phone number to call but can also be used to signal phone control commands or control remote equipment, since the control tones are played on the same channel as the voice signal. It is an in-band signaling system; this is different than out-of-band systems.

- DTMF specifies eight different tones. They are divided into a high group and a low group. Each key press corresponds to two tones -- hence the name dual tone -- one from the high group and one from the low group. This allows for 16 total keys.
  
![Screenshot from 2023-11-23 12-02-31](https://github.com/Rishikesh973/DTMF-Receiver-Logic-Synthesis-and-Physical-Design-/assets/145873226/24625d55-60b1-47d3-856c-0a6a6b8519b5)
![Screenshot from 2023-11-23 11-34-52](https://github.com/Rishikesh973/DTMF-Receiver-Logic-Synthesis-and-Physical-Design-/assets/145873226/ab627a1d-8006-4aa7-84bc-b69d6a9b5ac2)

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
- genus -lic startup Virtuoso Digital Implem
- You can type commands interactively at The command shell that starts Genus" is dedicated to the Genus shell. You must view files in a separate terminal window and not in the Genus shell.
the genus: shell prompt.

Loading Libraries and Designs
1. Source the setup file.

      source../tel/setup run.tel
setup_run.tcl contains all the variables needed for the design. The following list shows a few of the important variables from the setup.ted file:
- The DESIGN variable is set to dtmf_recvr_core.
- Variables are set for search paths for technology libraries, LEF libraries, scripts, RTL., etc.
- The RTL LIST variable is set to the list of RTL/HDL files.
- The LIB LIST variable is set to the list of technology library files.
- The LEF LIST variable is set to the list of LEF library files.
- Attributes to set search path for libraries, design and script are listed below:
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
List the libraries that are louded into Genus.

Use the get db command. Example: get_db library For this lab, you can ignore the warnings printed by the tool.

### Reading the Design

1. Read the RTL files using the following command:
   read hdl 3RTL LIST
You can ignore the warning messages.

Elaborating the Design
2. Elaborate the design.
    elaborate DESIGN
When you elaborate the design, it displays some warning messages. In a real design.
scenario, you typically look at these messages in detail.
Also, the elaboration must finish with the "Done elaborating...." message.

### Reading SDC Constraints
1. Read the constraint file.
   read sdc../constraints/constraints.ado
The SDC file has some errors. The log file reports the errors and the reasons.
Are there any errors and failed commands?

### Fixing Failed SDC Constraints
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

# 2. Physical Design
 ## 2. Imporing The Design
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

### Viewing the Design 
In this section, you learn more about the objects on the screen and how to view and interpret what 
you see in the design window. 
1. To enlarge the window, drag the corner of the window until you can see all the 
modules in your design, as well as all the Innovus menus. 
2. Select the Floorplan view. 
3. Fit the design to the window by pressing the f key.
4. Under the All Colors pane, make sure that Pin Shapes visibility under Cell is
![WhatsApp Image 2023-11-25 at 00 24 46_d7a7749a](https://github.com/Rishikesh973/DTMF-Receiver-Logic-Synthesis-and-Physical-Design-/assets/145873226/efe7228b-2b64-4e40-b02e-54b13e2ba092)
5. Zoom out by pressing Shift-Z or by clicking the Zoom Out icon.
The view changes. 
6. Expand the design window horizontally to display all the available pull-down menus.
7. Choose Tools ‒ Cell Viewer to view the LEF technology definitions and the abstracts 
of the standard cells. 
8. To view more of the objects, click the Zoom Out icon or press Shift-Z
9. Move your cursor over the icons and notice that their functions are displayed in text 
boxes, as shown here.
10. Select All Colors, which brings up the Color Preferences Menu.
You can turn on and off the visibility and selectability of objects by clicking under V (for 
visibility) or under S (for selectability).
11. For example, unselect Terminal Visibility.
12. Notice that the I/O terminals in the design window are no longer visible.
13. On the left of the core area, select the pink module DTMF_INST.
14. After selecting the DTMF_INST module, click the Ungroup icon once.
This will ungroup the module.
Note: Do not perform this operation more than once.
On the left of the core area, select the pink module DTMF_INST.
14. After selecting the DTMF_INST module, click the Ungroup icon once.
This will ungroup the module.
Note: Do not perform this operation more than once.
![Screenshot from 2023-11-23 12-04-41](https://github.com/Rishikesh973/DTMF-Receiver-Logic-Synthesis-and-Physical-Design-/assets/145873226/47d477f3-2345-4d7a-a114-e7881077c8a8)

--- 
## 2.2.Floorplanning
1. Clear the floorplan by selecting Clear Floorplan from the Floorplan menu and 
choosing All Floorplan Objects.
2. In the All Colors pane, make sure that Pin Shapes visibility is selected.
3. Place an object relative to the core boundary by entering the following command:
create_relative_floorplan –place DTMF_INST/ARB_INST/ROM_512x16_0_INST \
-ref_type core_boundary \
-horizontal_edge_separate {1 -40 1} \
-vertical_edge_separate {0 -10 0} 
4. To place the DTMF_INST/PLLCLK_INST block relative to the previously placed 
block enter the following command:
create_relative_floorplan -place DTMF_INST/PLLCLK_INST \
-ref_type object \
-ref DTMF_INST/ARB_INST/ROM_512x16_0_INST \
-horizontal_edge_separate {1 10 1} \
-vertical_edge_separate {2 40 0}
5. Delete the floorplanning constraints between the core boundary and the ROM by 
entering:
delete_relative_floorplan DTMF_INST/ARB_INST/ROM_512x16_0_INST

 ![Screenshot from 2023-11-23 11-26-35](https://github.com/Rishikesh973/DTMF-Receiver-Logic-Synthesis-and-Physical-Design-/assets/145873226/a432161b-e82c-4e42-bf47-a5874bc5ed0f)
 Save the floorplan with a name dtmf_fp.fp
![Screenshot from 2023-11-23 15-01-40](https://github.com/Rishikesh973/DTMF-Receiver-Logic-Synthesis-and-Physical-Design-/assets/145873226/cb632c86-de6a-488c-98c6-e29a3ef5b062)

## 2.3.Power Planning
1.Start the Innovus platform by entering this string: 
innovus -vdi -stylus
2. Source the file dtmf.setup, which contains commands to read in libraries and the DEF 
file for IO placement.
a. Fit the design to the window by pressing f.
3. Load a floorplan by choosing File ‒ Load ‒ Floorplan.
4. Enter dtmf_blocks.fp for the File Name. 
5. Choose Power ‒ Power Planning ‒ Add Ring.
The Add Rings form is displayed
6. To select the VDD and VSS nets, click the folder icon in the Net(s) field. 
The Net Selection form is displayed. 
7. In the Possible Nets pane, press Shift and VDD and VSS. 
8. Click Add. 
The selected nets appear in the Chosen Nets pane.
9. Click OK.
10. Make sure that the Net(s) field contains VDD and VSS.
11. Click Core ring(s) contouring.
12. Select Around core boundary.
13. In the Ring Configuration field, make sure that the METAL5(5) H layer is selected for
Top and Bottom. 
14. Make sure that a width of 8 and a spacing of 1 are set. 
15. Use METAL6(6) V as the layer for left and right. Select a width of 8 and a spacing of 1. 
16. Under Offset, in all the fields, enter 1.
17. To generate the power rings, click Apply. 
Next, you create the rings for the PLL block. It is the only block that does not have a self-
contained ring.
18. In the design window, select the PLL block.
19. In the same form, in the Ring Type section, select Block ring(s) around.
20. Select Each selected block and/or group of core rows.
![Screenshot from 2023-11-23 15-48-25](https://github.com/Rishikesh973/DTMF-Receiver-Logic-Synthesis-and-Physical-Design-/assets/145873226/3f47baea-005f-4e70-8aed-edd06e2e97df)

 ![Screenshot from 2023-11-23 15-45-57](https://![Screenshot from 2023-11-23 15-48-30](https://github.com/Rishikesh973/DTMF-Receiver-Logic-Synthesis-and-Physical-Design-/assets/145873226/bcae5a3d-f65b-452d-a6b7-7cfd7848fd94)
github.com/Rishikesh973/DTMF-Receiver-Logic-Synthesis-and-Physical-Design-/assets/145873226/8a130138-5773-4d73-b840-ae3834eed607)

 ### Creating Foolowpin Routing with Special Route
 1. Before creating followpin routing (also known as power rails), associate the global 
VDD and VSS nets names to the standard cell pin names by entering the following 
commands:
connect_global_net VDD –type pg_pin –pin VDD –inst_base_name *
connect_global_net VSS –type pg_pin –pin VSS –inst_base_name *
2. Choose Route ‒ Special Route.
The SRoute form appears.
3. To populate the field with VDD and VSS, click the icon next to the Net(s) field.
4. Click Add to add the nets to the Chosen Nets field and click OK.
5. Deselect all options except Follow Pins.
6. For Layer Change Control, select Metal 6 for Top Layer and Metal 1 for Bottom 
Layer.
7. Make sure that Allow Jogging and Allow Layer Change are selected.
8. Click OK.
9. In the Physical view, zoom in to the followpin routes.
10. Notice that the power routes have been connected to the power planned targets with 
relevant vias.
### Saving the Session
1. Save the design by entering the following command:
write_db –oa_lib_cell_view {FEOADesignlib DTMF_CHIP floorplan}
2. Close the session.
--- 
## 2.4.Placement
### Placement Optimization
 1.Load the design and floorplan
 2.Read the def file
### Early Global Route
1. Select Route ‒ Early Global Route to bring up the form.
2. Select Routing Layer.
3. Set Min: to Metal1(1) and Max: to Metal3(3).
4. Click OK & refresh the design
![Screenshot from 2023-11-24 10-34-13](https://github.com/Rishikesh973/DTMF-Receiver-Logic-Synthesis-and-Physical-Design-/assets/145873226/86a887cf-e4ba-4826-bcef-d2c053c85855)

![Screenshot from 2023-11-24 10-44-00](https://github.com/Rishikesh973/DTMF-Receiver-Logic-Synthesis-and-Physical-Design-/assets/145873226/c1e05e6a-006a-47d5-88c7-70d955ed5faa)
### Congestion
![Screenshot from 2023-11-24 10-59-41](https://github.com/Rishikesh973/DTMF-Receiver-Logic-Synthesis-and-Physical-Design-/assets/145873226/45b26f59-1d46-41f2-838b-b193dd98bf6c)
### RC Extraction & Timing analysis
   Check log and cmd file
---
## 2.5. Clock Tree Synthesis
After running placement or pre-CTS optimization, you run clock tree synthesis, which requires a 
clock specification file. This file specifies target skews, insertion delay, and transition times for the 
clocks in your design.
![cts](https://github.com/Rishikesh973/DTMF-Receiver-Logic-Synthesis-and-Physical-Design-/assets/145873226/631e6d51-a702-4bdb-bfa1-ebac0f749773)







