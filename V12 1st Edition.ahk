#SingleInstance Force
setkeydelay, -1
setmousedelay, -1
setbatchlines, -1
SetTitleMatchMode 2

CoordMode, Tooltip, Relative
CoordMode, Pixel, Relative
CoordMode, Mouse, Relative

;		GUI		==============================================================================================================;

Gui,+AlwaysOnTop
Gui, +Resize +MinSize
Gui, Add, Tab2, w800 h550, General Settings|Shake Settings|Minigame Settings
Gui, Color, 0xFFFFFF

; General Settings Tab ==============================
Gui, Tab, General Settings
Gui, Add, Text, x30 y40, Auto Lower Graphics:
Gui, Add, Checkbox, x170 y40 vAutoLowerGraphics, Enable
Gui, Add, Text, x30 y80, Auto Zoom In:
Gui, Add, Checkbox, x170 y80 vAutoZoomInCamera, Enable
Gui, Add, Text, x30 y120, Auto Enable Camera Mode:
Gui, Add, Checkbox, x170 y120 vAutoEnableCameraMode, Enable
Gui, Add, Text, x30 y160, Auto Look Down:
Gui, Add, Checkbox, x170 y160 vAutoLookDownCamera, Enable
Gui, Add, Text, x30 y200, Auto Blur:
Gui, Add, Checkbox, x170 y200 vAutoBlurCamera, Enable
Gui, Add, Text, x30 y240, Restart Delay (ms):
Gui, Add, Edit, x170 y240 w100 vRestartDelay, 1500
Gui, Add, Text, x30 y280, Hold Rod Cast Duration (ms):
Gui, Add, Edit, x170 y280 w100 vHoldRodCastDuration, 600
Gui, Add, Text, x30 y320, Wait for Bobber to Land (ms):
Gui, Add, Edit, x170 y320 w100 vWaitForBobberDelay, 1000
Gui, Add, Text, x30 y360, Bait Delay (ms):
Gui, Add, Edit, x170 y360 w100 vBaitDelay, 600

; Webhook
Gui, Add, Text, x30 y400, Webhook URL:
Gui, Add, Edit, x170 y400 w200 vWebhookURL, 
Gui, Add, Text, x30 y440, Hook Interval (catches):
Gui, Add, Edit, x170 y440 w100 vHookInterval, 3

; Mini guide
Gui, Add, Link, x380 y40, <a href="https://discord.com/invite/mangos"> Join White Sands Macros</a>
Gui, Add, Link, x380 y60, <a href="https://discord.com/channels/1322430437536170037/1323672910640185415">Check out the pre-setup before you begin (Only available in the discord above)</a>
Gui, Add, Text, x380 y160, To use others' minigame settings, do 1 of 2 options:
Gui, Add, Text, x380 y180, - Remove your Settings.ini file and use theirs
Gui, Add, Text, x380 y200, - Manually copy the values to Minigame Settings
Gui, Add, Link, x380 y400, <a href="https://www.youtube.com/watch?v=fKksxz2Gdnc">Create a Webhook tutorial</a>
Gui, Add, Text, x380 y420, Watch the first 50 seconds, copy the Webhook URL and paste it into the box
Gui, Add, Text, x380 y440, <- The interval means how many catches until it sends the message

; Shake Settings Tab =====================================
Gui, Tab, Shake Settings
Gui, Add, Text, x30 y40, Navigation Key:
Gui, Add, Edit, x190 y40 w100 vNavigationKey, \
Gui, Add, Text, x30 y80, Shake Mode:
Gui, Add, ComboBox, x190 y80 w100 vShakeMode, Click|Navigation
Gui, Add, Text, x340 y40, Check your Navigation Key in the Roblox settings
Gui, Add, Text, x340 y80, If you already set it up, to ensure Shake Mode works:
Gui, Add, Text, x340 y100, Load settings -> Save settings -> Start Macro

; Click set
Gui, Add, Text, x30 y120, Click Shake Failsafe (sec):
Gui, Add, Edit, x190 y120 w100 vClickShakeFailsafe, 20
Gui, Add, Text, x30 y160, Click Shake Color Tolerance:
Gui, Add, Edit, x190 y160 w100 vClickShakeColorTolerance, 3
Gui, Add, Text, x30 y200, Click Scan Delay (ms):
Gui, Add, Edit, x190 y200 w100 vClickScanDelay, 10
Gui, Add, Text, x30 y240, Repeat Bypass Counter:
Gui, Add, Edit, x190 y240 w100 vRepeatBypassCounter, 10

; Nav set
Gui, Add, Text, x30 y280, Navigation Shake Failsafe (sec):
Gui, Add, Edit, x190 y280 w100 vNavigationShakeFailsafe, 20
Gui, Add, Text, x30 y320, Navigation Spam Delay (ms):
Gui, Add, Edit, x190 y320 w100 vNavigationSpamDelay, 10


; Minigame Settings Tab	============================
Gui, Tab, Minigame Settings

; Bar calc
Gui, Add, Text, x30 y40, Set 0 to auto calculate Bar size
Gui, Add, Text, x30 y60, Manual Bar Size:
Gui, Add, Edit, x180 y60 w100 vManualBarSize, 0
Gui, Add, Text, x30 y100, Bar Calculation Failsafe (sec):
Gui, Add, Edit, x180 y100 w100 vBarCalculationFailsafe, 10
Gui, Add, Text, x30 y140, Bar Size Tolerance:
Gui, Add, Edit, x180 y140 w100 vBarSizeCalculationColorTolerance, 15
Gui, Add, Text, x30 y180, Fish Bar Tolerance:
Gui, Add, Edit, x180 y180 w100 vFishBarColorTolerance, 5
Gui, Add, Text, x30 y220, White Bar Tolerance:
Gui, Add, Edit, x180 y220 w100 vWhiteBarColorTolerance, 16
Gui, Add, Text, x30 y260, Arrow Tolerance:
Gui, Add, Edit, x180 y260 w100 vArrowColorTolerance, 6

; Bar control
Gui, Add, Text, x30 y300, Stabilizer Loop (clicks):
Gui, Add, Edit, x180 y300 w100 vStabilizerLoop, 13
Gui, Add, Text, x30 y340, Side Bar Ratio:
Gui, Add, Edit, x180 y340 w100 vSideBarRatio, 0.8
Gui, Add, Text, x30 y380, Side Bar Wait Multiplier:
Gui, Add, Edit, x180 y380 w100 vSideBarWaitMultiplier, 3.5

; Stable
Gui, Add, Text, x400 y40, Stable Right Multiplier:
Gui, Add, Edit, x550 y40 w100 vStableRightMultiplier, 2.360
Gui, Add, Text, x400 y80, Stable Right Division:
Gui, Add, Edit, x550 y80 w100 vStableRightDivision, 1.55
Gui, Add, Text, x400 y120, Stable Left Multiplier:
Gui, Add, Edit, x550 y120 w100 vStableLeftMultiplier, 1.211
Gui, Add, Text, x400 y160, Stable Left Division:
Gui, Add, Edit, x550 y160 w100 vStableLeftDivision, 1.12

; Unstable
Gui, Add, Text, x400 y200, Unstable Right Multiplier:
Gui, Add, Edit, x550 y200 w100 vUnstableRightMultiplier, 2.665
Gui, Add, Text, x400 y240, Unstable Right Division:
Gui, Add, Edit, x550 y240 w100 vUnstableRightDivision, 1.5
Gui, Add, Text, x400 y280, Unstable Left Multiplier:
Gui, Add, Edit, x550 y280 w100 vUnstableLeftMultiplier, 2.190
Gui, Add, Text, x400 y320, Unstable Left Division:
Gui, Add, Edit, x550 y320 w100 vUnstableLeftDivision, 0.9

; Ankle
Gui, Add, Text, x400 y360, Right Ankle Break Multiplier:
Gui, Add, Edit, x550 y360 w100 vRightAnkleBreakMultiplier, 1.35
Gui, Add, Text, x400 y400, Left Ankle Break Multiplier:
Gui, Add, Edit, x550 y400 w100 vLeftAnkleBreakMultiplier, 0.725
Gui, Add, Link, x30 y430, <a href="https://docs.google.com/document/d/1V2ahBQhzkFwZgpPdOJz0qpVSXPwTyQ92uIGbeyUILac/edit?usp=sharing">Minigame Settings Guide</a>
Gui, Add, Text, x30 y450, Make your own config or use others'

; Buttons
Gui, Tab
Gui, Add, Button, x200 y500 w80 h30 gSaveSettings, Save settings
Gui, Add, Button, x300 y500 w80 h30 gLoadSettings, Load settings
Gui, Add, Button, x400 y500 w80 h30 gExitScript, Exit
Gui, Add, Button, x500 y500 w80 h30 gLaunch, Start Macro
Gui, Add, Text, x30 y480 , Config file name (You dont have to put .ini)
Gui, Add, Edit, x30 y500 w100 h25 VLoadSettingsFileName GSettingFileUpdate , settings
	Gui, Submit, NoHide
	SettingsFileName := % LoadSettingsFileName . ".ini"
Gui, Show,, Settings
If (FileExist(A_ScriptDir . "\%SettingsFileName%")) {
    Goto, LoadSettings
}
Return
	
	SettingFileUpdate:
	Gui, Submit, NoHide
	SettingsFileName := % LoadSettingsFileName . ".ini"
	return
; Save settings
SaveSettings:
    Gui, Submit, NoHide
    IniWrite, %AutoLowerGraphics%, %SettingsFileName%, General, AutoLowerGraphics
    IniWrite, %AutoZoomInCamera%, %SettingsFileName%, General, AutoZoomInCamera
    IniWrite, %AutoEnableCameraMode%, %SettingsFileName%, General, AutoEnableCameraMode
    IniWrite, %AutoLookDownCamera%, %SettingsFileName%, General, AutoLookDownCamera
    IniWrite, %AutoBlurCamera%, %SettingsFileName%, General, AutoBlurCamera

    IniWrite, %RestartDelay%, %SettingsFileName%, General, RestartDelay
    IniWrite, %HoldRodCastDuration%, %SettingsFileName%, General, HoldRodCastDuration
    IniWrite, %WaitForBobberDelay%, %SettingsFileName%, General, WaitForBobberDelay
	IniWrite, %BaitDelay%, %SettingsFileName%, General, BaitDelay

    IniWrite, %WebhookURL%, %SettingsFileName%, General, WebhookURL
    IniWrite, %HookInterval%, %SettingsFileName%, General, HookInterval

    IniWrite, %NavigationKey%, %SettingsFileName%, Shake, NavigationKey
    IniWrite, %ShakeMode%, %SettingsFileName%, Shake, ShakeMode

    IniWrite, %ClickShakeFailsafe%, %SettingsFileName%, Shake, ClickShakeFailsafe
    IniWrite, %ClickShakeColorTolerance%, %SettingsFileName%, Shake, ClickShakeColorTolerance
    IniWrite, %ClickScanDelay%, %SettingsFileName%, Shake, ClickScanDelay

    IniWrite, %RepeatBypassCounter%, %SettingsFileName%, Shake, RepeatBypassCounter
    IniWrite, %NavigationShakeFailsafe%, %SettingsFileName%, Shake, NavigationShakeFailsafe
    IniWrite, %NavigationSpamDelay%, %SettingsFileName%, Shake, NavigationSpamDelay

    IniWrite, %ManualBarSize%, %SettingsFileName%, Minigame, ManualBarSize
    IniWrite, %BarCalculationFailsafe%, %SettingsFileName%, Minigame, BarCalculationFailsafe
    IniWrite, %BarSizeCalculationColorTolerance%, %SettingsFileName%, Minigame, BarSizeCalculationColorTolerance
    IniWrite, %FishBarColorTolerance%, %SettingsFileName%, Minigame, FishBarColorTolerance
    IniWrite, %WhiteBarColorTolerance%, %SettingsFileName%, Minigame, WhiteBarColorTolerance
    IniWrite, %ArrowColorTolerance%, %SettingsFileName%, Minigame, ArrowColorTolerance

    IniWrite, %StabilizerLoop%, %SettingsFileName%, Minigame, StabilizerLoop
    IniWrite, %SideBarRatio%, %SettingsFileName%, Minigame, SideBarRatio
    IniWrite, %SideBarWaitMultiplier%, %SettingsFileName%, Minigame, SideBarWaitMultiplier

    IniWrite, %StableRightMultiplier%, %SettingsFileName%, Minigame, StableRightMultiplier
    IniWrite, %StableRightDivision%, %SettingsFileName%, Minigame, StableRightDivision
    IniWrite, %StableLeftMultiplier%, %SettingsFileName%, Minigame, StableLeftMultiplier
    IniWrite, %StableLeftDivision%, %SettingsFileName%, Minigame, StableLeftDivision

    IniWrite, %UnstableRightMultiplier%, %SettingsFileName%, Minigame, UnstableRightMultiplier
    IniWrite, %UnstableRightDivision%, %SettingsFileName%, Minigame, UnstableRightDivision
    IniWrite, %UnstableLeftMultiplier%, %SettingsFileName%, Minigame, UnstableLeftMultiplier
    IniWrite, %UnstableLeftDivision%, %SettingsFileName%, Minigame, UnstableLeftDivision

    IniWrite, %RightAnkleBreakMultiplier%, %SettingsFileName%, Minigame, RightAnkleBreakMultiplier
    IniWrite, %LeftAnkleBreakMultiplier%, %SettingsFileName%, Minigame, LeftAnkleBreakMultiplier
	
    ; Done
	Gui, -AlwaysOnTop
	MsgBox, 0x40040, Saved, Settings saved successfully as %SettingsFileName%, 0.8
	Gui, +AlwaysOnTop
Return

; Load settings
LoadSettings:
	IniRead, lAutoLowerGraphics, %SettingsFileName%, General, AutoLowerGraphics
	IniRead, lAutoZoomInCamera, %SettingsFileName%, General, AutoZoomInCamera
	IniRead, lAutoEnableCameraMode, %SettingsFileName%, General, AutoEnableCameraMode
	IniRead, lAutoLookDownCamera, %SettingsFileName%, General, AutoLookDownCamera
	IniRead, lAutoBlurCamera, %SettingsFileName%, General, AutoBlurCamera

	IniRead, lRestartDelay, %SettingsFileName%, General, RestartDelay
	IniRead, lHoldRodCastDuration, %SettingsFileName%, General, HoldRodCastDuration
	IniRead, lWaitForBobberDelay, %SettingsFileName%, General, WaitForBobberDelay
	IniRead, lBaitDelay, %SettingsFileName%, General, BaitDelay

	IniRead, lWebhookURL, %SettingsFileName%, General, WebhookURL
	IniRead, lHookInterval, %SettingsFileName%, General, HookInterval

	IniRead, lNavigationKey, %SettingsFileName%, Shake, NavigationKey
	IniRead, lShakeMode, %SettingsFileName%, Shake, ShakeMode

	IniRead, lClickShakeFailsafe, %SettingsFileName%, Shake, ClickShakeFailsafe
	IniRead, lClickShakeColorTolerance, %SettingsFileName%, Shake, ClickShakeColorTolerance
	IniRead, lClickScanDelay, %SettingsFileName%, Shake, ClickScanDelay

	IniRead, lRepeatBypassCounter, %SettingsFileName%, Shake, RepeatBypassCounter
	IniRead, lNavigationShakeFailsafe, %SettingsFileName%, Shake, NavigationShakeFailsafe
	IniRead, lNavigationSpamDelay, %SettingsFileName%, Shake, NavigationSpamDelay

	IniRead, lManualBarSize, %SettingsFileName%, Minigame, ManualBarSize
	IniRead, lBarCalculationFailsafe, %SettingsFileName%, Minigame, BarCalculationFailsafe
	IniRead, lBarSizeCalculationColorTolerance, %SettingsFileName%, Minigame, BarSizeCalculationColorTolerance
	IniRead, lFishBarColorTolerance, %SettingsFileName%, Minigame, FishBarColorTolerance
	IniRead, lWhiteBarColorTolerance, %SettingsFileName%, Minigame, WhiteBarColorTolerance
	IniRead, lArrowColorTolerance, %SettingsFileName%, Minigame, ArrowColorTolerance

	IniRead, lStabilizerLoop, %SettingsFileName%, Minigame, StabilizerLoop
	IniRead, lSideBarRatio, %SettingsFileName%, Minigame, SideBarRatio
	IniRead, lSideBarWaitMultiplier, %SettingsFileName%, Minigame, SideBarWaitMultiplier

	IniRead, lStableRightMultiplier, %SettingsFileName%, Minigame, StableRightMultiplier
	IniRead, lStableRightDivision, %SettingsFileName%, Minigame, StableRightDivision
	IniRead, lStableLeftMultiplier, %SettingsFileName%, Minigame, StableLeftMultiplier
	IniRead, lStableLeftDivision, %SettingsFileName%, Minigame, StableLeftDivision

	IniRead, lUnstableRightMultiplier, %SettingsFileName%, Minigame, UnstableRightMultiplier
	IniRead, lUnstableRightDivision, %SettingsFileName%, Minigame, UnstableRightDivision
	IniRead, lUnstableLeftMultiplier, %SettingsFileName%, Minigame, UnstableLeftMultiplier
	IniRead, lUnstableLeftDivision, %SettingsFileName%, Minigame, UnstableLeftDivision

	IniRead, lRightAnkleBreakMultiplier, %SettingsFileName%, Minigame, RightAnkleBreakMultiplier
	IniRead, lLeftAnkleBreakMultiplier, %SettingsFileName%, Minigame, LeftAnkleBreakMultiplier

	; Update GUI
	if FileExist(SettingsFileName) {
	Gui, Submit, NoHide
	GuiControl,, AutoLowerGraphics, %lAutoLowerGraphics%
	GuiControl,, AutoZoomInCamera, %lAutoZoomInCamera%
	GuiControl,, AutoEnableCameraMode, %lAutoEnableCameraMode%
	GuiControl,, AutoLookDownCamera, %lAutoLookDownCamera%
	GuiControl,, AutoBlurCamera, %lAutoBlurCamera%

	GuiControl,, RestartDelay, %lRestartDelay%
	GuiControl,, HoldRodCastDuration, %lHoldRodCastDuration%
	GuiControl,, WaitForBobberDelay, %lWaitForBobberDelay%
	GuiControl,, BaitDelay, %lBaitDelay%

	GuiControl,, WebhookURL, %lWebhookURL%
	GuiControl,, HookInterval, %lHookInterval%

	GuiControl,, NavigationKey, %lNavigationKey%
	GuiControl,Choose, ShakeMode, %lShakeMode%

	GuiControl,, ClickShakeFailsafe, %lClickShakeFailsafe%
	GuiControl,, ClickShakeColorTolerance, %lClickShakeColorTolerance%
	GuiControl,, ClickScanDelay, %lClickScanDelay%

	GuiControl,, RepeatBypassCounter, %lRepeatBypassCounter%
	GuiControl,, NavigationShakeFailsafe, %lNavigationShakeFailsafe%
	GuiControl,, NavigationSpamDelay, %lNavigationSpamDelay%

	GuiControl,, ManualBarSize, %lManualBarSize%
	GuiControl,, BarCalculationFailsafe, %lBarCalculationFailsafe%
	GuiControl,, BarSizeCalculationColorTolerance, %lBarSizeCalculationColorTolerance%
	GuiControl,, FishBarColorTolerance, %lFishBarColorTolerance%
	GuiControl,, WhiteBarColorTolerance, %lWhiteBarColorTolerance%
	GuiControl,, ArrowColorTolerance, %lArrowColorTolerance%

	GuiControl,, StabilizerLoop, %lStabilizerLoop%
	GuiControl,, SideBarRatio, %lSideBarRatio%
	GuiControl,, SideBarWaitMultiplier, %lSideBarWaitMultiplier%

	GuiControl,, StableRightMultiplier, %lStableRightMultiplier%
	GuiControl,, StableRightDivision, %lStableRightDivision%
	GuiControl,, StableLeftMultiplier, %lStableLeftMultiplier%
	GuiControl,, StableLeftDivision, %lStableLeftDivision%

	GuiControl,, UnstableRightMultiplier, %lUnstableRightMultiplier%
	GuiControl,, UnstableRightDivision, %lUnstableRightDivision%
	GuiControl,, UnstableLeftMultiplier, %lUnstableLeftMultiplier%
	GuiControl,, UnstableLeftDivision, %lUnstableLeftDivision%

	GuiControl,, RightAnkleBreakMultiplier, %lRightAnkleBreakMultiplier%
	GuiControl,, LeftAnkleBreakMultiplier, %lLeftAnkleBreakMultiplier%
	
	; Done
	Gui, -AlwaysOnTop
	MsgBox, 0x40040, Loaded, Loaded %SettingsFileName% !, 0.8
	Gui, +AlwaysOnTop
	} else {
	Gui, -AlwaysOnTop
	MsgBox, 0x40030, Loaded, Settings Failed to load. Make sure: `n- The setting file was created in the folder `n- The file name you typed is correct `nIf not, Run as admin and try again.
	Gui, +AlwaysOnTop
	}
Return

ExitScript:
    ExitApp
Return

GuiClose:
ExitApp

;====================================================================================================;
Launch:
Gui, Hide
	IniRead, lAutoLowerGraphics, %SettingsFileName%, General, AutoLowerGraphics
	IniRead, lAutoZoomInCamera, %SettingsFileName%, General, AutoZoomInCamera
	IniRead, lAutoEnableCameraMode, %SettingsFileName%, General, AutoEnableCameraMode
	IniRead, lAutoLookDownCamera, %SettingsFileName%, General, AutoLookDownCamera
	IniRead, lAutoBlurCamera, %SettingsFileName%, General, AutoBlurCamera
	IniRead, lRestartDelay, %SettingsFileName%, General, RestartDelay
	IniRead, lHoldRodCastDuration, %SettingsFileName%, General, HoldRodCastDuration
	IniRead, lWaitForBobberDelay, %SettingsFileName%, General, WaitForBobberDelay
	IniRead, lBaitDelay, %SettingsFileName%, General, BaitDelay
	IniRead, lWebhookURL, %SettingsFileName%, General, WebhookURL
	IniRead, lHookInterval, %SettingsFileName%, General, HookInterval

	IniRead, lNavigationKey, %SettingsFileName%, Shake, NavigationKey
	IniRead, lShakeMode, %SettingsFileName%, Shake, ShakeMode
	IniRead, lClickShakeFailsafe, %SettingsFileName%, Shake, ClickShakeFailsafe
	IniRead, lClickShakeColorTolerance, %SettingsFileName%, Shake, ClickShakeColorTolerance
	IniRead, lClickScanDelay, %SettingsFileName%, Shake, ClickScanDelay
	IniRead, lRepeatBypassCounter, %SettingsFileName%, Shake, RepeatBypassCounter
	IniRead, lNavigationShakeFailsafe, %SettingsFileName%, Shake, NavigationShakeFailsafe
	IniRead, lNavigationSpamDelay, %SettingsFileName%, Shake, NavigationSpamDelay

	IniRead, lManualBarSize, %SettingsFileName%, Minigame, ManualBarSize
	IniRead, lBarCalculationFailsafe, %SettingsFileName%, Minigame, BarCalculationFailsafe
	IniRead, lBarSizeCalculationColorTolerance, %SettingsFileName%, Minigame, BarSizeCalculationColorTolerance
	IniRead, lFishBarColorTolerance, %SettingsFileName%, Minigame, FishBarColorTolerance
	IniRead, lWhiteBarColorTolerance, %SettingsFileName%, Minigame, WhiteBarColorTolerance
	IniRead, lArrowColorTolerance, %SettingsFileName%, Minigame, ArrowColorTolerance

	IniRead, lStabilizerLoop, %SettingsFileName%, Minigame, StabilizerLoop
	IniRead, lSideBarRatio, %SettingsFileName%, Minigame, SideBarRatio
	IniRead, lSideBarWaitMultiplier, %SettingsFileName%, Minigame, SideBarWaitMultiplier

	IniRead, lStableRightMultiplier, %SettingsFileName%, Minigame, StableRightMultiplier
	IniRead, lStableRightDivision, %SettingsFileName%, Minigame, StableRightDivision
	IniRead, lStableLeftMultiplier, %SettingsFileName%, Minigame, StableLeftMultiplier
	IniRead, lStableLeftDivision, %SettingsFileName%, Minigame, StableLeftDivision
	IniRead, lUnstableRightMultiplier, %SettingsFileName%, Minigame, UnstableRightMultiplier
	IniRead, lUnstableRightDivision, %SettingsFileName%, Minigame, UnstableRightDivision
	IniRead, lUnstableLeftMultiplier, %SettingsFileName%, Minigame, UnstableLeftMultiplier
	IniRead, lUnstableLeftDivision, %SettingsFileName%, Minigame, UnstableLeftDivision
	IniRead, lRightAnkleBreakMultiplier, %SettingsFileName%, Minigame, RightAnkleBreakMultiplier
	IniRead, lLeftAnkleBreakMultiplier, %SettingsFileName%, Minigame, LeftAnkleBreakMultiplier
	
if (ShakeMode != "Navigation" and ShakeMode != "Click")
	{
	msgbox, Shake Mode wasn't saved, remember to Save before you Start
	exitapp
	}

;====================================================================================================;

WinActivate, Roblox
if WinActive("Roblox")
	{
	WinMaximize, Roblox
	}
else
	{
	msgbox, where roblox bruh
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

ClickShakeLeft := WindowWidth/4.6545
ClickShakeRight := WindowWidth/1.2736
ClickShakeTop := WindowHeight/9
ClickShakeBottom := WindowHeight/1.3409

FishBarLeft := WindowWidth/3.3160
FishBarRight := WindowWidth/1.4317
FishBarTop := WindowHeight/1.1871
FishBarBottom := WindowHeight/1.1512

ProgressAreaLeft := WindowWidth/2.55
ProgressAreaRight := WindowWidth/1.63
ProgressAreaTop := WindowHeight/1.13
ProgressAreaBottom := WindowHeight/1.08

FishBarTooltipHeight := WindowHeight/1.0626

; Thanks Lunar res calculation
ResolutionScaling := WindowWidth / (WindowWidth * 2.37)

LookDownX := WindowWidth/2
LookDownY := WindowHeight/4

runtimeS := 0
runtimeM := 0
runtimeH := 0
FishCaught := 0
FishLost := 0
LostVar := false
IntervalReset := 0

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
tooltip, Runtime: 0h 0m 0s, %TooltipX%, %Tooltip2%, 2

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

    tooltip, Runtime: %runtimeH%h %runtimeM%m %runtimeS%s, %TooltipX%, %Tooltip2%, 2

    if (WinExist("ahk_exe RobloxPlayerBeta.exe")) {
        if (!WinActive("ahk_exe RobloxPlayerBeta.exe")) {
            WinActivate
        }
    }
    else {
        exitapp
    }
return

;====================================================================================================;

#IfWinNotActive, ahk_class AutoHotkeyGUI
$o::Reload
$m::ExitApp
$p:: goto StartCalculation
#IfWinNotActive

StartCalculation:
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

tooltip, Current Task: AutoLowerGraphics, %TooltipX%, %Tooltip7%, 7
tooltip, F10 Count: 0/20, %TooltipX%, %Tooltip9%, 9
f10counter := 0
if (AutoLowerGraphics == true)
	{
	send {shift}
	tooltip, Action: Press Shift, %TooltipX%, %Tooltip8%, 8
	sleep 50
	send {shift down}
	tooltip, Action: Hold Shift, %TooltipX%, %Tooltip8%, 8
	sleep 50
	loop, 20
		{
		f10counter++
		tooltip, F10 Count: %f10counter%/20, %TooltipX%, %Tooltip9%, 9
		send {f10}
		tooltip, Action: Press F10, %TooltipX%, %Tooltip8%, 8
		sleep 50
		}
	send {shift up}
	tooltip, Action: Release Shift, %TooltipX%, %Tooltip8%, 8
	sleep 50
	}

tooltip, Current Task: AutoZoomInCamera, %TooltipX%, %Tooltip7%, 7
tooltip, Scroll In: 0/20, %TooltipX%, %Tooltip9%, 9
tooltip, Scroll Out: 0/1, %TooltipX%, %Tooltip10%, 10
scrollcounter := 0
if (AutoZoomInCamera == true)
	{
	sleep 50
	loop, 20
		{
		scrollcounter++
		tooltip, Scroll In: %scrollcounter%/20, %TooltipX%, %Tooltip9%, 9
		send {wheelup}
		tooltip, Action: Scroll In, %TooltipX%, %Tooltip8%, 8
		sleep 50
		}
	send {wheeldown}
	tooltip, Scroll Out: 1/1, %TooltipX%, %Tooltip10%, 10
	tooltip, Action: Scroll Out, %TooltipX%, %Tooltip8%, 8
	AutoZoomDelay := AutoZoomDelay*5
	sleep 50
	}
	
tooltip, , , , 10

tooltip, Current Task: AutoEnableCameraMode, %TooltipX%, %Tooltip7%, 7
tooltip, Right Count: 0/10, %TooltipX%, %Tooltip9%, 9
rightcounter := 0
if (AutoEnableCameraMode == true)
	{
	PixelSearch, , , CameraCheckLeft, CameraCheckTop, CameraCheckRight, CameraCheckBottom, 0xFFFFFF, 0, Fast
	if (ErrorLevel == 0)
		{
		sleep 50
		send {2}
		tooltip, Action: Presss 2, %TooltipX%, %Tooltip8%, 8
		sleep 50
		send {1}
		tooltip, Action: Press 1, %TooltipX%, %Tooltip8%, 8
		sleep 50
		send {%NavigationKey%}
		tooltip, Action: Press %NavigationKey%, %TooltipX%, %Tooltip8%, 8
		sleep 50
		loop, 10
			{
			rightcounter++
			tooltip, Right Count: %rightcounter%/10, %TooltipX%, %Tooltip9%, 9
			send {right}
			tooltip, Action: Press Right, %TooltipX%, %Tooltip8%, 8
			sleep 50
			}
		send {enter}
		tooltip, Action: Press Enter, %TooltipX%, %Tooltip8%, 8
		sleep 50
		}
	}

RestartMacro:

tooltip, , , , 9
tooltip, Fish Caught: %FishCaught%, %TooltipX%, %Tooltip19%, 19
tooltip, Fish Lost: %FishLost%, %TooltipX%, %Tooltip20%, 20

tooltip, Current Task: AutoLookDownCamera, %TooltipX%, %Tooltip7%, 7
if (AutoLookDownCamera == true)
	{
	send {rbutton up}
	sleep 100
	mousemove, LookDownX, LookDownY
	tooltip, Action: Position Mouse, %TooltipX%, %Tooltip8%, 8
	sleep 100
	send {rbutton down}
	tooltip, Action: Hold Right Click, %TooltipX%, %Tooltip8%, 8
	sleep 100
	DllCall("mouse_event", "UInt", 0x01, "UInt", 0, "UInt", 10000)
	tooltip, Action: Move Mouse Down, %TooltipX%, %Tooltip8%, 8
	sleep 100
	send {rbutton up}
	tooltip, Action: Release Right Click, %TooltipX%, %Tooltip8%, 8
	sleep 100
	mousemove, LookDownX, LookDownY
	tooltip, Action: Position Mouse, %TooltipX%, %Tooltip8%, 8
	sleep 100
	}
	
tooltip, Current Task: AutoBlurCamera, %TooltipX%, %Tooltip7%, 7	
if (AutoBlurCamera == true)
	{
	sleep 50
	send {m}
	tooltip, Action: Press M, %TooltipX%, %Tooltip8%, 8
	sleep 50
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
tooltip, Failsafe: %ClickFailsafeCount%/%ClickShakeFailsafe%, %TooltipX%, %Tooltip14%, 14
if (ClickFailsafeCount >= ClickShakeFailsafe)
	{
	settimer, ClickShakeFailsafe, off
	ForceReset := true
	}
return

ClickShakeMode:

tooltip, Current Task: Shaking, %TooltipX%, %Tooltip7%, 7
tooltip, Click X: None, %TooltipX%, %Tooltip8%, 8
tooltip, Click Y: None, %TooltipX%, %Tooltip9%, 9

tooltip, Click Count: 0, %TooltipX%, %Tooltip11%, 11
tooltip, Bypass Count: 0/%RepeatBypassCounter%, %TooltipX%, %Tooltip12%, 12

tooltip, Failsafe: 0/%ClickShakeFailsafe%, %TooltipX%, %Tooltip14%, 14

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
if (ErrorLevel == 0)
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
	if (ErrorLevel == 0)
		{

		tooltip, Click X: %ClickX%, %TooltipX%, %Tooltip8%, 8
		tooltip, Click Y: %ClickY%, %TooltipX%, %Tooltip9%, 9

		if (ClickX != MemoryX and ClickY != MemoryY)
			{
			ClickShakeRepeatBypassCounter := 0
			tooltip, Bypass Count: %ClickShakeRepeatBypassCounter%/%RepeatBypassCounter%, %TooltipX%, %Tooltip12%, 12
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
			tooltip, Bypass Count: %ClickShakeRepeatBypassCounter%/%RepeatBypassCounter%, %TooltipX%, %Tooltip12%, 12
			if (ClickShakeRepeatBypassCounter >= RepeatBypassCounter)
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
tooltip, Failsafe: %NavigationFailsafeCount%/%NavigationShakeFailsafe%, %TooltipX%, %Tooltip10%, 10
if (NavigationFailsafeCount >= NavigationShakeFailsafe)
	{
	settimer, NavigationShakeFailsafe, off
	ForceReset := true
	}
return

NavigationShakeMode:

tooltip, Current Task: Shaking, %TooltipX%, %Tooltip7%, 7
tooltip, Attempt Count: 0, %TooltipX%, %Tooltip8%, 8

tooltip, Failsafe: 0/%NavigationShakeFailsafe%, %TooltipX%, %Tooltip10%, 10

NavigationFailsafeCount := 0
NavigationCounter := 0
ForceReset := false
settimer, NavigationShakeFailsafe, 1000
send {%NavigationKey%}
NavigationShakeModeRedo:
if (ForceReset == true)
	{
	tooltip, , , , 10
	goto RestartMacro
	}
sleep %NavigationSpamDelay%
PixelSearch, , , FishBarLeft, FishBarTop, FishBarRight, FishBarBottom, 0x5B4B43, %FishBarColorTolerance%, Fast
if (ErrorLevel == 0)
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
; Thanks Lunar
CheckForFail:
Colors := [0xFFFFFF, 0x9F9F9F]
for _, Color in Colors {
    PixelSearch, ProgressAreaX,, ProgressAreaRight, ProgressAreaTop, ProgressAreaLeft, ProgressAreaBottom, Color, 1, Fast
    if !ErrorLevel {
       if (ProgressAreaX < (A_ScreenWidth / 2)) 
		{
			LostVar := true
		}
		else 
		{
			LostVar := false
		}
	}
}
return

BarCalculationFailsafe:
BarCalcFailsafeCounter++
tooltip, Failsafe: %BarCalcFailsafeCounter%/%BarCalculationFailsafe%, %TooltipX%, %Tooltip10%, 10
if (BarCalcFailsafeCounter >= BarCalculationFailsafe)
	{
	settimer, BarCalculationFailsafe, off
	ForceReset := true
	}
return

BarMinigame:
sleep %BaitDelay%

tooltip, Current Task: Calculating Bar Size, %TooltipX%, %Tooltip7%, 7
tooltip, Bar Size: Not Found, %TooltipX%, %Tooltip8%, 8
tooltip, Avoid Standing On Snow, %TooltipX%, %Tooltip9%, 9
tooltip, Failsafe: 0/%BarCalculationFailsafe%, %TooltipX%, %Tooltip10%, 10

ForceReset := false
BarCalcFailsafeCounter := 0
settimer, BarCalculationFailsafe, 1000

BarMinigameRedo:
if (ForceReset == true)
	{
	tooltip, , , , 10
	goto RestartMacro
	}
PixelSearch, BarX, , FishBarLeft, FishBarTop, FishBarRight, FishBarBottom, 0xFFFFFF, %BarSizeCalculationColorTolerance%, Fast
if (ErrorLevel == 0)
	{
	settimer, BarCalculationFailsafe, off
	if (ManualBarSize != 0)
		{
		WhiteBarSize := ManualBarSize
		goto BarMinigameSingle
		}
	WhiteBarSize := (FishBarRight-(BarX-FishBarLeft))-BarX
	goto BarMinigameSingle
	}
sleep 1
goto BarMinigameRedo

;====================================================================================================;

BarMinigameSingle:

	tooltip, Current Task: Playing Bar Minigame, %TooltipX%, %Tooltip7%, 7
	tooltip, Bar Size: %WhiteBarSize%, %TooltipX%, %Tooltip8%, 8
	tooltip, , , , 9
	tooltip, Direction: None, %TooltipX%, %Tooltip10%, 10
	tooltip, Forward Delay: None, %TooltipX%, %Tooltip11%, 11
	tooltip, Counter Delay: None, %TooltipX%, %Tooltip12%, 12
	tooltip, Ankle Delay: None, %TooltipX%, %Tooltip13%, 13
	tooltip, Side Delay: None, %TooltipX%, %Tooltip15%, 15

	HalfBarSize := WhiteBarSize/2
	SideDelay := 0
	AnkleBreakDelay := 0
	DirectionalToggle := "Disabled"
	AtLeastFindWhiteBar := false
	MaxLeftToggle := false
	MaxRightToggle := false
	MaxLeftBar := FishBarLeft+WhiteBarSize*SideBarRatio
	MaxRightBar := FishBarRight-WhiteBarSize*SideBarRatio

	tooltip, |, %MaxLeftBar%, %FishBarTooltipHeight%, 18
	tooltip, |, %MaxRightBar%, %FishBarTooltipHeight%, 17

	settimer, CheckForFail, 100

BarMinigame2:
sleep 1
PixelSearch, FishX, , FishBarLeft, FishBarTop, FishBarRight, FishBarBottom, 0x5B4B43, %FishBarColorTolerance%, Fast
if (ErrorLevel == 0)
	{
	tooltip, ., %FishX%, %FishBarTooltipHeight%, 20
	if (FishX < MaxLeftBar)
		{
		if (MaxLeftToggle == false)
			{
			tooltip, <, %MaxLeftBar%, %FishBarTooltipHeight%, 19
			tooltip, Direction: Max Left, %TooltipX%, %Tooltip10%, 10
			tooltip, Forward Delay: Infinite, %TooltipX%, %Tooltip11%, 11
			tooltip, Counter Delay: None, %TooltipX%, %Tooltip12%, 12
			tooltip, Ankle Delay: 0, %TooltipX%, %Tooltip13%, 13
			DirectionalToggle := "Right"
			MaxLeftToggle := true
			send {lbutton up}
			sleep 1
			send {lbutton up}
			sleep %SideDelay%
			AnkleBreakDelay := 0
			SideDelay := 0
			tooltip, Side Delay: 0, %TooltipX%, %Tooltip15%, 15
			}
		goto BarMinigame2
		}
	else if (FishX > MaxRightBar)
		{
		if (MaxRightToggle == false)
			{
			tooltip, >, %MaxRightBar%, %FishBarTooltipHeight%, 19
			tooltip, Direction: Max Right, %TooltipX%, %Tooltip10%, 10
			tooltip, Forward Delay: Infinite, %TooltipX%, %Tooltip11%, 11
			tooltip, Counter Delay: None, %TooltipX%, %Tooltip12%, 12
			tooltip, Ankle Delay: 0, %TooltipX%, %Tooltip13%, 13
			DirectionalToggle := "Left"
			MaxRightToggle := true
			send {lbutton down}
			sleep 1
			send {lbutton down}
			sleep %SideDelay%
			AnkleBreakDelay := 0
			SideDelay := 0
			tooltip, Side Delay: 0, %TooltipX%, %Tooltip15%, 15
			}
		goto BarMinigame2
		}
	MaxLeftToggle := false
	MaxRightToggle := false
	PixelSearch, BarX, , FishBarLeft, FishBarTop, FishBarRight, FishBarBottom, 0xFFFFFF, %WhiteBarColorTolerance%, Fast
	if (ErrorLevel == 0)
		{
		AtLeastFindWhiteBar := true
		BarX := BarX+(WhiteBarSize/2)
		if (BarX > FishX)
			{
			tooltip, <, %BarX%, %FishBarTooltipHeight%, 19
			tooltip, Direction: <, %TooltipX%, %Tooltip10%, 10
			Difference := (BarX-FishX)*ResolutionScaling*StableLeftMultiplier
			CounterDifference := Difference/StableLeftDivision
			tooltip, Forward Delay: %Difference%, %TooltipX%, %Tooltip11%, 11
			tooltip, Counter Delay: %CounterDifference%, %TooltipX%, %Tooltip12%, 12
			send {lbutton up}
			if (DirectionalToggle == "Right")
				{
				tooltip, Ankle Delay: 0, %TooltipX%, %Tooltip13%, 13
				sleep %AnkleBreakDelay%
				AnkleBreakDelay := 0
				}
			else
				{
				AnkleBreakDelay := AnkleBreakDelay+(Difference-CounterDifference)*LeftAnkleBreakMultiplier
				SideDelay := AnkleBreakDelay/LeftAnkleBreakMultiplier*SideBarWaitMultiplier
				tooltip, Ankle Delay: %AnkleBreakDelay%, %TooltipX%, %Tooltip13%, 13
				tooltip, Side Delay: %SideDelay%, %TooltipX%, %Tooltip15%, 15
				}
			sleep %Difference%
			PixelSearch, FishX, , FishBarLeft, FishBarTop, FishBarRight, FishBarBottom, 0x5B4B43, %FishBarColorTolerance%, Fast
				{
				if (FishX < MaxLeftBar)
				goto BarMinigame2
				}
			send {lbutton down}
			sleep %CounterDifference%
			loop, %StabilizerLoop%
				{
				send {lbutton down}
				send {lbutton up}
				}
			DirectionalToggle := "Left"
			}
		else
			{
			tooltip, >, %BarX%, %FishBarTooltipHeight%, 19
			tooltip, Direction: >, %TooltipX%, %Tooltip10%, 10
			Difference := (FishX-BarX)*ResolutionScaling*StableRightMultiplier
			CounterDifference := Difference/StableRightDivision
			tooltip, Forward Delay: %Difference%, %TooltipX%, %Tooltip11%, 11
			tooltip, Counter Delay: %CounterDifference%, %TooltipX%, %Tooltip12%, 12
			send {lbutton down}
			if (DirectionalToggle == "Left")
				{
				tooltip, Ankle Delay: 0, %TooltipX%, %Tooltip13%, 13
				sleep %AnkleBreakDelay%
				AnkleBreakDelay := 0
				}
			else
				{
				AnkleBreakDelay := AnkleBreakDelay+(Difference-CounterDifference)*RightAnkleBreakMultiplier
				SideDelay := AnkleBreakDelay/RightAnkleBreakMultiplier*SideBarWaitMultiplier
				tooltip, Ankle Delay: %AnkleBreakDelay%, %TooltipX%, %Tooltip13%, 13
				tooltip, Side Delay: %SideDelay%, %TooltipX%, %Tooltip15%, 15
				}
			sleep %Difference%
			PixelSearch, FishX, , FishBarLeft, FishBarTop, FishBarRight, FishBarBottom, 0x5B4B43, %FishBarColorTolerance%, Fast
				{
				if (FishX > MaxRightBar)
				goto BarMinigame2
				}
			send {lbutton up}
			sleep %CounterDifference%
			loop, %StabilizerLoop%
				{
				send {lbutton down}
				send {lbutton up}
				}
			DirectionalToggle := "Right"
			}
		}
	else
		{
		if (AtLeastFindWhiteBar == false)
			{
			send {lbutton down}
			send {lbutton up}
			goto BarMinigame2
			}
		PixelSearch, ArrowX, , FishBarLeft, FishBarTop, FishBarRight, FishBarBottom, 0x878584, %ArrowColorTolerance%, Fast
		if (ArrowX > FishX)
			{
			tooltip, <, %ArrowX%, %FishBarTooltipHeight%, 19
			tooltip, Direction: <<<, %TooltipX%, %Tooltip10%, 10
			Difference := HalfBarSize*UnstableLeftMultiplier
			CounterDifference := Difference/UnstableLeftDivision
			tooltip, Forward Delay: %Difference%, %TooltipX%, %Tooltip11%, 11
			tooltip, Counter Delay: %CounterDifference%, %TooltipX%, %Tooltip12%, 12
			send {lbutton up}
			if (DirectionalToggle == "Right")
				{
				tooltip, Ankle Delay: 0, %TooltipX%, %Tooltip13%, 13
				sleep %AnkleBreakDelay%
				AnkleBreakDelay := 0
				}
			else
				{
				AnkleBreakDelay := AnkleBreakDelay+(Difference-CounterDifference)*LeftAnkleBreakMultiplier
				SideDelay := AnkleBreakDelay/LeftAnkleBreakMultiplier*SideBarWaitMultiplier
				tooltip, Ankle Delay: %AnkleBreakDelay%, %TooltipX%, %Tooltip13%, 13
				tooltip, Side Delay: %SideDelay%, %TooltipX%, %Tooltip15%, 15
				}
			sleep %Difference%
			PixelSearch, FishX, , FishBarLeft, FishBarTop, FishBarRight, FishBarBottom, 0x5B4B43, %FishBarColorTolerance%, Fast
				{
				if (FishX < MaxLeftBar)
				goto BarMinigame2
				}
			send {lbutton down}
			sleep %CounterDifference%
			loop, %StabilizerLoop%
				{
				send {lbutton down}
				send {lbutton up}
				}
			DirectionalToggle := "Left"
			}
		else
			{
			tooltip, >, %ArrowX%, %FishBarTooltipHeight%, 19
			tooltip, Direction: >>>, %TooltipX%, %Tooltip10%, 10
			Difference := HalfBarSize*UnstableRightMultiplier
			CounterDifference := Difference/UnstableRightDivision
			tooltip, Forward Delay: %Difference%, %TooltipX%, %Tooltip11%, 11
			tooltip, Counter Delay: %CounterDifference%, %TooltipX%, %Tooltip12%, 12
			send {lbutton down}
			if (DirectionalToggle == "Left")
				{
				tooltip, Ankle Delay: 0, %TooltipX%, %Tooltip13%, 13
				sleep %AnkleBreakDelay%
				AnkleBreakDelay := 0
				}
			else
				{
				AnkleBreakDelay := AnkleBreakDelay+(Difference-CounterDifference)*RightAnkleBreakMultiplier
				SideDelay := AnkleBreakDelay/RightAnkleBreakMultiplier*SideBarWaitMultiplier
				tooltip, Ankle Delay: %AnkleBreakDelay%, %TooltipX%, %Tooltip13%, 13
				tooltip, Side Delay: %SideDelay%, %TooltipX%, %Tooltip15%, 15
				}
			sleep %Difference%
			PixelSearch, FishX, , FishBarLeft, FishBarTop, FishBarRight, FishBarBottom, 0x5B4B43, %FishBarColorTolerance%, Fast
				{
				if (FishX > MaxRightBar)
				goto BarMinigame2
				}
			send {lbutton up}
			sleep %CounterDifference%
			loop, %StabilizerLoop%
				{
				send {lbutton down}
				send {lbutton up}
				}
			DirectionalToggle := "Right"
			}
		}
	goto BarMinigame2
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
	tooltip, Fish Caught: %FishCaught%, %TooltipX%, %Tooltip19%, 19
	tooltip, Fish Lost: %FishLost%, %TooltipX%, %Tooltip20%, 20
	settimer, CheckForFail, Off
	if LostVar{
		FishLost++
		if (WebhookURL != "") {
			WHSend("Fish escaped")
		}
		sleep 600
	}
	else
	{	
		FishCaught++
	}
	IntervalReset++
	if (IntervalReset == HookInterval){
		if (WebhookURL != "") {
			if !LostVar{
				WHSend("Fish caught")
			}
		}
		IntervalReset := 0
	}
	sleep %RestartDelay%
	goto RestartMacro
	}

; WEBHOOK=============================================================================================
WHSend(text) {
    global FishCaught, FishLost, WebhookURL, runtimeH, runtimeM, runtimeS
    Time := (runtimeH * 3600) + (runtimeM * 60) + runtimeS - 1
	Reels := FishCaught + FishLost
	CatchRate := (FishCaught/Reels)*100

    fieldJSON := "
    (
    [
        { ""name"": ""Total caught"", ""value"": """ FishCaught """, ""inline"": true },
        { ""name"": ""Runtime"", ""value"": """ runtimeH "h " runtimeM "m " runtimeS "s"", ""inline"": true },
		{ ""name"": ""Catch Rate"", ""value"": """ CatchRate "%"", ""inline"": true }
    ]
    )"

    embedJSON := "
    (
    {
        ""title"": ""V12 Webhook by:"",
        ""description"": """ text """,
        ""color"": 13884915,
        ""fields"": " fieldJSON ",
        ""author"": { ""name"": ""ff4500"" }
    }
    )"

    postdata := "
    (
    {
        ""content"": """",
        ""tts"": false,
        ""embeds"": [" embedJSON "]
    }
    )"

    try {
        WebRequest := ComObjCreate("WinHttp.WinHttpRequest.5.1")
    } catch {
        MsgBox, 16, Error, WinHttp.WinHttpRequest.5.1 is not available on this system.
        ExitApp
    }
    WebRequest.Open("POST", WebhookURL, false)
    WebRequest.SetRequestHeader("Content-Type", "application/json")
    
    try {
        WebRequest.Send(StrReplace(postdata, "`r`n", ""))
    } catch {
        MsgBox, 16, Error, Failed to send webhook. Please check the webhook URL for any mistakes or empty spaces.
    }
}
