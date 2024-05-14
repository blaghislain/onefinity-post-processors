# <a name="Section">Onefinity Elite Fusion 360 Post Processor for Masso controler</a>

Menu | [Overview](#overview) 
__________________________
## <a name="overview">Overview</a>
   - Added new custom property preference to Control 'Spindle Running' Check (via M66 and Auxiliairy Input).  Prevent Program to continue if spindle is not running.  Operation continue automatically if condition met before timeout value. 
   - Added new custom property preference to Control 'Spindle Stopped' Check (via M66 and Auxiliairy Input).  Prevent Motion of spindle while running when tool change occurs.  Operation continue automatically if condition met before timeout value.

   Note:

   Both option require that your VFD is connect to masso controler.   
   
   I connected the multi-output (FA and DCM) of my vfd and G3 TTL input 17 configure as ‘Auxiliary 4’.

   - vfd FA connected to G3 TTL input 17
   - vfd DCM connected to G3 GND
__________________________
