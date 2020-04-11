global NAME := "Class 377"

; Created by Simucheck / undoLogic.com / Sacha Lewis Dmytruk
#SingleInstance
#InstallMouseHook
#Include SimuCheckToolSet_Lib.ahk
#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.

; change to have it announce the name of this script
; ComObjCreate("SAPI.SpVoice").Speak(NAME)

; gui head is required
#Include gui-head.ahk

Loop                                  
{
	Sleep, 50
	
    ; Horn
    ;AxisPushHoldKeyTopOrBottom(JoystickNumber, "JoyY", "{b down}", "{b up}", "{Space down}", "{Space up}") 

    ; Horn/AWS
    AxisPushHoldKeyTopOrBottom(JoystickNumber, "JoyR", "{Space down}", "{Space up}", "{q down}", "{q up}")

    ; Throttle
    AxisToKeysNotches(JoystickNumber, "JoyZ", 9, "{a down}{Sleep 250}{a up}{Sleep 10}", "{d down}{Sleep 250}{d up}{Sleep 10}")
    
    ; Direction
    ;AxisToKey(JoystickNumber, "JoyY", 4, "{s down}", 550, "{s up}", 200, "{w down}", 550, "{w up}", 200)
    
    ;look left / right
    ;PushMouse(JoystickNumber, 14, -200, 0, 200, 0)
    ;PushMouse(JoystickNumber, 12, 200, 0, -200, 0)
    
    ;look down
    ;PushMouse(JoystickNumber, 13, 0, 50, 0, -50)
    ;PushMouse(JoystickNumber, 6, 0, 150, 0, -150)

    ; look at heads up display
    ;PushKeyReleaseAnotherKey(JoystickNumber, 1, "{F4 down}", 125, "{F4 up}", "{F4 down}", 125, "{F4 up}")
    ;PushKeyReleaseAnotherKey(JoystickNumber, 5, "{F4 down}", 125, "{F4 up}", "{F4 down}", 125, "{F4 up}")

    ; load
    ; PushKeyReleaseAnotherKey(JoystickNumber, 10, "{t down}", 125, "{t up}", "", 0, "")

    ; Display the joystick values on the gui 
    JoyStickCheck(JoystickNumber)
}

; footer required
#Include gui-footer.ahk                 
return