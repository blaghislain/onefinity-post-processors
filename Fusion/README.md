# Onefinity Fusion 360 Post Processor & Machine

## <a name="overview">Overview</a>

## <a name="Menu">Menu</a>
| [Download](#download) | [Install Post](#install_post) | 
__________________________
# <a name="download">A. Download Onefinity Post Processor main file</a>

 - [ ] 1. Download the file ('onefinity-post-processors-main.zip') using the [GitHub OnefinityCnc Repository](https://github.com/OneFinityCNC/onefinity-post-processors/archive/refs/heads/main.zip) and **Save** it on your system.
- [ ] 2. Navigate to the folder and **Extract** the post processor file in a folder on your system.  There is a subfolder call 'Fusion' containing all the files needed.

| [Menu](#menu) | [Install Post](#post) | [Install Machine](#machine) |
__________________________
# <a name="post">B. Install Fusion 360 Post Processor</a>

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

**You should see the selected post processor in the 'Post Library' window**

![post_select](./images/installing_post_processor_05.png)

| [Menu](#menu) | [Install Post](#install_post) | [Install Machine](#install_machine) |  
__________________________
# <a name="machine">C. Install Onefinity Machine</a>

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
- [ ] 8a. For the 'Woodworker', Select the file 'onefinity_woodworker.machine'
- [ ] 8b. For the 'Machinist', Select the file 'onefinity_machinist.machine'
- [ ] 9. Click the 'Open' button

**You should now configure the machine you just installed to ajust the 'Post Output Folder' to your desired system folder (default to c:\@GCODE)**

note: Change apply to all machine definition.

![post_select](./images/installing_machine_05.png)
- [ ] 10. Select the machine to edit by cliking on it. 
- [ ] 11. Then, click on 'Edit Selected' icon to open the 'Machine Configuration' dialog window.

![post_select](./images/installing_machine_06.png)
- [ ] 12. Navigate to the folder where you store your GCODE 
- [ ] 13. Click the 'Select Folder' button to confirm your choice.
  