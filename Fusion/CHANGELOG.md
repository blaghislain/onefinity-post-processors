Onefinity Fusion 360 Post Processor Changelog
=============================================

## 2022-01-25
 - Onefinity Fusion 360 Post Processor:
   - Added new custom property to enable use of an M2 instead of M30 to end the program. 
   - Retrofited new Autodesk changes to date 2022-01-14 (ensure compliance and inhertage with fusion core component).
       | Date       | Descrition                                        | CRC                                      | 
       |------------|---------------------------------------------------|------------------------------------------|
       | 2022/01/14 | Updated the generic posts to use the new WCS definitions..| e423e978b3d8d3b198237a2bea9a90752e27c7b1 |

## 2021-12-14
 - Onefinity Fusion 360 Post Processor:
   - Added new custom property to force output of both M6 and M0 message (MSG, Change bit to T...) for every tool change. (see also [forum](https://forum.onefinitycnc.com/t/like-many-new-forums-the-excitement-and/9209/14?u=blaghislain))
   - Added new custom property to enable use of an M2 instead of M30 to end the program. 
   - Created release 'v2021.12.14.1' in order to provide direct download of files.
   - Retrofited new Autodesk changes to date 2021-12-02 (ensure compliance and inhertage with fusion core component).
       | Date       | Descrition                                        | CRC                                      | 
       |------------|---------------------------------------------------|------------------------------------------|
       | 2021/12/02 | Improved error message when using Clearance Height as safe retract option for non 3-axis toolpaths.| bf758766be774afd173432ca3bc289a6f95e4e36 |

## 2021-10-20
- Onefinity Fusion 360 Post Processor:
  - Created release 'v2021.10.14.1' in order to provide direct download of files.

## 2021-10-14
- Onefinity Fusion 360 Post Processor:
  - Retrofited new Autodesk changes to date 2021-09-01 (ensure compliance and inhertage with fusion core component).
      | Date       | Descrition                                        | CRC                                      | 
      |------------|---------------------------------------------------|------------------------------------------|
      | 2021/10/12 | 	Added the ability to specify the coolant codes as a text string. | e9b6842f3e6234c1aaf343320b80f62d2d29ad08 |

## 2021-10-05
- Onefinity Post Processor package
  - Added file [Onefinity Journeyman.machine](Onefinity%20Journeyman.machine)
  - Updated files [README.md](README.md) and [CHANGELOG.md](CHANGELOG.md) to match autodesk information because they refactor (i.e. new reference number ajusted but file content remain the same) internal revision number of anterior post processor published. 
  - Updated [README.md](README.md) to use relative link in order to work for main branch and also pull request branch.
- Onefinity Fusion 360 Post Processor:
  - Fix post processor file to use 'gcode G4 Px' instead of 'gcode S4 Px' for spindle delay.
- Retrofited new Autodesk/Buildbotics changes to date 2021-09-01 (ensure compliance and inhertage with fusion core component).
    | Date       | Descrition                                        | CRC                                      | 
    |------------|---------------------------------------------------|------------------------------------------|
    | 2021/09/01 | Added initial ABC positioning for simultaneous toolpath (#1109) | bf758766be774afd173432ca3bc289a6f95e4e36 |
    | 2021/06/28 | Changed ABC positioning movements to use the correct formats in generic posts. | 87e091300b673cf720a5d07cfae42c42846642d9 |
   
## 2021-05-03
- Onefinity Post Processor main file
  - Updated file [onefinity_fusion360.cps](onefinity_fusion360.cps)
  - Added file [CHANGELOG.md](CHANGELOG.md) (this file)
  - Added file [README.md](README.md)
  - Added file [Onefinity Woodworker.machine](Onefinity%20Woodworker.machine)
  - Added file [Onefinity Machinist.machine](Onefinity%20Machinist.machine)

- Onefinity Fusion 360 Post Processor:
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
  - Retrofited all the Autodesk changes to date 2021-03-18 (required by inhertage and fusion core component).
    | Date       | Descrition                                        | CRC                                      | 
    |------------|---------------------------------------------------|------------------------------------------|
    | 2021/03/18 | Updated rotaryTabeAxis method in all posts (#897) | a5a0aa6a6357c6456920970306b90da5de1f0892 |
    | 2021/02/18 | Updated all posts to use the new property definitions. You must have post engine version v4.5702 or higher to use this post. (#849)| 08c79bb5b30997ccb5fb33ab8e7c8c26981be334 | 
    | 2021/01/11 | Add option to convert arcs to linear moves. (#782)| 0f84633735c21b47795433c69db08ab5c1d6c0ae |
    | 2020/11/17 | Set 'Preload tool' default value to 'false'. (#697)| 31731a89b929cfd1a62f827c2b8ebf233f944dc9|
    | 2020/11/11 | Added property option to use clearance height instead of G28/G53. (#698)| 7a1bf224aaeb03276140cf7c51b0548f1afd8eaf |
    | 2020/11/11 | Add post processor for Onefinity. (#688) | ae894a72c7d1449c8a6de77bdc80949e6ea3f077 |
  - Onefinity Forum first release 
    | Date       | Descrition                                        | CRC                                      | 
    |------------|---------------------------------------------------|------------------------------------------|
    | 2020/11/17 | Changelog not maintained in previous versions.  See git commit log.    | 31731a89b929cfd1a62f827c2b8ebf233f944dc9 |
