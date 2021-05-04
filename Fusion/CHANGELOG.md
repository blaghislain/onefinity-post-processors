Onefinity Fusion 360 Post Processor Changelog
=============================================

## 2021-05-03
- Onefinity Post Processor main file
  - Updated file [onefinity_fusion360.cps](onefinity_fusion360.cps)
  - Added file [CHANGELOG.md](CHANGELOG.md) (this file)
  - Added file [README.md](README.md)
  - Added file [Onefinity Woodworker.machine](Onefinity%20Woodworker.machine)
  - Added file [Onefinity Machinist.machine](Onefinity%20Machinist.machine)

- Onefinity Fusion 360 Post Processor:
  - v43242.4 - Fix for the first occurence of spindle speed change.  Also ajusted post description and comment.
 
  - v43242.3 - Added two new customs properties for spindle to let user add a delay and/or a pause when spindle speed change.
      | Property | Descrition | Type | default value |
      |----------|------------|------|---------------|
      | Spindle Delay | Insert a delay (S4 Px) if time <> 0. Time in seconds to delay after setting spindle speed.| integer | 0| 
      | Spindle Pause|Insert a pause (M0 message) to let user control waiting for a spindle|boolean|false|

  - v43242.2 - Custom update to enable 'useCircularInterpolation'.
      | Property | Descrition | Type | new value |
      |----------|------------|------|-------------------|
      | Circular Interpolation | Control if post processor will generate 'circular arc movement' (i.e. G02 or G03) instead of a lot of 'straight line linear movement' (i.e. G01 XYZ ) for corner, arc and circle toolpath.| boolean|true|

      Benefit if enable: 
      - Smaller file size.  
      - Less time require to cut toolpath.  
      - And the most important, less effort for stepper motor (torque, acceleration, etc.)

  - v43242.1 - Retrofited all the Autodesk/Buildbotics changes (required by inhertage) from release 43008 to 43242.
      | Release | Date       | Descrition | 
      |---------|------------|------------|
    | r43242 | 18/03/2021	| Updated rotaryTabeAxis method in all posts (#897) |
    | r43194| 18/02/2021 | Updated all posts to use the new property definitions. You must have post engine version v4.5702 or higher to use this post. (#849)| 
    | r43135 | 11/01/2021 | Add option to convert arcs to linear moves. (#782)|
    | r43056 | 17/11/2020 | Set 'Preload tool' default value to 'false'. (#697)|
    | r43037 | 11/11/2020 | Added property option to use clearance height instead of G28/G53. (#698)|
    | r43036 | 11/11/2020 | Add post processor for Onefinity. (#688) |

  - v43008.1 - Onefinity Forum first release 
      | Release | Date       | Descrition | 
      |---------|------------|------------|
      | r43008 | 17/11/2020 | Changelog not maintained in previous versions.  See git commit log.|
