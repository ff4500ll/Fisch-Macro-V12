#SingleInstance Force
setkeydelay, -1
setmousedelay, -1
setbatchlines, -1
SetTitleMatchMode 2

CoordMode, Tooltip, Relative
CoordMode, Pixel, Relative
CoordMode, Mouse, Relative

;	 CREDITS		===============

; Rod name
Rod := "Summit"
; Config maker credit
Creator := ""

;     GENERAL SETTINGS     ====================================================================================================;

; Set to true to automatically lower graphics to 1
AutoLowerGraphics := true
AutoGraphicsDelay := 50

; Set to true to automatically zoom in the camera
AutoZoomInCamera := true
AutoZoomDelay := 50

; Set to true to check for camera mode and enable it
AutoEnableCameraMode := true
AutoCameraDelay := 50

; Set to true to automatically look down
AutoLookDownCamera := true
AutoLookDelay := 50

; Set to true to automatically blur the camera
AutoBlurCamera := true
AutoBlurDelay := 50

; How long to wait after fishing before restarting
RestartDelay := 1500

; How long to hold the cast for before releasing
HoldRodCastDuration := 480

; How long to wait for the bobber to land in water
WaitForBobberDelay := 1000

; Set this to your navigation key, IMPORTANT
NavigationKey := "\"

;     SHAKE SETTINGS     ====================================================================================================;

; Change to "Navigation" or "Click"
ShakeMode := "Click"

; Seconds for shake minigame to be considered failed
ShakeFailsafe := 15
; Color range to scan for "shake" text
ClickShakeColorTolerance := 3
; Delay between each scan in miliseconds
ClickScanDelay := 20
; Delay between each "S+Enter" in miliseconds
NavigationSpamDelay := 10

;     MINIGAME SETTINGS     ====================================================================================================;

; Based on the rod's control stat
Control := 0.25
; Color range to scan for fish bar
FishBarColorTolerance := 5
; Color range to scan for minigame white bar
WhiteBarColorTolerance := 15
; Color range to scan for minigame arrow
ArrowColorTolerance := 6

; Ratio for bar side maximum hold (1 = max bar|0.5 = half bar)
SideBarRatio := 0.57
; How long before moving before the bar after the fish moves out side the Deadzone
SideDelay := 400
; Minigame Refresh Rate
ScanDelay := 10
; Bait Delay leave at 600 as default
BaitDelay := 300

; Strength for moving right in correct zone
StableRightMultiplier := 2
; Counter strafe after moving right in correct zone
StableRightDivision := 1.31
; Strength for moving left in correct zone
StableLeftMultiplier := 1.75
; Counter strafe after moving left in correct zone
StableLeftDivision := 1.6

; Strength for moving right when in wrong zone
UnstableRightMultiplier := 2.2
; Counter strafe after moving right in wrong zone
UnstableRightDivision := 3
; Strength for moving left when in wrong zone
UnstableLeftMultiplier := 2.25
; Counter strafe after moving left in wrong zone
UnstableLeftDivision := 3

; Strength for moving right after a shift in the middle
RightAnkleBreakMultiplier := 0.25
; Strength for moving left after a shift in the middle
LeftAnkleBreakMultiplier := 0.15

;====================================================================================================;

if (AutoLowerGraphics != true and AutoLowerGraphics != false)
	{
	msgbox, AutoLowerGraphics must be set to true or false! (check your spelling)
	exitapp
	}
	
if (AutoEnableCameraMode != true and AutoEnableCameraMode != false)
	{
	msgbox, AutoEnableCameraMode must be set to true or false! (check your spelling)
	exitapp
	}
	
if (AutoZoomInCamera != true and AutoZoomInCamera != false)
	{
	msgbox, AutoZoomInCamera must be set to true or false! (check your spelling)
	exitapp
	}
	
if (AutoLookDownCamera != true and AutoLookDownCamera != false)
	{
	msgbox, AutoLookDownCamera must be set to true or false! (check your spelling)
	exitapp
	}
	
if (AutoBlurCamera != true and AutoBlurCamera != false)
	{
	msgbox, AutoBlurCamera must be set to true or false! (check your spelling)
	exitapp
	}
	
if (ShakeMode != "Navigation" and ShakeMode != "Click")
	{
	msgbox, ShakeMode must be set to "Click" or "Navigation"! (check your spelling)
	exitapp
	}

;====================================================================================================;

WinActivate, Roblox
if WinActive("ahk_exe RobloxPlayerBeta.exe") || WinActive("ahk_exe eurotruck2.exe")
	{
	WinMaximize, Roblox
	}
else
	{
	MsgBox, 0x40030, Error, Make sure you are using the Roblox Player (not from Microsoft)
	exitapp
	}

if (A_ScreenDPI != 96) {
    MsgBox, 0x40030, Error, Display Scale is not set to 100.`nPress the Windows key > Find "Change the resolution of the display" > Set the Scale to 100
	exitapp
}

;====================================================================================================;

send {lbutton up}
send {rbutton up}
send {shift up}

;====================================================================================================;

Calculations:
WinGetActiveStats, Title, WindowWidth, WindowHeight, WindowLeft, WindowTop

CameraCheckLeft := WindowWidth/2.8444
CameraCheckRight := WindowWidth/1.5421
CameraCheckTop := WindowHeight/1.28
CameraCheckBottom := WindowHeight

ClickShakeLeft := WindowWidth/4
ClickShakeRight := WindowWidth/1.2736
ClickShakeTop := WindowHeight/9
ClickShakeBottom := WindowHeight/1.3409

FishBarLeft := WindowWidth/3.3160
FishBarRight := WindowWidth/1.4317
FishBarTop := WindowHeight/1.1871
FishBarBottom := WindowHeight/1.1512

FishBarTooltipHeight := WindowHeight/1.0626

ResolutionScaling := WindowWidth / (WindowWidth * 2.37)
PixelScaling := 1034/(FishBarRight-FishBarLeft)

LookDownX := WindowWidth/2
LookDownY := WindowHeight/4

runtimeS := 0
runtimeM := 0
runtimeH := 0

TooltipX := WindowWidth/20
Tooltip1 := (WindowHeight/2)-(20*9)
Tooltip2 := (WindowHeight/2)-(20*8)
Tooltip3 := (WindowHeight/2)-(20*7)
Tooltip4 := (WindowHeight/2)-(20*6)
Tooltip5 := (WindowHeight/2)-(20*5)
Tooltip6 := (WindowHeight/2)-(20*4)
Tooltip7 := (WindowHeight/2)-(20*3)
Tooltip8 := (WindowHeight/2)-(20*2)
Tooltip9 := (WindowHeight/2)-(20*1)
Tooltip10 := (WindowHeight/2)
Tooltip11 := (WindowHeight/2)+(20*1)
Tooltip12 := (WindowHeight/2)+(20*2)
Tooltip13 := (WindowHeight/2)+(20*3)
Tooltip14 := (WindowHeight/2)+(20*4)
Tooltip15 := (WindowHeight/2)+(20*5)
Tooltip16 := (WindowHeight/2)+(20*6)
Tooltip17 := (WindowHeight/2)+(20*7)
Tooltip18 := (WindowHeight/2)+(20*8)
Tooltip19 := (WindowHeight/2)+(20*9)
Tooltip20 := (WindowHeight/2)+(20*10)

tooltip, Made By AsphaltCake, %TooltipX%, %Tooltip1%, 1
tooltip, V12 Config for %Rod% by %Creator%, %TooltipX%, %Tooltip2%, 2
tooltip, Runtime: 0h 0m 0s, %TooltipX%, %Tooltip3%, 3

tooltip, Press "P" to Start, %TooltipX%, %Tooltip4%, 4
tooltip, Press "O" to Reload, %TooltipX%, %Tooltip5%, 5
tooltip, Press "M" to Exit, %TooltipX%, %Tooltip6%, 6

if (AutoLowerGraphics == true)
	{
	tooltip, AutoLowerGraphics: true, %TooltipX%, %Tooltip8%, 8
	}
else
	{
	tooltip, AutoLowerGraphics: false, %TooltipX%, %Tooltip8%, 8
	}
	
if (AutoEnableCameraMode == true)
	{
	tooltip, AutoEnableCameraMode: true, %TooltipX%, %Tooltip9%, 9
	}
else
	{
	tooltip, AutoEnableCameraMode: false, %TooltipX%, %Tooltip9%, 9
	}
	
if (AutoZoomInCamera == true)
	{
	tooltip, AutoZoomInCamera: true, %TooltipX%, %Tooltip10%, 10
	}
else
	{
	tooltip, AutoZoomInCamera: false, %TooltipX%, %Tooltip10%, 10
	}
	
if (AutoLookDownCamera == true)
	{
	tooltip, AutoLookDownCamera: true, %TooltipX%, %Tooltip11%, 11
	}
else
	{
	tooltip, AutoLookDownCamera: false, %TooltipX%, %Tooltip11%, 11
	}
	
if (AutoBlurCamera == true)
	{
	tooltip, AutoBlurCamera: true, %TooltipX%, %Tooltip12%, 12
	}
else
	{
	tooltip, AutoBlurCamera: false, %TooltipX%, %Tooltip12%, 12
	}

tooltip, Navigation Key: "%NavigationKey%", %TooltipX%, %Tooltip14%, 14

if (ShakeMode == "Click")
	{
	tooltip, Shake Mode: "Click", %TooltipX%, %Tooltip16%, 16
	}
else
	{
	tooltip, Shake Mode: "Navigation", %TooltipX%, %Tooltip16%, 16
	}
return

;====================================================================================================;

; Thanks Lunar
runtime:
    runtimeS++
    if (runtimeS >= 60)
    {
        runtimeS := 0
        runtimeM++
    }
    if (runtimeM >= 60)
    {
        runtimeM := 0
        runtimeH++
    }

    tooltip, Runtime: %runtimeH%h %runtimeM%m %runtimeS%s, %TooltipX%, %Tooltip3%, 3

    if (WinExist("ahk_exe RobloxPlayerBeta.exe") || WinExist("ahk_exe eurotruck2.exe")) {
        if (!WinActive("ahk_exe RobloxPlayerBeta.exe") || !WinActive("ahk_exe eurotruck2.exe")) {
            WinActivate
        }
    }
    else {
        exitapp
    }
return

;====================================================================================================;

$o:: reload
$m:: exitapp
$p::

;====================================================================================================;

gosub, Calculations
settimer, runtime, 1000

tooltip, Press "O" to Reload, %TooltipX%, %Tooltip4%, 4
tooltip, Press "M" to Exit, %TooltipX%, %Tooltip5%, 5

tooltip, , , , 6
tooltip, , , , 10
tooltip, , , , 11
tooltip, , , , 12
tooltip, , , , 14
tooltip, , , , 16

if (ShakeMode == "Navigation") 
send {lshift}

tooltip, Current Task: AutoLowerGraphics, %TooltipX%, %Tooltip7%, 7
tooltip, F10 Count: 0/20, %TooltipX%, %Tooltip9%, 9
f10counter := 0
if (AutoLowerGraphics == true)
	{
	send {shift}
	tooltip, Action: Press Shift, %TooltipX%, %Tooltip8%, 8
	sleep %AutoGraphicsDelay%
	send {shift down}
	tooltip, Action: Hold Shift, %TooltipX%, %Tooltip8%, 8
	sleep %AutoGraphicsDelay%
	loop, 20
		{
		f10counter++
		tooltip, F10 Count: %f10counter%/20, %TooltipX%, %Tooltip9%, 9
		send {f10}
		tooltip, Action: Press F10, %TooltipX%, %Tooltip8%, 8
		sleep %AutoGraphicsDelay%
		}
	send {shift up}
	tooltip, Action: Release Shift, %TooltipX%, %Tooltip8%, 8
	sleep %AutoGraphicsDelay%
	}

tooltip, Current Task: AutoZoomInCamera, %TooltipX%, %Tooltip7%, 7
tooltip, Scroll In: 0/20, %TooltipX%, %Tooltip9%, 9
tooltip, Scroll Out: 0/1, %TooltipX%, %Tooltip10%, 10
scrollcounter := 0
if (AutoZoomInCamera == true)
	{
	sleep %AutoZoomDelay%
	loop, 20
		{
		scrollcounter++
		tooltip, Scroll In: %scrollcounter%/20, %TooltipX%, %Tooltip9%, 9
		send {wheelup}
		tooltip, Action: Scroll In, %TooltipX%, %Tooltip8%, 8
		sleep %AutoZoomDelay%
		}
	send {wheeldown}
	tooltip, Scroll Out: 1/1, %TooltipX%, %Tooltip10%, 10
	tooltip, Action: Scroll Out, %TooltipX%, %Tooltip8%, 8
	AutoZoomDelay := AutoZoomDelay*5
	sleep %AutoZoomDelay%
	}
	
RestartMacro:
sleep 100
if (AutoBlurCamera == true)
	{
		if (EndMinigame == true or NavigationFail == true)
		{
			send ``
		}
	}
tooltip, , , , 10

tooltip, Current Task: AutoEnableCameraMode, %TooltipX%, %Tooltip7%, 7
tooltip, Right Count: 0/10, %TooltipX%, %Tooltip9%, 9
rightcounter := 0
if (AutoEnableCameraMode == true)
	{
	PixelSearch, , , CameraCheckLeft, CameraCheckTop, CameraCheckRight, CameraCheckBottom, 0xFFFFFF, 0, Fast
	if !ErrorLevel
		{
		sleep %AutoCameraDelay%
		send {2}
		tooltip, Action: Presss 2, %TooltipX%, %Tooltip8%, 8
		sleep %AutoCameraDelay%
		send {1}
		tooltip, Action: Press 1, %TooltipX%, %Tooltip8%, 8
		sleep %AutoCameraDelay%
		
		if (NavigationFail == true)
		{
			send {esc}
			sleep 50
			send {esc}
			sleep 50
			send {%NavigationKey%}
			sleep 50
			NavigationFail := false
		}

		sleep %AutoCameraDelay%
		send {%NavigationKey%}
		tooltip, Action: Press %NavigationKey%, %TooltipX%, %Tooltip8%, 8
		sleep %AutoCameraDelay%
		loop, 10
			{
			rightcounter++
			tooltip, Right Count: %rightcounter%/10, %TooltipX%, %Tooltip9%, 9
			send {right}
			tooltip, Action: Press Right, %TooltipX%, %Tooltip8%, 8
			sleep %AutoCameraDelay%
			}
		send {enter}
		tooltip, Action: Press Enter, %TooltipX%, %Tooltip8%, 8
		sleep %AutoCameraDelay%
		}
	}

tooltip, , , , 9

tooltip, Current Task: AutoLookDownCamera, %TooltipX%, %Tooltip7%, 7
if (AutoLookDownCamera == true)
	{
	send {rbutton up}
	sleep %AutoLookDelay%
	mousemove, LookDownX, LookDownY
	tooltip, Action: Position Mouse, %TooltipX%, %Tooltip8%, 8
	sleep %AutoLookDelay%
	send {rbutton down}
	tooltip, Action: Hold Right Click, %TooltipX%, %Tooltip8%, 8
	sleep %AutoLookDelay%
	DllCall("mouse_event", "UInt", 0x01, "UInt", 0, "UInt", 10000)
	tooltip, Action: Move Mouse Down, %TooltipX%, %Tooltip8%, 8
	sleep %AutoLookDelay%
	send {rbutton up}
	tooltip, Action: Release Right Click, %TooltipX%, %Tooltip8%, 8
	sleep %AutoLookDelay%
	mousemove, LookDownX, LookDownY
	tooltip, Action: Position Mouse, %TooltipX%, %Tooltip8%, 8
	sleep %AutoLookDelay%
	}
	
tooltip, Current Task: AutoBlurCamera, %TooltipX%, %Tooltip7%, 7	
if (AutoBlurCamera == true)
	{
	sleep %AutoBlurDelay%
	send ``
	tooltip, Action: Press ``, %TooltipX%, %Tooltip8%, 8
	sleep %AutoBlurDelay%
	}

tooltip, Current Task: Casting Rod, %TooltipX%, %Tooltip7%, 7
send {lbutton down}
tooltip, Action: Casting For %HoldRodCastDuration%ms, %TooltipX%, %Tooltip8%, 8
sleep %HoldRodCastDuration%
send {lbutton up}
tooltip, Action: Waiting For Bobber (%WaitForBobberDelay%ms), %TooltipX%, %Tooltip8%, 8
sleep %WaitForBobberDelay%

if (ShakeMode == "Click")
goto ClickShakeMode
else if (ShakeMode == "Navigation")
goto NavigationShakeMode

;====================================================================================================;

ClickShakeFailsafe:
ClickFailsafeCount++
tooltip, Failsafe: %ClickFailsafeCount%/%ShakeFailsafe%, %TooltipX%, %Tooltip14%, 14
if (ClickFailsafeCount >= ShakeFailsafe)
	{
	settimer, ClickShakeFailsafe, off
	ForceReset := true
	}
return

ClickShakeMode:

tooltip, Current Task: Shaking, %TooltipX%, %Tooltip7%, 7
tooltip, Looking for White pixels, %TooltipX%, %Tooltip8%, 8
tooltip, Click X: None, %TooltipX%, %Tooltip9%, 9
tooltip, Click Y: None, %TooltipX%, %Tooltip10%, 10
tooltip, Click Count: 0, %TooltipX%, %Tooltip11%, 11

tooltip, Failsafe: 0/%ShakeFailsafe%, %TooltipX%, %Tooltip14%, 14

ClickFailsafeCount := 0
ClickCount := 0
ClickShakeRepeatBypassCounter := 0
MemoryX := 0
MemoryY := 0
ForceReset := false

settimer, ClickShakeFailsafe, 1000

ClickShakeModeRedo:
if (ForceReset == true)
	{
	tooltip, , , , 11
	tooltip, , , , 12
	tooltip, , , , 14
	goto RestartMacro
	}
sleep %ClickScanDelay%
PixelSearch, , , FishBarLeft, FishBarTop, FishBarRight, FishBarBottom, 0x5B4B43, %FishBarColorTolerance%, Fast
if !ErrorLevel
	{
	settimer, ClickShakeFailsafe, off
	tooltip, , , , 9
	tooltip, , , , 11
	tooltip, , , , 12
	tooltip, , , , 14
	goto BarMinigame
	}
else
	{
	PixelSearch, ClickX, ClickY, ClickShakeLeft, ClickShakeTop, ClickShakeRight, ClickShakeBottom, 0xFFFFFF, %ClickShakeColorTolerance%, Fast
	if !ErrorLevel
		{

		tooltip, Click X: %ClickX%, %TooltipX%, %Tooltip9%, 9
		tooltip, Click Y: %ClickY%, %TooltipX%, %Tooltip10%, 10

		if (ClickX != MemoryX and ClickY != MemoryY)
			{
			ClickShakeRepeatBypassCounter := 0
			ClickCount++
			click, %ClickX%, %ClickY%
			tooltip, Click Count: %ClickCount%, %TooltipX%, %Tooltip11%, 11
			MemoryX := ClickX
			MemoryY := ClickY
			goto ClickShakeModeRedo
			}
		else
			{
			ClickShakeRepeatBypassCounter++
			if (ClickShakeRepeatBypassCounter >= 10)
				{
				MemoryX := 0
				MemoryY := 0
				}
			goto ClickShakeModeRedo
			}
		}
	else
		{
		goto ClickShakeModeRedo
		}
	}

;====================================================================================================;

NavigationShakeFailsafe:
NavigationFailsafeCount++
tooltip, Failsafe: %NavigationFailsafeCount%/%ShakeFailsafe%, %TooltipX%, %Tooltip10%, 10
if (NavigationFailsafeCount >= ShakeFailsafe)
	{
	settimer, NavigationShakeFailsafe, off
	ForceReset := true
	}
return

NavigationShakeMode:

tooltip, Current Task: Shaking, %TooltipX%, %Tooltip7%, 7
tooltip, Attempt Count: 0, %TooltipX%, %Tooltip8%, 8

tooltip, Failsafe: 0/%ShakeFailsafe%, %TooltipX%, %Tooltip10%, 10

NavigationFailsafeCount := 0
NavigationCounter := 0
ForceReset := false
settimer, NavigationShakeFailsafe, 1000
send {%NavigationKey%}
NavigationShakeModeRedo:
if (ForceReset == true)
	{
	tooltip, , , , 10
	NavigationFail := true
	goto RestartMacro
	}
sleep %NavigationSpamDelay%
PixelSearch, , , FishBarLeft, FishBarTop, FishBarRight, FishBarBottom, 0x5B4B43, %FishBarColorTolerance%, Fast
if !ErrorLevel
	{
	settimer, NavigationShakeFailsafe, off
	goto BarMinigame
	}
else
	{
	NavigationCounter++
	tooltip, Attempt Count: %NavigationCounter%, %TooltipX%, %Tooltip8%, 8
	sleep 1
	send {s}
	sleep 1
	send {enter}
	goto NavigationShakeModeRedo
	}

;=========== BAR ====================================================================================================;

BarMinigame:
sleep %BaitDelay%
; Thanks Lunar ==================
if Control == 0:
	Control := 0.001
WhiteBarSize := Round((A_ScreenWidth / 247.03) * (InStr(Control, "0.") ? (Control * 100) : Control) + (A_ScreenWidth / 8.2759), 0)
sleep 50
goto BarMinigameSingle
;====================================================================================================;

BarMinigameSingle:

	EndMinigame := false
	tooltip, Current Task: Playing Bar Minigame, %TooltipX%, %Tooltip7%, 7
	tooltip, Bar Size: %WhiteBarSize%, %TooltipX%, %Tooltip8%, 8
	tooltip, Looking for Bar, %TooltipX%, %Tooltip10%, 10
	HalfBarSize := WhiteBarSize/2
	Deadzone := WhiteBarSize*0.1
	Deadzone2 := HalfBarSize*0.75
	
	MaxLeftBar := FishBarLeft+(WhiteBarSize*SideBarRatio)
	MaxRightBar := FishBarRight-(WhiteBarSize*SideBarRatio)
	settimer, BarMinigame2, %ScanDelay%
	
BarMinigameAction:
if (EndMinigame == true)
	{
		sleep %RestartDelay%
		goto RestartMacro
	}
if (Action == 0)
	{
		SideToggle := false
		send {lbutton down}
		sleep 10
		send {lbutton up}
		sleep 10
	}
else if (Action == 1)
	{
		SideToggle := false
		send {lbutton up}
		if (AnkleBreak == false)
		{
			sleep %AnkleBreakDuration%
			AnkleBreakDuration := 0
		}
		AdaptiveDuration := 0.5 + 0.5 * (DistanceFactor ** 1.2)
		if (DistanceFactor < 0.2)
			AdaptiveDuration := 0.15 + 0.15 * DistanceFactor
		Duration := Abs(Direction) * StableLeftMultiplier * PixelScaling * AdaptiveDuration
		sleep %Duration%
		send {lbutton down}
		CounterStrafe := Duration/StableLeftDivision
		sleep %CounterStrafe%
		AnkleBreak := true
		AnkleBreakDuration := AnkleBreakDuration+(Duration-CounterStrafe)*LeftAnkleBreakMultiplier
	}
else if (Action == 2)
	{
		SideToggle := false
		send {lbutton down}
		if (AnkleBreak == true)
		{
			sleep %AnkleBreakDuration%
			AnkleBreakDuration := 0
		}
		AdaptiveDuration := 0.5 + 0.5 * (DistanceFactor ** 1.2)
		if (DistanceFactor < 0.2)
			AdaptiveDuration := 0.15 + 0.15 * DistanceFactor
		Duration := Abs(Direction) * StableRightMultiplier * PixelScaling * AdaptiveDuration
		sleep %Duration%
		send {lbutton up}
		CounterStrafe := Duration/StableRightDivision
		sleep %CounterStrafe%
		AnkleBreak := false
		AnkleBreakDuration := AnkleBreakDuration+(Duration-CounterStrafe)*RightAnkleBreakMultiplier
	}
else if (Action == 3)
	{
		if (SideToggle == false)
		{
			AnkleBreak := none
			AnkleBreakDuration := 0
			SideToggle := true
			send {lbutton up}
			sleep %SideDelay%
		}
		sleep %ScanDelay%
	}
else if (Action == 4)
	{
		if (SideToggle == false)
		{
			AnkleBreak := none
			AnkleBreakDuration := 0
			SideToggle := true
			send {lbutton down}
			sleep %SideDelay%
		}
		sleep %ScanDelay%
	}
else if (Action == 5)
	{
		SideToggle := false
		send {lbutton up}
		if (AnkleBreak == false)
		{
			sleep %AnkleBreakDuration%
			AnkleBreakDuration := 0
		}
		MinDuration := 10
		if (Control == 0.15 or Control > 0.15){
			MaxDuration := WhiteBarSize*0.88
		}else if(Control == 0.2 or Control > 0.2){
			MaxDuration := WhiteBarSize*0.8
		}else if(Control == 0.25 or Control > 0.25){
			MaxDuration := WhiteBarSize*0.75
		}else{
			MaxDuration := WhiteBarSize + (Abs(Direction) * 0.2)
		}
		Duration := Max(MinDuration, Min(Abs(Direction) * UnstableLeftMultiplier * PixelScaling, MaxDuration))
		sleep %Duration%
		send {lbutton down}
		CounterStrafe := Duration/UnstableLeftDivision
		sleep %CounterStrafe%
		AnkleBreak := true
		AnkleBreakDuration := AnkleBreakDuration+(Duration-CounterStrafe)*LeftAnkleBreakMultiplier
	}
else if (Action == 6)
	{
		SideToggle := false
		send {lbutton down}
		if (AnkleBreak == true)
		{
			sleep %AnkleBreakDuration%
			AnkleBreakDuration := 0
		}
		MinDuration := 10
		if (Control == 0.15 or Control > 0.15){
			MaxDuration := WhiteBarSize*0.88
		}else if(Control == 0.2 or Control > 0.2){
			MaxDuration := WhiteBarSize*0.8
		}else if(Control == 0.25 or Control > 0.25){
			MaxDuration := WhiteBarSize*0.75
		}else{
			MaxDuration := WhiteBarSize + (Abs(Direction) * 0.2)
		}	
		Duration := Max(MinDuration, Min(Abs(Direction) * UnstableRightMultiplier * PixelScaling, MaxDuration))
		sleep %Duration%
		send {lbutton up}
		CounterStrafe := Duration/UnstableRightDivision
		sleep %CounterStrafe%
		AnkleBreak := false
		AnkleBreakDuration := AnkleBreakDuration+(Duration-CounterStrafe)*RightAnkleBreakMultiplier
	}
else
	{
		sleep %ScanDelay%
	}
goto BarMinigameAction



BarMinigame2:
sleep 1
PixelSearch, FishX, , FishBarLeft, FishBarTop, FishBarRight, FishBarBottom, 0x5B4B43, %FishBarColorTolerance%, Fast
if !ErrorLevel
	{
	tooltip, +, %FishX%, %FishBarTooltipHeight%, 20
	if (FishX < MaxLeftBar)
		{
			Action := 3
			tooltip, |, %MaxLeftBar%, %FishBarTooltipHeight%, 19
			tooltip, Direction: Max Left, %TooltipX%, %Tooltip10%, 10
			PixelSearch, ArrowX, , FishBarLeft, FishBarTop, FishBarRight, FishBarBottom, 0x878584, %ArrowColorTolerance%, Fast
				if !ErrorLevel
				{	
					tooltip, <-, %ArrowX%, %FishBarTooltipHeight%, 18
					if (MaxLeftBar < ArrowX)
					{	
						SideToggle := false
					}
				}
			return
		}
	else if (FishX > MaxRightBar)
		{
			Action := 4
			tooltip, |, %MaxRightBar%, %FishBarTooltipHeight%, 19
			tooltip, Direction: Max Right, %TooltipX%, %Tooltip10%, 10
			PixelSearch, ArrowX, , FishBarLeft, FishBarTop, FishBarRight, FishBarBottom, 0x878584, %ArrowColorTolerance%, Fast
				if !ErrorLevel
				{	
					tooltip, ->, %ArrowX%, %FishBarTooltipHeight%, 18
					if (MaxRightBar > ArrowX)
					{	
						SideToggle := false
					}
				}
			return
		}
	PixelSearch, BarX, , FishBarLeft, FishBarTop, FishBarRight, FishBarBottom, 0xFFFFFF, %WhiteBarColorTolerance%, Fast
	if !ErrorLevel
		{
			tooltip, , , , 18
			BarX := BarX + HalfBarSize
			Direction := BarX - FishX
			DistanceFactor := Abs(Direction) / HalfBarSize

			Ratio2 := Deadzone2/WhiteBarSize
			if (Direction > Deadzone && Direction < Deadzone2)
			{
				Action := 1
				tooltip, Tracking direction: <, %TooltipX%, %Tooltip10%, 10
				tooltip, <, %BarX%, %FishBarTooltipHeight%, 19
			}
			else if (Direction < -Deadzone && Direction > -Deadzone2)
			{
				Action := 2
				tooltip, Tracking direction: >, %TooltipX%, %Tooltip10%, 10
				tooltip, >, %BarX%, %FishBarTooltipHeight%, 19
			}
			else if (Direction > Deadzone2)
			{
				Action := 5
				tooltip, Tracking direction: <<<, %TooltipX%, %Tooltip10%, 10
				tooltip, <, %BarX%, %FishBarTooltipHeight%, 19
			}
			else if (Direction < -Deadzone2)
			{
				Action := 6
				tooltip, Tracking direction: >>>, %TooltipX%, %Tooltip10%, 10
				tooltip, >, %BarX%, %FishBarTooltipHeight%, 19
			}
			else
			{
				Action := 0
				tooltip, Stabilizing, %TooltipX%, %Tooltip10%, 10
				tooltip, ., %BarX%, %FishBarTooltipHeight%, 19
			}
		}
	else
		{
			Direction := HalfBarSize
			PixelSearch, ArrowX, , FishBarLeft, FishBarTop, FishBarRight, FishBarBottom, 0x878584, %ArrowColorTolerance%, Fast
			ArrowX := ArrowX-FishX
			if (ArrowX > 0)
			{	
				Action := 5
				BarX := FishX+HalfBarSize
				tooltip, Tracking direction: <<<, %TooltipX%, %Tooltip10%, 10
				tooltip, <, %BarX%, %FishBarTooltipHeight%, 19
			}
			else
			{	
				Action := 6
				BarX := FishX-HalfBarSize
				tooltip, Tracking direction: >>>, %TooltipX%, %Tooltip10%, 10
				tooltip, >, %BarX%, %FishBarTooltipHeight%, 19
			}
		}
	}
else
	{
		tooltip, , , , 10
		tooltip, , , , 11
		tooltip, , , , 12
		tooltip, , , , 13
		tooltip, , , , 14
		tooltip, , , , 15
		tooltip, , , , 17
		tooltip, , , , 18
		tooltip, , , , 19
		tooltip, , , , 20
		EndMinigame := true
		settimer, BarMinigame2, Off
	}