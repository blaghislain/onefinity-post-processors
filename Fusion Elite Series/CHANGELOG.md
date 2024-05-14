Onefinity Fusion 360 Post Processor Changelog
=============================================

## 2024-05-14

 - Onefinity Elite Fusion 360 Post Processor for Masso Controler:
   - Added new custom property preference to Control 'Spindle Running' Check (via M66 and Auxiliairy Input).  Prevent Program to continue if spindle is not running.  Operation continue automatically if condition met before timeout value. 
   - Added new custom property preference to Control 'Spindle Stopped' Check (via M66 and Auxiliairy Input).  Prevent Motion of spindle while running when tool change occurs.  Operation continue automatically if condition met before timeout value.

   Note:

   Both option require that your VFD is connect to masso controler.   
   
   I connected the multi-output (FA and DCM) of my vfd and G3 TTL input 17 configure as ‘Auxiliary 4’.

   - vfd FA connected to G3 TTL input 17
   - vfd DCM connected to G3 GND

  - Retrofited new Autodesk changes to date 2024-03-15 (ensure compliance and inhertage with fusion core component).
      | Date       | Title                                        | CRC                                      | 
      |------------|---------------------------------------------------|------------------------------------------|
      | 2024/03/15 | See Autodesk Comment | [e423e978b3d8d3b198237a2bea9a90752e27c7b1](https://cam.autodesk.com/hsmposts?p=masso) |

