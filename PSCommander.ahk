
;________________________________Auto-execute___________________________________//

#NoEnv
#Persistent
#SingleInstance force
#InstallMouseHook
SetWorkingDir %A_ScriptDir%/Scripts
Menu Tray, icon, %A_ScriptDir%/GUI/Photoshop.ico
SendMode Input

;====Variables/Settings==========================================================//

ToggleQuick = 0
ToggleTool = 0
ToggleGUI = 0
ToggleSelect = 0
ToggleButton1 = 0
ToggleButton2 = 0
Mode = 0
TX = 1


;====Subtool-Var=================================================================//

Sube = 1
Subr = 1
Subo = 1
Subm = 1
Subl = 1
Subw = 1
Subp = 1
Suba = 1
Subu = 1
Subb = 1
Subg = 1
Subj = 1

;====PSCIntern=================================================================//

Int1 = %A_ScriptDir%/PSCIntern/Border.jsx
Int2 = %A_ScriptDir%/PSCIntern/Fill.jsx
Int3 = %A_ScriptDir%/PSCIntern/StrokePath.jsx
Int4 = %A_ScriptDir%/PSCIntern/FillPath.jsx
Int5 = %A_ScriptDir%/PSCIntern/PathToSelection.jsx
Int6 = %A_ScriptDir%/PSCIntern/SelectionToPath.jsx
Int7 = %A_ScriptDir%/PSCIntern/ResetTools.jsx
Int8 = %A_ScriptDir%/PSCIntern/TransformP.jsx
Int9 = %A_ScriptDir%/PSCIntern/TransformS.jsx
Int10 = %A_ScriptDir%/PSCIntern/SelectionBrush.jsx

;ToolMode
IniRead, T1, Settings.ini, Tool, Brush, b
IniRead, T2, Settings.ini, Tool, Eraser, e
IniRead, T3, Settings.ini, Tool, Smudge, r
IniRead, T4, Settings.ini, Tool, Dodge/Burn, o

;MaskingMode
IniRead, M1, Settings.ini, Tool, Pen, p
IniRead, M2, Settings.ini, Tool, PathSelect, a
IniRead, M3, Settings.ini, Tool, Shape, u
IniRead, M4, Settings.ini, Tool, Heal, j

;SelectionMode
IniRead, S1, Settings.ini, Tool, Lasso, l
IniRead, S2, Settings.ini, Tool, Select, m
IniRead, S3, Settings.ini, Tool, Wand, w
IniRead, S4, Settings.ini, Tool, Gradient, g

;Other
IniRead, Increase, Settings.ini, Tool, IncreaseSize, >
IniRead, Decrease, Settings.ini, Tool, DecreaseSize, #
IniRead, NextBrush, Settings.ini, Tool, NextBrush, {.}
IniRead, PreviousBrush, Settings.ini, Tool, PreviousBrush, {,}
IniRead, QMask, Settings.ini, Tools, Quickmask, q
IniRead, CChanger, Settings.ini, Tool, ColorChanger, x
IniRead, SAll, Settings.ini, Tool, SelectAll, ^a
IniRead, SNone, Settings.ini, Tool, SelectNone, ^d
IniRead, SInvert, Settings.ini, Tool, InvertSelection, +^{i}
IniRead, HideP, Settings.ini, Tool, HidePalettes, {tab}
IniRead, View, Settings.ini, Tool, ChangeView, f
IniRead, Hand, Settings.ini, Tool, Hand, h

;Buttons
IniRead, B1, Settings.ini, Buttons, Label1
IniRead, Sc1, Settings.ini, Buttons, Shortcut1
IniRead, B2, Settings.ini, Buttons, Label2
IniRead, Sc2, Settings.ini, Buttons, Shortcut2
IniRead, B3, Settings.ini, Buttons, Label3
IniRead, Sc3, Settings.ini, Buttons, Shortcut3
IniRead, B4, Settings.ini, Buttons, Label4
IniRead, Sc4, Settings.ini, Buttons, Shortcut4
IniRead, B5, Settings.ini, Buttons, Label5
IniRead, Sc5, Settings.ini, Buttons, Shortcut5
IniRead, B6, Settings.ini, Buttons, Label6
IniRead, Sc6, Settings.ini, Buttons, Shortcut6
IniRead, B7, Settings.ini, Buttons, Label7
IniRead, Sc7, Settings.ini, Buttons, Shortcut7
IniRead, B8, Settings.ini, Buttons, Label8
IniRead, Sc8, Settings.ini, Buttons, Shortcut8
IniRead, B9, Settings.ini, Buttons, Label9
IniRead, Sc9, Settings.ini, Buttons, Shortcut9
IniRead, B10, Settings.ini, Buttons, Label10
IniRead, Sc10, Settings.ini, Buttons, Shortcut10
IniRead, B11, Settings.ini, Buttons, Label11
IniRead, Sc11, Settings.ini, Buttons, Shortcut11
IniRead, B12, Settings.ini, Buttons, Label12
IniRead, Sc12, Settings.ini, Buttons, Shortcut12
IniRead, B13, Settings.ini, Buttons, Label13
IniRead, Sc13, Settings.ini, Buttons, Shortcut13
IniRead, B14, Settings.ini, Buttons, Label14
IniRead, Sc14, Settings.ini, Buttons, Script1
IniRead, B15, Settings.ini, Buttons, Label15
IniRead, Sc15, Settings.ini, Buttons, Script2

IniRead, B16, Settings.ini, Buttons, Label16
IniRead, Sc16, Settings.ini, Buttons, Shortcut16
IniRead, B17, Settings.ini, Buttons, Label17
IniRead, Sc17, Settings.ini, Buttons, Shortcut17
IniRead, B18, Settings.ini, Buttons, Label18
IniRead, Sc18, Settings.ini, Buttons, Shortcut18
IniRead, B19, Settings.ini, Buttons, Label19
IniRead, Sc19, Settings.ini, Buttons, Shortcut19
IniRead, B20, Settings.ini, Buttons, Label20
IniRead, Sc20, Settings.ini, Buttons, Shortcut20
IniRead, B21, Settings.ini, Buttons, Label21
IniRead, Sc21, Settings.ini, Buttons, File1
IniRead, B22, Settings.ini, Buttons, Label22
IniRead, Sc22, Settings.ini, Buttons, File2
IniRead, B23, Settings.ini, Buttons, Label23
IniRead, Sc23, Settings.ini, Buttons, File3
IniRead, B24, Settings.ini, Buttons, Label24
IniRead, Sc24, Settings.ini, Buttons, File4
IniRead, B25, Settings.ini, Buttons, Label25
IniRead, Sc25, Settings.ini, Buttons, File5
IniRead, B26, Settings.ini, Buttons, Label26
IniRead, Sc26, Settings.ini, Buttons, File6
IniRead, B27, Settings.ini, Buttons, Label27
IniRead, Sc27, Settings.ini, Buttons, File7
IniRead, B28, Settings.ini, Buttons, Label28
IniRead, Sc28, Settings.ini, Buttons, File8

;Layouts

IniRead, LMx1, Settings.ini, Buttons, Main1_X
IniRead, LMy1, Settings.ini, Buttons, Main1_Y
IniRead, LTx1, Settings.ini, Buttons, Toolbar1_X
IniRead, LTy1, Settings.ini, Buttons, Toolbar1_Y

IniRead, LMx2, Settings.ini, Buttons, Main2_X
IniRead, LMy2, Settings.ini, Buttons, Main2_Y
IniRead, LTx2, Settings.ini, Buttons, Toolbar2_X
IniRead, LTy2, Settings.ini, Buttons, Toolbar2_Y

IniRead, Full, Settings.ini, Buttons, Fullscreen
IniRead, Window, Settings.ini, Buttons, Windowmode

;Hotkeys
IniRead, H1, Settings.ini, Hotkeys, Hot1, F2
IniRead, H2, Settings.ini, Hotkeys, Hot2, F3
IniRead, H3, Settings.ini, Hotkeys, Hot3, F4

;====GUI==01====================================================//

Gui,1:+LastFound +AlwaysOnTop +ToolWindow -Caption
Gui,1:Color,EEAA99
Gui,1:Font,s9,Arial

Gui,1:Add,Button,Section x0 y5 w80 h50 HwndButton1Hwnd,%B1%
Gui,1:Add,Button,x+0 wp hp HwndButton2Hwnd,%B2%
Gui,1:Add,Button,x+0 wp hp HwndButton3Hwnd,%B3%
Gui,1:Add,Button,x+0 wp hp HwndButton4Hwnd,%B4%
Gui,1:Add,Button,x+0 wp hp HwndButton5Hwnd,%B5%
Gui,1:Add,Button,x+0 wp hp HwndButton6Hwnd,%B6%
Gui,1:Add,Button,x+0 wp hp HwndButton7Hwnd,%B7%
Gui,1:Add,Button,x+0 wp hp HwndButton8Hwnd,%B8%
Gui,1:Add,Button,x+0 wp hp HwndButton9Hwnd,%B9%
Gui,1:Add,Button,x+0 wp hp HwndButton10Hwnd,%B10%
Gui,1:Add,Button,x+0 wp hp HwndButton11Hwnd,%B11%
Gui,1:Add,Button,x+0 wp hp vTB1 HwndButton12Hwnd,%B12%`nOn
Gui,1:Add,Button,x+0 wp hp vTB2 HwndButton13Hwnd,%B13%`nOn
Gui,1:Add,Button,x+0 wp hp HwndButton14Hwnd,%B14%
Gui,1:Add,Button,x+0 wp hp HwndButton15Hwnd,%B15%

Gui,1:Add,Button,Section x0 y60 w80 h25 HwndButton16Hwnd,%B16%
Gui,1:Add,Button,x+0 wp hp HwndButton17Hwnd,%B17%
Gui,1:Add,Button,x+0 wp hp HwndButton18Hwnd,%B18%
Gui,1:Add,Button,x+0 wp hp HwndButton19Hwnd,%B19%
Gui,1:Add,Button,x+0 wp hp HwndButton20Hwnd,%B20%
Gui,1:Add,Button,x+0 wp hp HwndButton21Hwnd,%B21%
Gui,1:Add,Button,x+0 wp hp HwndButton22Hwnd,%B22%
Gui,1:Add,Button,x+0 wp hp HwndButton23Hwnd,%B23%
Gui,1:Add,Button,x+0 wp hp HwndButton24Hwnd,%B24%
Gui,1:Add,Button,x+0 wp hp HwndButton25Hwnd,%B25%
Gui,1:Add,Button,x+0 wp hp HwndButton26Hwnd,%B26%
Gui,1:Add,Button,x+0 wp hp HwndButton27Hwnd,%B27%
Gui,1:Add,Button,x+0 wp hp HwndButton28Hwnd,%B28%
Gui,1:Add,Button,x+0 wp hp HwndButton29Hwnd,Color Picker
Gui,1:Add,Button,x+0 wp hp gexit,Exit

Gui,1:Add,Picture,x0 y0 w1200 h5 GuiMove,%A_ScriptDir%/GUI/side.png
Gui,1:Add,Picture,x0 y55 w1200 h5,%A_ScriptDir%/GUI/side.png
Gui,1:Add,Picture,x0 y85 w1200 h5 GuiMove,%A_ScriptDir%/GUI/side.png

Gui,1:Show,x%LMx1% y%LMy1% w1200 h100 NA NoActivate, PSCommander
WinSet,TransColor, EEAA99,PSCommander

Gui1 := WinExist(PSCommander)

;====GUI==02=========================================================//

Gui,2:+LastFound +AlwaysOnTop +ToolWindow -Caption
Gui,2:Color,EEAA99

Gui,2:Add, Picture,Border x56 y56 w38 h38 vImage, %A_ScriptDir%/GUI/Mode%Mode%.png
Gui,2:Add,Picture,BackgroundTrans x50 y50 w50 h50, %A_ScriptDir%/GUI/Border.png
Gui,2:Add,Picture,x60 y60 w31 h31 vTImage HwndCenterHwnd,%A_ScriptDir%/GUI/b1.png

Gui,2:Add,Button,Border x50 y0 w50 h50 vTop HwndTopHwnd,Size
Gui,2:Add,Button,Border x0 y50 w50 h50 vLeft HwndLeftHwnd,Opacity
Gui,2:Add,Button,Border x100 y50 w50 h50 vRight HwndRightHwnd,Flow
Gui,2:Add,Button,Border x50 y100 w50 h50 vBottom HwndBottomHwnd,Brush

Gui,2:Show,x%LTx1% y%LTy1% NA NoActivate,BrushControl
WinSet,TransColor, EEAA99,BrushControl
WinSet,Region, 0-50 50-50 50-0 100-0 100-50 150-50 150-100 100-100 100-150 50-150 50-100 0-100, BrushControl

Gui2 := WinExist(BrushControl)

;====Hotkeys=========================================================//

Hotkey,%H1%,Hot01
Hotkey,%H2%,Hot02
Hotkey,+%H1%,Hot01_Shift
Hotkey,^%H1%,Hot01_Ctrl
Hotkey,!%H1%,Hot01_Alt
Hotkey,+%H2%,Hot02_Shift
Hotkey,^%H2%,Hot02_Ctrl
Hotkey,!%H2%,Hot02_Alt
Hotkey,%H3%,Hot03
Hotkey,%H3% & %H1%,Hot03_Hot01
Hotkey,%H3% & %H2%,Hot03_Hot02

NX := T%TX%
Run %Int7%
return

;_____________________________Labels_________________________________//

;====Hot-01==========================================================//

Hot01:
Gui, Submit, NoHide
ifWinExist, ahk_Class #32770
{
	send {enter}
	return
}
if MouseIsOver(Gui2)
{
	gosub Hot01GUI2
}
else
{
	gosub Timer01
	TX := ChooseSub(TX,4)
	gosub set
	send %NX%
	Sleep, 25
}
return

Timer01:
if Hot01Count > 0
		{
			Hot01Count += 1
			return
		}
Hot01Count = 1
SetTimer, Hot01Timer, 320
return

Hot01Timer:
SetTimer, Hot01Timer, Off
if Hot01Count = 1
{
	GetKeyState, state, %H1%
	if state = D
		gosub ModeChange
}
if Hot01Count > 1
{
	gosub Hand
}
Hot01Count = 0
return

Hand:
GetKeyState, state, %H1%
if state = U
{
	send %Hand%
	GuiControl,2:,TImage,%A_ScriptDir%/GUI/Hand.png
	KeyWait, %H1%, L, D
	TX = 1
	gosub set
}
Hot01Count = 0
exit

ModeChange:
Loop
{
	GetKeyState, state, %H1%
	if state = U
		break
	if (Mode = 2)
		Mode = -1
	Mode += 1
	TX = 1
	gosub set
	send %NX%
	sleep, 400
}
return

Hot01_Ctrl:
MouseClick, Right
return

Hot01_Alt:
if (ToggleSelect = 0)
{
	send %SAll%
	ToggleSelect = 1
	return
}
if (ToggleSelect = 1)
{
	send %SNone%
	ToggleSelect = 0
	return
}
return

;====Hot-02=======================================================//

Hot02:
if MouseIsOver(Gui2)
{
	gosub Hot02GUI2
}
gosub Timer2
MouseClick, Middle,,, 1, 0, D
Loop
{
    Sleep, 10
    GetKeyState, state, %H2%
    if state = U
        break
}
MouseClick, Middle,,, 1, 0, U
if (A_TimeSinceThisHotkey < 200)
	send %CChanger%
return

Timer2:
if Hot02Count > 0
		{
			Hot02Count += 1
			return
		}
Hot02Count = 1
SetTimer, Hot02Timer, 400
return

Hot02Timer:
SetTimer, Hot02Timer, Off
if Hot02Count = 2
{
	GetKeyState, state, %H1%
	if state = U
		gosub Mask
}
Hot02Count = 0
return

Mask:
if (togglequick = 1)
	{
		togglequick = 0
		send %QMask%
		return
	}
if (togglequick = 0)
	{
		togglequick = 1
		Run %Int10%
		return
	}
return

Hot02_Ctrl:
send {Shift down}{RButton} 
KeyWait, %H3%
send {Shift up}
return

Hot02_Alt:
Send %SInvert%
return

;====Hot-03=======================================================//

Hot03:
MouseClick, Right
return

Hot03_Hot01:
send %HideP%
return

Hot03_Hot02:
send %View%
return

;====Context-Sensitive-Hotkeys-GUI2================================//

Hot01GUI2:
Top01 := MouseControl(TopHwnd)
if (Top01 = 1)
{
	WinActivate, ahk_Class Photoshop
	send {%Decrease%}
}
Left01 := MouseControl(LeftHwnd)
if (Left01 = 1)
{
	ControlFocus, Edit2, ahk_class Photoshop
    send {WheelDown 10}
	send {enter}
}
Right01 := MouseControl(RightHwnd)
if (Right01 = 1)
{
	ControlFocus, Edit1, ahk_class Photoshop
    send {WheelDown 10}
	send {enter}
}
Bottom01 := MouseControl(BottomHwnd)
if (Bottom01 = 1)
{
	send %NextBrush%
}
Center01 := MouseControl(CenterHwnd)
if (Center01 = 1)
{
    Gui, Submit, NoHide
	send %NX%
	send +%NX%
	SubN := returnObject()
	SubN := % SubN[NX]
	Sub%NX% := ChooseSub(Sub%NX%,SubN)
	gosub set
}
Exit

Hot02GUI2:
Top02 := MouseControl(TopHwnd)
if (Top02 = 1)
{
	WinActivate, ahk_Class Photoshop
	send {%Increase%}
}
Left02 := MouseControl(LeftHwnd)
if (Left02 = 1)
{
	ControlFocus, Edit2, ahk_class Photoshop
    send {WheelUp 10}
	send {enter}
}
Right02 := MouseControl(RightHwnd)
if (Right02 = 1)
{
	ControlFocus, Edit1, ahk_class Photoshop
    send {WheelUp 10}
	send {enter}
}
Bottom02 := MouseControl(BottomHwnd)
if (Bottom02 = 1)
{
	send %PreviousBrush%
}
Center02 := MouseControl(CenterHwnd)
if (Center02 = 1)
{
	if (Mode = 2)
		Mode = -1
	Mode += 1
	TX = 1
	gosub set
	send %NX%
}
Exit

;====Tool-Settings=================================================//

set:
Gui,Submit,NoHide
WinActivate, ahk_Class Photoshop
if (Mode = 0)
{
	NX := T%TX%
	Sub = % NX Sub%NX% ".png"
	GuiControl,2:,Image,%A_ScriptDir%/GUI/Mode%Mode%.png
	GuiControl,2:,TImage,%A_ScriptDir%/GUI/%Sub%
	GuiControl,2:,Top,Size
	GuiControl,2:,Left,Opacity
	GuiControl,2:,Right,Flow
	GuiControl,2:,Bottom,Brush
	return
}
if (Mode = 1)
{
	NX := M%TX%
	Sub = % NX Sub%NX% ".png"
	GuiControl,2:,Image,%A_ScriptDir%/GUI/Mode%Mode%.png 
	GuiControl,2:,TImage,%A_ScriptDir%/GUI/%Sub%
	GuiControl,2:,Top,Trans-`nform
	GuiControl,2:,Left,Stroke
	GuiControl,2:,Right,Fill
	GuiControl,2:,Bottom,Path`nTo`nSelect
	return
}
if (Mode = 2)
{
	NX := S%TX%
	Sub = % NX Sub%NX% ".png"
	GuiControl,2:,Image,%A_ScriptDir%/GUI/Mode%Mode%.png
	GuiControl,2:,TImage,%A_ScriptDir%/GUI/%Sub%
	GuiControl,2:,Top,Trans-`nform
	GuiControl,2:,Left,Stroke
	GuiControl,2:,Right,Fill
	GuiControl,2:,Bottom,Select`nTo`nPath
	return
}
return

;______________________________General______________________________//

;====MouseIsOver-Gui2==============================================//


#If MouseControl(CenterHwnd)
*LButton::
DragNotActivate(Gui2)
return
#If MouseControl(BottomHwnd)
*LButton::
if (mode = 0)
{
	Run ToolSelection
}
if (mode = 1)
{
	mode = 2
	Run %Int5%
	gosub set
	return
}
if (mode=2)
{
	Run %Int6%
	mode = 1
	gosub set
	return
}
return
#If MouseControl(LeftHwnd)
*LButton::
if (mode = 0)
{
	ControlFocus, Edit2, ahk_class Photoshop
	send {WheelUp 100}
}
if (mode = 1)
{
	Run %Int3%
}
if (mode=2)
{
	Run %Int1%
}
return
#If MouseControl(RightHwnd)
*LButton::
if (mode = 0)
{
	ControlFocus, Edit1, ahk_class Photoshop
	send {WheelUp 100}
}
if (mode = 1)
{
	Run %Int4%
}
if (mode=2)
{
	Run %Int2%
}
return
#If MouseControl(TopHwnd)
*LButton::
if (mode = 0)
{
	send {%Decrease% 49}
	send {%Increase% 18}
}
if (mode = 1)
{
	Run %Int8%
}
if (mode=2)
{
	Run %Int9%
}
return

;====MouseIsOver-Gui1==============================================//

#If MouseControl(Button1Hwnd)
*LButton::
WinActivate, ahk_class Photoshop
send %Sc1%
return
#If MouseControl(Button2Hwnd)
*LButton::
WinActivate, ahk_class Photoshop
send %Sc2%
return
#If MouseControl(Button3Hwnd)
*LButton::
WinActivate, ahk_class Photoshop
send %Sc3%
return
#If MouseControl(Button4Hwnd)
*LButton::
WinActivate, ahk_class Photoshop
send %Sc4%
return
#If MouseControl(Button5Hwnd)
*LButton::
WinActivate, ahk_class Photoshop
send %Sc5%
return
#If MouseControl(Button6Hwnd)
*LButton::
WinActivate, ahk_class Photoshop
send %Sc6%
return
#If MouseControl(Button7Hwnd)
*LButton::
WinActivate, ahk_class Photoshop
send %Sc7%
return
#If MouseControl(Button8Hwnd)
*LButton::
WinActivate, ahk_class Photoshop
send %Sc8%
return
#If MouseControl(Button9Hwnd)
*LButton::
WinActivate, ahk_class Photoshop
send %Sc9%
return
#If MouseControl(Button10Hwnd)
*LButton::
WinActivate, ahk_class Photoshop
WinWaitActive, ahk_class Photoshop
send %Sc10%
Sleep, 200
send %Window%
Sleep, 200
Gui,1: Show, x%LMx1% y%LMy1% NA NoActivate
Gui,2: Show, x%LTx1% y%LTy1% NA NoActivate
return
#If MouseControl(Button11Hwnd)
*LButton::
WinActivate, ahk_class Photoshop
WinWaitActive, ahk_class Photoshop
send %Sc11%
Sleep, 200
send %Full%
Sleep, 200
Gui,1: Show, x%LMx2% y%LMy2% NA NoActivate
Gui,2: Show, x%LTx2% y%LTy2% NA NoActivate
return
#If MouseControl(Button12Hwnd)
*LButton::
WinActivate, ahk_class Photoshop
if (ToggleButton1 = 0)
{
	ToggleButton1 = 1
	GuiControl,1:,TB1,%B12%`nOff
	send %Sc12%
	return
}
if (ToggleButton1 = 1)
{
	ToggleButton1 = 0
	GuiControl,1:,TB1,%B12%`nOn
	send %Sc12%
	return
}
return
#If MouseControl(Button13Hwnd)
*LButton::
WinActivate, ahk_class Photoshop
if (ToggleButton2 = 0)
{
	ToggleButton2 = 1
	GuiControl,1:,TB2,%B13%`nOff
	send %Sc13%
	return
}
if (ToggleButton2 = 1)
{
	ToggleButton2 = 0
	GuiControl,1:,TB2,%B13%`nOn
	send %Sc13%
	return
}
return
#If MouseControl(Button14Hwnd)
*LButton::
WinActivate, ahk_class Photoshop
Run %Sc14%
return
#If MouseControl(Button15Hwnd)
*LButton::
WinActivate, ahk_class Photoshop
Run %Sc15%
return

#If MouseControl(Button16Hwnd)
*LButton::
WinActivate, ahk_class Photoshop
send %Sc16%
return
#If MouseControl(Button17Hwnd)
*LButton::
WinActivate, ahk_class Photoshop
send %Sc17%
return
#If MouseControl(Button18Hwnd)
*LButton::
WinActivate, ahk_class Photoshop
send %Sc18%
return
#If MouseControl(Button19Hwnd)
*LButton::
WinActivate, ahk_class Photoshop
send %Sc19%
return
#If MouseControl(Button20Hwnd)
*LButton::
WinActivate, ahk_class Photoshop
send %Sc20%
return
#If MouseControl(Button21Hwnd)
*LButton::
WinActivate, ahk_class Photoshop
Run %Sc21%
return
#If MouseControl(Button22Hwnd)
*LButton::
WinActivate, ahk_class Photoshop
Run %Sc22%
return
#If MouseControl(Button23Hwnd)
*LButton::
WinActivate, ahk_class Photoshop
Run %Sc23%
return
#If MouseControl(Button24Hwnd)
*LButton::
WinActivate, ahk_class Photoshop
Run %Sc24%
return
#If MouseControl(Button25Hwnd)
*LButton::
WinActivate, ahk_class Photoshop
Run %Sc25%
return
#If MouseControl(Button26Hwnd)
*LButton::
WinActivate, ahk_class Photoshop
Run %Sc26%
return
#If MouseControl(Button27Hwnd)
*LButton::
WinActivate, ahk_class Photoshop
Run %Sc27%
return
#If MouseControl(Button28Hwnd)
*LButton::
WinActivate, ahk_class Photoshop
Run %Sc28%
return
#If MouseControl(Button29Hwnd)
*LButton::
WinActivate, ahk_class Photoshop
Run %A_ScriptDir%/PSColorPicker/PSColorPicker.ahk
return
#If

;====GUI==Visibility================================================//

uiMove:
PostMessage, 0xA1, 2,,, A
Sleep, 100
WinActivate, ahk_Class Photoshop
return

Hot01_Shift:
if MouseIsOver(Gui2)
{
	Gui,2: Hide
}
else
{
    WinActivate, ahk_Class Photoshop
	MouseGetPos, MoX, MoY
	MMX := (MoX - 75)
	MMY := (MoY - 75)
	Gui,2: Show,NA x%MMX% y%MMY%
}
return

Hot02_Shift:
if (ToggleGUI = 0)
{
	ToggleGUI = 1
	Gui,1: Hide
	Gui,2: Hide
	return
}
if (ToggleGUI = 1)
{
	ToggleGUI = 0
    Gui,1: Show, Restore
	Gui,2: Show, Restore
	WinActivate, ahk_Class Photoshop
	return
}
return
;====ExitApp========================================================//

Guiclose:
ExitApp
return

exit:
exitapp
return
;___________________________Functions______________________________//

DragNotActivate(hwnd,WhileKeyDown="LButton") {
	CoordMode, mouse, screen
	MouseGetPos, mx,my
	WinGetPos, wx,wy,,, ahk_id %hwnd%
	offsetX := mx-wx, offsetY := my-wy
	owd := A_WinDelay
	SetWinDelay, -1
	While (GetKeyState(WhileKeyDown,"p")) {
		Sleep, 20
		MouseGetPos, x,y
		WinMove, ahk_id %hwnd%,, x-offsetX,y-offsetY
	}
	SetWinDelay, %owd%
}

MouseControl(ControlHwnd) {
    MouseGetPos,,,, control, 2
    if (ControlHwnd = control)
	return, 1
}

MouseIsOver(WinTitle) {
    MouseGetPos,,, Win, 2
    If (WinTitle = Win)
	return, 1
}
return

ChooseSub(S1,S2) {
	if (S1 < S2)
	{
		x := (S1 + 1)
	}
	if (S1 = S2)
	{
		x = 1
	}
return, x
}

returnObject() {
  vn := {b: 3, e: 3, r: 3, o: 3, l: 3, m: 2, w: 1, p: 2, a: 2, u: 6, g: 2, j: 4}
  return vn
}