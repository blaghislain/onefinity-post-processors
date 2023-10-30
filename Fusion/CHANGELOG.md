Onefinity Fusion 360 Post Processor Changelog (x-35 and x-50 non-elite machines only)
=============================================
## 2023-10-30
- Onefinity Post Processor main file
  - Updated file [onefinity_fusion360.cps](onefinity_fusion360.cps)
  - Updated file [CHANGELOG.md](CHANGELOG.md) (this file)
  - Updated file [README.md](README.md)
  - Added Z-16 machine files 
    - [Onefinity Machinist with Z-16.machine](Onefinity%20Machinist%20with%20Z-16.machine)
    - [Onefinity Woodworker with Z-16.machine](Onefinity%20Woodworkert%20with%20Z-16.machine)
    - [Onefinity Journeyman with Z-16.machine](Onefinity%20Journeyman%20with%20Z-16.machine)
    - [Onefinity Foreman with Z-16.machine](Onefinity%Foreman%20with%20Z-16.machine)
  - Added Z-20 machine files 
    - [Onefinity Machinist with Z-20.machine](Onefinity%20Machinist%20with%20Z-20.machine)
    - [Onefinity Woodworker with Z-20.machine](Onefinity%20Woodworkert%20with%20Z-20.machine)
    - [Onefinity Journeyman with Z-20.machine](Onefinity%20Journeyman%20with%20Z-20.machine)
    - [Onefinity Foreman with Z-20.machine](Onefinity%Foreman%20with%20Z-20.machine)
  - Removed old machine files 
    - [Onefinity Machinist.machine](Onefinity%20Machinist.machine)
    - [Onefinity Woodworker.machine](Onefinity%20Woodworker.machine)
    - [Onefinity Journeyman.machine](Onefinity%20Woodworker.machine)  
  - Removed Vectric folder
  
 - Onefinity Fusion 360 Post Processor for non-Elite machine:
   - Retrofited new Autodesk changes to date 2023-08-14 (ensure compliance and inhertage with fusion core component).  See [AUTODESK Fusion 360 Web page](https://cam.autodesk.com/hsmposts?p=onefinity) (use the 'Previous version' link for detail).
        
     - Minimum Post Engine Version : 45917
  
        |Version|Date        | Title | 
        | ----- | ---------- | ----- | 
        | 44083 | 14/08/2023 | Updated generic posts to make use of the new createOutputVariable functionality.                    |
        |       |            | Fixed potentially missing output of tilted workplane reset when no machine configuration is used.|
        |       |            | TCP is now properly canceled prior to the tilted workplane command. |
        |       |            | Optimized comment output in multiple generic posts.|
        |       |            | Multiple minor internal updates to generic posts using shared code content.|
        |       |            | The initial Z-move is now output in rapid mode when HIGH_FEED_MAP_MULTI is set|
        |       |            | Fixed potentially missing output of TCP command. |
        | 44078 | 17/07/2023 | Fixed potentially missing output of the tool length compensation command when using TWP prepositioning.
        | 44076 | 03/07/2023 | Updated buildbotics based posts to use shared content across post processors. (#2274) | 

     - Minimum Post Engine Version : 45702
  
        |Version|Date        | Title | 
        | ----- | ---------- | ----- | 
        | 43838	| 13/06/2022 | Drill cycles that feed out now respect the Retract feedrate.| 
        | 43749	| 07/04/2022 | Added the 'Only on tool change' option to the 'Use sequence numbers' property.| 
        | 43727	| 29/03/2022 | Post properties are now displayed within tabbed groups in the NC Program dialog.| 
   - Added comment and also reformat code to help comparing Autodesk original and community version. 
  - Created release 'v2023.10.30.1' in order to provide direct download of files.
  
## 2022-02-21
 - Onefinity Fusion 360 Post Processor for non-Elite machine:
   - Added new custom property to enable use of an M2 instead of M30 to end the program. 
   - Retrofited new Autodesk changes to date 2022-01-26 (ensure compliance and inhertage with fusion core component).  See [AUTODESK Fusion 360 Web page](https://cam.autodesk.com/hsmposts?p=onefinity) (use the 'Previous version' link for detail).
        
     - Minimum Post Engine Version : 45917
  
        |Version|Date        | Title | 
        | ----- | ---------- | ----- | 
        | 43615	| 26/01/2022 | Force the coolant codes after a Stop or Optional Stop.| 
        | 43592	| 14/01/2022 | Updated the generic posts to use the new WCS definitions.| 

## 2021-12-14
 - Onefinity Fusion 360 Post Processor for non-Elite machine:
   - Added new custom property to force output of both M6 and M0 message (MSG, Change bit to T...) for every tool change. (see also [forum](https://forum.onefinitycnc.com/t/like-many-new-forums-the-excitement-and/9209/14?u=blaghislain))
   - Added new custom property to enable use of an M2 instead of M30 to end the program. 
   - Created release 'v2021.12.14.1' in order to provide direct download of files.
   - Retrofited new Autodesk changes to date 2021-12-02 (ensure compliance and inhertage with fusion core component).  See [AUTODESK Fusion 360 Web page](https://cam.autodesk.com/hsmposts?p=onefinity) (use the 'Previous version' link for detail).
        
     - Minimum Post Engine Version : 45917
  
        |Version|Date        | Title | 
        | ----- | ---------- | ----- | 
        | 43554	| 02/12/2021 | Improved error message when using Clearance Height as safe retract option for non 3-axis toolpaths.| 

 ## 2021-10-20
- Onefinity Fusion 360 Post Processor for non-Elite machine:
  - Created release 'v2021.10.14.1' in order to provide direct download of files.

## 2021-10-14
   - Retrofited new Autodesk changes to date 2021-10-12 (ensure compliance and inhertage with fusion core component).  See [AUTODESK Fusion 360 Web page](https://cam.autodesk.com/hsmposts?p=onefinity) (use the 'Previous version' link for detail).
        
     - Minimum Post Engine Version : 45917
  
        |Version|Date        | Title | 
        | ----- | ---------- | ----- | 
        | 43462	| 12/10/2021 | Added the ability to specify the coolant codes as a text string.| 

## 2021-10-05
- Onefinity Post Processor Package:
  - Added file [Onefinity Journeyman.machine](Onefinity%20Journeyman.machine)
  - Updated files [README.md](README.md) and [CHANGELOG.md](CHANGELOG.md) to match autodesk information because they refactor (i.e. new reference number ajusted but file content remain the same) internal revision number of anterior post processor published. 
  - Updated [README.md](README.md) to use relative link in order to work for main branch and also pull request branch.
- Onefinity Fusion 360 Post Processor for non-Elite machine:
  - Fix post processor file to use 'gcode G4 Px' instead of 'gcode S4 Px' for spindle delay.
  - Retrofited new Autodesk changes to date 2021-09-01 (ensure compliance and inhertage with fusion core component).  See [AUTODESK Fusion 360 Web page](https://cam.autodesk.com/hsmposts?p=onefinity) (use the 'Previous version' link for detail).
        
     - Minimum Post Engine Version : 45917
  
        |Version|Date        | Title | 
        | ----- | ---------- | ----- | 
        | 43409	| 01/09/2021 | Added initial ABC positioning for simultaneous toolpath (#1109)| 
        | 43340	| 28/06/2021 | Changed ABC positioning movements to use the correct formats in generic posts.| 

## 2021-05-03
- Onefinity Post Processor main file
  - Updated file [onefinity_fusion360.cps](onefinity_fusion360.cps)
  - Added file [CHANGELOG.md](CHANGELOG.md) (this file)
  - Added file [README.md](README.md)
  - Added file [Onefinity Woodworker.machine](Onefinity%20Woodworker.machine)
  - Added file [Onefinity Machinist.machine](Onefinity%20Machinist.machine)

- Onefinity Fusion 360 Post Processor for non-Elite machine:
  - Fix for the first occurence of spindle speed change.  Also ajusted post description and comment.
  - Added two new customs properties for spindle to let user add a delay and/or a pause when spindle speed change.
      | Property | Descrition | Type | default value |
      |----------|------------|------|---------------|
      | Spindle Delay | Insert a delay (G4 Px) if time <> 0. Time in seconds to delay after setting spindle speed.| integer | 0| 
      | Spindle Pause|Insert a pause (M0 message) to let user control waiting for a spindle|boolean|false|

  - Custom update to enable 'useCircularInterpolation'.
      | Property | Descrition | Type | new value |
      |----------|------------|------|-------------------|
      | Circular Interpolation | Control if post processor will generate 'circular arc movement' (i.e. G02 or G03) instead of a lot of 'straight line linear movement' (i.e. G01 XYZ ) for corner, arc and circle toolpath.| boolean|true|

      Benefit if enable: 
      - Smaller file size.  
      - Less time require to cut toolpath.  
      - And the most important, less effort for stepper motor (torque, acceleration, etc.)

  - Retrofited new Autodesk changes to date 2021-03-21 (ensure compliance and inhertage with fusion core component).  See [AUTODESK Fusion 360 Web page](https://cam.autodesk.com/hsmposts?p=onefinity) (use the 'Previous version' link for detail).
        
     - Minimum Post Engine Version : 45917
  
        |Version|Date        | Title | 
        | ----- | ---------- | ----- | 
        | 43190	| 18/03/2021 | Updated rotaryTableAxis method in all posts (#897)| 
        | 43151	| 19/02/2021 | Updated all posts to use the new property definitions. You must have post engine version v4.5702 or higher to use this post. (#849)| 

     - Minimum Post Engine Version : 40783
  
        |Version|Date        | Title | 
        | ----- | ---------- | ----- | 
        | 43102	| 11/01/2021 | Add option to convert arcs to linear moves. (#782)| 
        | 43029	| 17/11/2020 | Set 'Preload tool' default value to 'false'. (#697)| 
        | 43010	| 11/11/2020 | Added property option to use clearance height instead of G28/G53. (#698)| 
        | 43009	| 11/11/2020 | Add post processor for Onefinity. (#688)| 

   - Added comment and also reformat code to help comparing Autodesk original and community version. 


  - Onefinity Forum first release
        
     - Minimum Post Engine Version : 45917
  
        |Version|Date        | Title | 
        | ----- | ---------- | ----- | 
        | 44083 | 2020/11/17 | Changelog not maintained in previous versions.   |

