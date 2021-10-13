# Onefinity Fusion 360 Post Processor 

## <a name="Menu">Menu</a>
| [Overview](#overview) | [Download](#download) | [Install Post](#install_post) | [Install Machine](#c-install-onefinity-machine)
__________________________
## <a name="overview">Overview</a>
The [Onefinity Custom Post Processor](#post) is one of the 'Onefinity Customized Components' to be use in Autodesk Fusion 360. 

You can find it in the 'Fusion' folder that is part of the 'Onefinity-Post-Processors' GitHub Package.

More info about all the components [here](../README.md).

note: [Change log is available here](CHANGELOG.md) for more detail.

Information on how to download the  ('onefinity-post-processors-main.zip') file is available [here](#a-download-onefinity-post-processor-main-file) 

___________________
# <a name="post">Onefinity Custom Post Processor</a>

### Features:
- Retrofited all the Autodesk/Buildbotics changes (required by inhertage) from release 43008 to 43242.
- Custom update to enable 'useCircularInterpolation'.
    | Property | Descrition | Type | new value |
    |----------|------------|------|-------------------|
    | Circular Interpolation | Control if post processor will generate 'circular arc movement' (i.e. G02 or G03) instead of a lot of 'straight line linear movement' (i.e. G01 XYZ ) for corner, arc and circle toolpath.| boolean|true|

  Benefit if enable: 
  - Smaller file size.  
  - Less time require to cut toolpath.  
  - And the most important, less effort for stepper motor (torque, acceleration, etc.)
-  Added two new customs properties for spindle to let user add a delay and/or a pause (M0 message) when spindle speed change.
    | Property | Descrition | Type | default value |
    |----------|------------|------|---------------|
    | Spindle Delay | Insert a delay (S4 Px) if time <> 0. Time in seconds to delay after setting spindle speed.| integer | 0| 
    | Spindle Pause|Insert a pause (M0 message) to let user control waiting for a spindle|boolean|false|

___________________
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
