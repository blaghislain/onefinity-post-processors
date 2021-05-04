# <a name="Section">Onefinity Fusion 360 Post Processor & Machine</a>

## <a name="Menu">Menu</a>
| [Overview](#overview) | [Components](#components) | [Procedures](#procedures) |
__________________________
## <a name="overview">Overview</a>
The 'Fusion' folder is part of 'Onefinity-Post-Processors' GitHub Package.  

It contains these 'Onefinity Customized Components' to be use in 'Autodesk Fusion 360':

** click on the desired component to get to the proper section
- [Onefinity Custom Post Processor](#onefinity-custom-post-library-definition).
  - The post processor file is a mandatory component.  It's a language definition file used to converts toolpaths created in a CAM software into language (NC programs) than can be read by the CNC machine's controller.
- [OneFinity Custom Machine Configuration File (both woodworker and machinist definition available)](#onefinity-custom-machine-library-definition)
  - The machine configuration file is an optional component.  It let you define your specific machine and ressources settings in one place.  It help automate the settings in your Fusion 360 Job Setup for a particular process.
__________________________
# <a name="overview">Components</a>

## <a name="onefinity-custom-post-library-definition">Onefinity Custom Post Processor</a>

** As explained in the overview, the post processor file is a mandatory component.  

It's a language definition file used to converts toolpaths created in a CAM software into language (NC programs) than can be read by the CNC machine's controller.

This is a customized version (see 'Features' section) of the generic post processor available from [Autodesk](https://cam.autodesk.com/hsmposts?p=onefinity).

** Information on how to proceed to download and install can be found in the [Procedures](#procedures) section.

### Features:

-  Added two new customs properties for spindle to let user add a delay and/or a pause (M0 message) when spindle speed change.
    | Property | Descrition | Type | default value |
    |----------|------------|------|---------------|
    | Spindle Delay | Insert a delay (gcode S4 Px) if time <> 0. Value (x) represent time in seconds to delay after setting spindle speed.| integer | 0| 
    | Spindle Pause|Insert a pause (gcode M0 message) to let user control waiting for a spindle|boolean|false|
- Custom update to enable 'useCircularInterpolation'.
    | Property | Descrition | Type | new value |
    |----------|------------|------|-------------------|
    | Circular Interpolation | Control if post processor will generate 'circular arc movement' (i.e. G02 or G03) instead of a lot of 'straight line linear movement' (i.e. G01 XYZ ) for corner, arc and circle toolpath.| boolean|true|
    Benefit if enable: 
    - Less effort for stepper motor (torque, acceleration, etc.)
    - Smoother toolpath that require less time require to cut.  
    - Smaller file size.  
- Retrofited all the Autodesk/Buildbotics changes (required by inheritage) from release 43008 to 43242.

| [Overview](#overview) | [Components](#components) | [Download](#download) | [Install Post](#install-fusion-360-post-processor) | 
___________________
## <a name="onefinity-custom-machine-library-definition">Onefinity Custom Machine Library Definition</a>

** As explained in the overview, the machine configuration is an optional component.  
 
 Two diffents starter configuration files are provided ('**Onefinity Woodworker**' and '**Onefinity Machinist**')

**Machine Configuration** files are use to define available machines and resources. Each configuration file:  
  - can help automate the settings in your Fusion 360 Job Setup.
  - puts all of the information about your machine in one place. 
    
    Some of this information is used to control the manufacturing output (NC code) and the post processor functionality
      - **it is tied to a specific post processor and must generaly be update for a new revision of the 'Post Processor'**.
      - **There are a number of important branches in the tree of the Machine Configuration left panel. Go can go through each and edit (ajust or fill) in as much information as you can about your machine**.

** Information on how to proceed to download and install can be found in the [Procedures](#procedures) section.

| [Overview](#overview) | [Components](#components) | [Download](#download) | [Install Machine](#install-fusion-360-machine) | 
___________________
# <a name="procedures">Procedures</a>

## <a name="download">A. Download Onefinity Post Processor main file</a>

 - [ ] 1. Download the file ('onefinity-post-processors-main.zip') using the [GitHub OnefinityCnc Repository](https://github.com/OneFinityCNC/onefinity-post-processors/archive/refs/heads/main.zip) and **Save** it on your system.
- [ ] 2. Navigate to the folder and **Extract** the post processor file in a folder on your system.  There is a subfolder call 'Fusion' containing all the files needed.

| [Menu](#menu) | [Install Post](#post) | [Install Machine](#machine) |
__________________________

## <a name="install-fusion-360-post-processor">B. Install Fusion 360 Post Processor</a>

**Open fusion 360 and follow these instructions:**

![workspace_manufacture](./images/installing_post_processor_01.png)
- [ ] 1. Open the 'WORKSPACE drop down menu'.
- [ ] 2. Select the MANUFACTURE option.

![import_post](./images/installing_post_processor_02.png)
- [ ] 3. Open the 'MANAGE drop down menu'.
- [ ] 4. Select 'Post Library' option.

![post_library](./images/installing_post_processor_03.png)
- [ ] 5. On the 'Post Library window' side menu, under 'My posts', select 'Local'.
- [ ] 6. Then, click on 'import' icon to open the system explorer dialog window.

![post_select](./images/installing_post_processor_04.png)
- [ ] 7. Navigate to the folder where you extrated the zip file in step A.2).  
- [ ] 8. Select the file 'onefinity_fusion360.cps'
- [ ] 9. Click the 'Open' button.

**You should see the installed post processor in the 'Post Library' window**

![post_select](./images/installing_post_processor_05.png)

| [Menu](#menu) | [Install Post](#install_post) | [Install Machine](#install_machine) |  
__________________________
## <a name="install-fusion-360-machine">C. Install Onefinity Machine</a>

**Open fusion 360 and follow these instructions:**

![workspace_manufacture](./images/installing_machine_01.png)
- [ ] 1. Open the 'WORKSPACE drop down menu'
- [ ] 2. Select the MANUFACTURE option.

![workspace_manufacture](./images/installing_machine_02.png)
- [ ] 3. Open the 'MANAGE drop down menu'.
- [ ] 4. Select 'Machine Library' option.

![post_library](./images/installing_machine_03.png)
- [ ] 5. On the 'Machine Library window' side menu, under 'My machines', select 'Local'.
- [ ] 6. Then, click on 'import' icon to open the system explorer dialog window.

![post_select](./images/installing_machine_04.png)
- [ ] 7. Navigate to the folder where you extrated the zip file in step A.2) 
- [ ] 8a. To install the 'Woodworker' definition, Select the file 'onefinity_woodworker.machine'
- [ ] 8b. To install the 'Machinist' definition, Select the file 'onefinity_machinist.machine'
- [ ] 9. Click the 'Open' button

**You should now configure the machine you just installed to ajust the 'Post Output Folder' to your desired system folder (default to c:\@GCODE)**

note: Change apply to all machine definition.

![post_select](./images/installing_machine_05.png)
- [ ] 10. Select the machine to edit by cliking on it. 
- [ ] 11. Then, click on 'Edit Selected' icon to open the 'Machine Configuration' dialog window.

![post_select](./images/installing_machine_06.png)
- [ ] 12. Navigate to the folder where you store your GCODE 
- [ ] 13. Click the 'Select Folder' button to confirm your choice.

| [Overview](#overview) | [Components](#components) | [Procedures](#procedures) |  