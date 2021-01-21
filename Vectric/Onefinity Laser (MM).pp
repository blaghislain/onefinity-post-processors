+================================================
+                                                
+ Grbl - Vectric machine output configuration file   
+                                                
+================================================
+                                                
+ History                                        
+                                                  
+ Who      When       What                         
+ ======== ========== ===========================
+ Onefinity 9/4/2020  Initial Release v1.0
+================================================

POST_NAME = "Onefinity Laser (MM) (*.gcode)"

FILE_EXTENSION = "gcode"
 
UNITS = "MM"

DIRECT_OUTPUT = "VTransfer"

LASER_SUPPORT = "YES"
 
+------------------------------------------------
+    Line terminating characters                 
+------------------------------------------------
 
LINE_ENDING = "[13][10]"
 
+------------------------------------------------
+    Block numbering                             
+------------------------------------------------
 
LINE_NUMBER_START     = 0
LINE_NUMBER_INCREMENT = 10
LINE_NUMBER_MAXIMUM = 999999
 
+================================================
+                                                
+    Formatting for variables                     
+                                                
+================================================
 
VAR LINE_NUMBER = [N|A|N|1.0]
VAR POWER = [P|C|S|1.0|10.0]
VAR SPINDLE_SPEED = [S|A|S|1.0]
VAR FEED_RATE = [F|C|F|1.1]
VAR X_POSITION = [X|C|X|1.4]
VAR Y_POSITION = [Y|C|Y|1.4]
VAR Z_POSITION = [Z|C|Z|1.4]
VAR ARC_CENTRE_I_INC_POSITION = [I|A|I|1.4]
VAR ARC_CENTRE_J_INC_POSITION = [J|A|J|1.4]
VAR X_HOME_POSITION = [XH|A|X|1.4]
VAR Y_HOME_POSITION = [YH|A|Y|1.4]
VAR Z_HOME_POSITION = [ZH|A|Z|1.4]
 
+================================================
+                                                
+    Block definitions for toolpath output       
+                                                
+================================================
 
+---------------------------------------------------
+  Commands output at the start of the file
+---------------------------------------------------
 
begin HEADER
 
"T1"
"G17"
"G21"
"G90"
+"G0[ZH]"
"G0[XH][YH]"
 
 
+---------------------------------------------------
+  Command output after the header to switch spindle on
+---------------------------------------------------
 
begin SPINDLE_ON

"[S]M3"


+---------------------------------------------------
+  Commands output for rapid moves 
+---------------------------------------------------
 
begin RAPID_MOVE
 
"G0[X][Y]"


+---------------------------------------------------
+  Commands output for the plunge move
+---------------------------------------------------

begin PLUNGE_MOVE

"G1[X][Y][F]"

 
+---------------------------------------------------
+  Commands output for the first feed rate move
+---------------------------------------------------
 
begin FIRST_FEED_MOVE
 
"G1[X][Y][P][F]"
 
 
+---------------------------------------------------
+  Commands output for feed rate moves
+---------------------------------------------------
 
begin FEED_MOVE
 
"G1[X][Y][P]"
 
 
+---------------------------------------------------
+  Commands output for the first clockwise arc move
+---------------------------------------------------

begin FIRST_CW_ARC_MOVE

"G2[X][Y][I][J][F][P]"
 
 
+---------------------------------------------------
+  Commands output for clockwise arc  move
+---------------------------------------------------
 
begin CW_ARC_MOVE

"G2[X][Y][I][J]"
 
 
+---------------------------------------------------
+  Commands output for the first counterclockwise arc move
+---------------------------------------------------
 
begin FIRST_CCW_ARC_MOVE

"G3[X][Y][I][J][F][P]"
 
 
+---------------------------------------------------
+  Commands output for counterclockwise arc  move
+---------------------------------------------------
 
begin CCW_ARC_MOVE

"G3[X][Y][I][J]"
 

+---------------------------------------------------
+  Commands output when the jet is turned on
+---------------------------------------------------

begin JET_TOOL_ON

"M4[P]"

+---------------------------------------------------
+  Commands output when the jet is turned off
+---------------------------------------------------

begin JET_TOOL_OFF

"M5"

+---------------------------------------------------
+  Commands output when the jet power is changed
+---------------------------------------------------

begin JET_TOOL_POWER
+"[P]"


 
+---------------------------------------------------
+  Commands output at the end of the file
+---------------------------------------------------
 
begin FOOTER

"M5"
+"G0[ZH]"
"G0[XH][YH]"
"M2"