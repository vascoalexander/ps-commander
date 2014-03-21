;===Auto-execute============================================================================//

#NoEnv
#SingleInstance force
Menu Tray, icon,%A_ScriptDir%/PSColorPicker.ico

Hotkey, LControl, Off

;--GUI--------------------------------------------------------------------------------------//

Gui, +LastFound +AlwaysOnTop +ToolWindow -Caption
WinSet, TransColor, EEAA99
Gui, Color,EEAA99

Gui, Add, Picture,Border x0 y0 w449 h314,%A_ScriptDir%/Silver.png
Gui, Add, Groupbox,0x1000 x10 y4 h300 w430,
Gui, Add, Checkbox,center 0x1000 x20 y20 h32 w90 gToggleCtrl vToggle, Pick
Gui, Add, Text,BackgroundTrans 0x1007 y60 x20 w90 h77,
Gui, Add, Progress,y62 x22 w88 h75 cWhite vXColor, 100
Gui, Add, Edit,Limit6 x20 y145 h20 w90 vColorAp geditC,

Gui, Add, Button,x20 y180 h25 w45 gSetColor vSaveColor, Select
Gui, Add, Button,x65 y180 h25 w45 gClear vClear, Clear
Gui, Add, Button,Disabled x20 y210 h25 w90 gGetPSColor vPSColor, Get PS Color
Gui, Add, Button,x20 y240 h25 w90 gClearAll vClearPalette, Clear Palette

Gui, Add, DropDownList, x20 y275 w90 vSelectSection gLoadIni,
Gui, Add, Button,x125 y272 h25 w50 gNewPalette vNewPalette,New
Gui, Add, Button,x177 y272 h25 w50 gSavePalette vSavePalette,Save
Gui, Add, Button,x229 y272 h25 w50 gRenamePalette vRenamePalette, Rename
Gui, Add, Button,x281 y272 h25 w50 gDeleteSection vDeletePalette,Delete
Gui, Add, Button,x333 y272 h25 w50 gExport vExport, Export
Gui, Add, Button,x385 y272 h25 w42 gexit, Exit

Gui, Add, Picture, BackgroundTrans x125 y22 h16 w16 gClearColor vCl1,%A_ScriptDir%/Delete.png
Gui, Add, Edit,Limit6 geditC x145 y20 h20 w80 vColor1,
Gui, Add, Text,BackgroundTrans 0x1007 y18 x228 w39 h24 vpsc1 gpset,
Gui, Add, Progress,y20 x230 w35 h20 cWhite v1Color, 100
Gui, Add, Picture, BackgroundTrans x125 y47 h16 w16 gClearColor vCl2,%A_ScriptDir%/Delete.png
Gui, Add, Edit,Limit6 geditC x145 y45 h20 w80 vColor2,
Gui, Add, Text,BackgroundTrans 0x1007 y43 x228 w39 h24 vpsc2 gpset,
Gui, Add, Progress,y45 x230 w35 h20 cWhite v2Color, 100
Gui, Add, Picture, BackgroundTrans x125 y72 h16 w16 gClearColor vCl3,%A_ScriptDir%/Delete.png
Gui, Add, Edit,Limit6 geditC x145 y70 h20 w80 vColor3,
Gui, Add, Text,BackgroundTrans 0x1007 y68 x228 w39 h24 vpsc3 gpset,
Gui, Add, Progress,y70 x230 w35 h20 cWhite v3Color, 100
Gui, Add, Picture, BackgroundTrans x125 y97 h16 w16 gClearColor vCl4,%A_ScriptDir%/Delete.png
Gui, Add, Edit,Limit6 geditC x145 y95 h20 w80 vColor4,
Gui, Add, Text,BackgroundTrans 0x1007 y93 x228 w39 h24 vpsc4 gpset,
Gui, Add, Progress,y95 x230 w35 h20 cWhite v4Color, 100
Gui, Add, Picture, BackgroundTrans x125 y122 h16 w16 gClearColor vCl5,%A_ScriptDir%/Delete.png
Gui, Add, Edit,Limit6 geditC x145 y120 h20 w80 vColor5,
Gui, Add, Text,BackgroundTrans 0x1007 y118 x228 w39 h24 vpsc5 gpset,
Gui, Add, Progress,y120 x230 w35 h20 cWhite v5Color, 100
Gui, Add, Picture, BackgroundTrans x125 y147 h16 w16 gClearColor vCl6,%A_ScriptDir%/Delete.png
Gui, Add, Edit,Limit6 geditC x145 y145 h20 w80 vColor6,
Gui, Add, Text,BackgroundTrans 0x1007 y143 x228 w39 h24 vpsc6 gpset,
Gui, Add, Progress,y145 x230 w35 h20 cWhite v6Color, 100
Gui, Add, Picture, BackgroundTrans x125 y172 h16 w16 gClearColor vCl7,%A_ScriptDir%/Delete.png
Gui, Add, Edit,Limit6 geditC x145 y170 h20 w80 vColor7,
Gui, Add, Text,BackgroundTrans 0x1007 y168 x228 w39 h24 vpsc7 gpset,
Gui, Add, Progress,y170 x230 w35 h20 cWhite v7Color, 100
Gui, Add, Picture, BackgroundTrans x125 y197 h16 w16 gClearColor vCl8,%A_ScriptDir%/Delete.png
Gui, Add, Edit,Limit6 geditC x145 y195 h20 w80 vColor8,
Gui, Add, Text,BackgroundTrans 0x1007 y193 x228 w39 h24 vpsc8 gpset,
Gui, Add, Progress,y195 x230 w35 h20 cWhite v8Color, 100
Gui, Add, Picture, BackgroundTrans x125 y222 h16 w16 gClearColor vCl9,%A_ScriptDir%/Delete.png
Gui, Add, Edit,Limit6 geditC x145 y220 h20 w80 vColor9,
Gui, Add, Text,BackgroundTrans 0x1007 y218 x228 w39 h24 vpsc9 gpset,
Gui, Add, Progress,y220 x230 w35 h20 cWhite v9Color, 100
Gui, Add, Picture, BackgroundTrans x125 y247 h16 w16 gClearColor vCl10,%A_ScriptDir%/Delete.png
Gui, Add, Edit,Limit6 geditC x145 y245 h20 w80 vColor10,
Gui, Add, Text,BackgroundTrans 0x1007 y243 x228 w39 h24 vpsc10 gpset,
Gui, Add, Progress,y245 x230 w35 h20 cWhite v10Color, 100

Gui, Add, Picture, BackgroundTrans x285 y22 h16 w16 gClearColor vCl11,%A_ScriptDir%/Delete.png
Gui, Add, Edit,Limit6 geditC x305 y20 h20 w80 vColor11,
Gui, Add, Text,BackgroundTrans 0x1007 y18 x388 w39 h24 vpsc11 gpset,
Gui, Add, Progress,y20 x390 w35 h20 cWhite v11Color, 100
Gui, Add, Picture, BackgroundTrans x285 y47 h16 w16 gClearColor vCl12,%A_ScriptDir%/Delete.png
Gui, Add, Edit,Limit6 geditC x305 y45 h20 w80 vColor12,
Gui, Add, Text,BackgroundTrans 0x1007 y43 x388 w39 h24 vpsc12 gpset,
Gui, Add, Progress,y45 x390 w35 h20 cWhite v12Color, 100
Gui, Add, Picture, BackgroundTrans x285 y72 h16 w16 gClearColor vCl13,%A_ScriptDir%/Delete.png
Gui, Add, Edit,Limit6 geditC x305 y70 h20 w80 vColor13,
Gui, Add, Text,BackgroundTrans 0x1007 y68 x388 w39 h24 vpsc13 gpset,
Gui, Add, Progress,y70 x390 w35 h20 cWhite v13Color, 100
Gui, Add, Picture, BackgroundTrans x285 y97 h16 w16 gClearColor vCl14,%A_ScriptDir%/Delete.png
Gui, Add, Edit,Limit6 geditC x305 y95 h20 w80 vColor14,
Gui, Add, Text,BackgroundTrans 0x1007 y93 x388 w39 h24 vpsc14 gpset,
Gui, Add, Progress,y95 x390 w35 h20 cWhite v14Color, 100
Gui, Add, Picture, BackgroundTrans x285 y122 h16 w16 gClearColor vCl15,%A_ScriptDir%/Delete.png
Gui, Add, Edit,Limit6 geditC x305 y120 h20 w80 vColor15,
Gui, Add, Text,BackgroundTrans 0x1007 y118 x388 w39 h24 vpsc15 gpset,
Gui, Add, Progress,y120 x390 w35 h20 cWhite v15Color, 100
Gui, Add, Picture, BackgroundTrans x285 y147 h16 w16 gClearColor vCl16,%A_ScriptDir%/Delete.png
Gui, Add, Edit,Limit6 geditC x305 y145 h20 w80 vColor16,
Gui, Add, Text,BackgroundTrans 0x1007 y143 x388 w39 h24 vpsc16 gpset,
Gui, Add, Progress,y145 x390 w35 h20 cWhite v16Color, 100
Gui, Add, Picture, BackgroundTrans x285 y172 h16 w16 gClearColor vCl17,%A_ScriptDir%/Delete.png
Gui, Add, Edit,Limit6 geditC x305 y170 h20 w80 vColor17,
Gui, Add, Text,BackgroundTrans 0x1007 y168 x388 w39 h24 vpsc17 gpset,
Gui, Add, Progress,y170 x390 w35 h20 cWhite v17Color, 100
Gui, Add, Picture, BackgroundTrans x285 y197 h16 w16 gClearColor vCl18,%A_ScriptDir%/Delete.png
Gui, Add, Edit,Limit6 geditC x305 y195 h20 w80 vColor18,
Gui, Add, Text,BackgroundTrans 0x1007 y193 x388 w39 h24 vpsc18 gpset,
Gui, Add, Progress,y195 x390 w35 h20 cWhite v18Color, 100
Gui, Add, Picture, BackgroundTrans x285 y222 h16 w16 gClearColor vCl19,%A_ScriptDir%/Delete.png
Gui, Add, Edit,Limit6 geditC x305 y220 h20 w80 vColor19,
Gui, Add, Text,BackgroundTrans 0x1007 y218 x388 w39 h24 vpsc19 gpset,
Gui, Add, Progress,y220 x390 w35 h20 cWhite v19Color, 100
Gui, Add, Picture, BackgroundTrans x285 y247 h16 w16 gClearColor vCl20,%A_ScriptDir%/Delete.png
Gui, Add, Edit,Limit6 geditC x305 y245 h20 w80 vColor20,
Gui, Add, Text,BackgroundTrans 0x1007 y243 x388 w39 h24 vpsc20 gpset,
Gui, Add, Progress,y245 x390 w35 h20 cWhite v20Color, 100
Gui,Add, Picture,0x4000000 x1 y1 w450 h315 gmove vSilver,%A_ScriptDir%/Silver.png
Gui, Show, center w450 h315, PSColor Picker Extended

;---Tooltips--------------------------------------------------------------------------------------//
OnMessage(0x200, "WM_MOUSEMOVE")

Toggle_TT := "Activates or Deactivates the Color Picker`nRightClick + Holding Ctrl Saves a Color"
SaveColor_TT := "Saves the current Color to the Palette"
Clear_TT := "Clear the Current Color"
ClearPalette_TT := "Clears all temporary saved Colors"
SelectSection_TT := "Load a saved Palette"
SavePalette_TT := "Save Colors to an existing Palette"
NewPalette_TT := "Create a New Palette"
DeletePalette_TT := "Delete the loaded Palette"
RenamePalette_TT := "Rename the loaded Palette"
Export_TT := "Append all Colors to the active Photoshop Palette"
Cl20_TT := Cl19_TT := Cl18_TT := Cl17_TT := Cl16_TT := Cl15_TT := Cl14_TT := Cl13_TT := Cl12_TT := Cl11_TT := Cl10_TT := Cl9_TT := Cl8_TT := Cl7_TT := Cl6_TT := Cl5_TT := Cl4_TT := Cl3_TT := Cl2_TT := Cl1_TT := "Clear this Color"
psc20_TT := psc19_TT := psc18_TT := psc17_TT := psc16_TT := psc15_TT := psc14_TT := psc13_TT := psc12_TT := psc11_TT := psc10_TT := psc9_TT := psc8_TT := psc7_TT := psc6_TT := psc5_TT := psc4_TT := psc3_TT := psc2_TT := psc1_TT := "Leftclick to set this Color as Foreground in Photoshop"

;---Language--------------------------------------------------------------------------------------//

0407 = German
0807 = German
0c07 = German
1007 = German
1407 = German
0407 = German
0409 = English
0809 = English
0c09 = English
1009 = English
1409 = English
1809 = English
1c09 = English
2009 = English
2409 = English
2809 = English
2c09 = English
3009 = English
3409 = English

LocalLanguage := %A_Language%
if (LocalLanguage = "German")
{
	global Local01 = "Farbwähler"
}
if (LocalLanguage = "English")
{
	global Local01 = "Color Picker"
}

IfWinExist, ahk_class Photoshop
	GuiControl, Enable, PSColor

gosub ReadIni
return

;---Hotkeys--------------------------------------------------------------------------------------//

~LControl::
Loop
{
	Sleep, 100
    GetKeyState, state, LControl, P
		if state = U
			break
	GetKeyState, state, RButton, P
		if state = D
			gosub SetColor
	MouseGetPos, MouseX, MouseY
	PixelGetColor, color, %MouseX%, %MouseY%, RGB, Slow
	StringTrimLeft, hex, color, 2
	GuiControl,, ColorAp, %hex%
	GuiControl,+c%hex%, XColor
}
return

;===Functions============================================================================//

WM_MOUSEMOVE()
{
    static CurrControl, PrevControl, _TT
    CurrControl := A_GuiControl
    If (CurrControl <> PrevControl and not InStr(CurrControl, " "))
    {
        ToolTip
        SetTimer, DisplayToolTip, 1200
        PrevControl := CurrControl
    }
    return

    DisplayToolTip:
    SetTimer, DisplayToolTip, Off
    ToolTip % %CurrControl%_TT
    SetTimer, RemoveToolTip, 4500
    return

    RemoveToolTip:
    SetTimer, RemoveToolTip, Off
    ToolTip
    return
}

;===Subroutines============================================================================//

;---Main-----------------------------------------------------------------------------------//

;//Toggle Color Picker Function//

ToggleCtrl:
Gui, Submit, NoHide
Hotkey, LControl, Toggle
If (Toggle = 0)
	GuiControl,, Toggle, Pick
If (Toggle = 1)
	GuiControl,, Toggle, Press and Hold Left Ctrl
return

;//SaveColor//

SetColor:
Gui, Submit, NoHide
Loop, 20
{
	if (Color%A_Index% <> "")
		continue
	else
		GuiControl,,Color%A_Index%, %ColorAp%
		GuiControl,+c%ColorAp%, %A_Index%Color
		break
}
return

;//Edit Control Input//

editC:
Gui, Submit, NoHide
GuiControlGet, XZ,, %A_GuiControl%
XC := SubStr(A_GuiControl, 6, 2)
GuiControl,+c%XZ%, %XC%Color
return

;//Clear//

Clear:
GuiControl,, ColorAp,
GuiControl,+cffffff, XColor
return

;//Clear All//

ClearAll:
Loop,20
{
	GuiControl,,Color%A_Index%,
	GuiControl,+cffffff,%A_Index%Color
}
return

;//Clear Singel Palette Color//

ClearColor:
Gui, Submit, NoHide
StringTrimLeft, XCo, A_GuiControl, 2
GuiControl,,Color%XCo%,
GuiControl,+cffffff, %XCo%Color
return

;---Ini File Manipulations-------------------------------------------------------------------------//

ReadIni:
GuiControl,, SelectSection, |None||
IniRead, SetSelections, ColorConfig.ini
Loop, parse, SetSelections, `n
{
	GuiControl,, SelectSection, %A_LoopField%|
}
return

;//Load Palette//

LoadIni:
Gui,Submit, NoHide
gosub ClearAll
Loop, 20
{
	IniRead, SetColor%A_Index%, ColorConfig.ini, %SelectSection%, Color%A_Index%, %A_Space%
	SetColorX := SetColor%A_Index%
	GuiControl,, Color%A_Index%, %SetColorX%
	GuiControl,+c%SetColorX%, %A_Index%Color
}
return

;//New Palette//

NewPalette:
Gui, Submit, Hide
InputBox, SectionName, Palette Name, Enter the Name of the New Color Palette!,,250,150,center,center
	if ErrorLevel
	{
		Gui, Show
		Exit
	}
	if (SectionName = "")
		MsgBox, 4096, Palette Name, Enter a valid Name for the New Palette!
	ifMsgBox, OK
		{
			Gui, Show
			Exit
		}
gosub SavetoIni
return

;//Save Palette//

SavePalette:
If (SelectSection = "None")
	gosub NewPalette
If (SelectSection <> "None")
	{	
		SectionName := SelectSection
		MsgBox, 4145, Save Palette, Overwrite %SelectSection%?
		IfMsgBox, Cancel
		{
			Gui, Show
			Exit	
		}
		gosub SavetoIni
	}
return

SavetoIni:
Loop, 20
{
	GuiControlGet, IniC%A_Index%,, Color%A_Index%
	IniColor := IniC%A_Index%
	IniWrite, %IniColor%, ColorConfig.ini, %SectionName%, Color%A_Index%
}
gosub ReadIni
Gui, Show
return

;//Delete Palette//

DeleteSection:
Gui, Submit, NoHide
If (SelectSection = "None")
	Exit
MsgBox, 4145, Delete Palette, This will delete the chosen Colorpalette - %SelectSection%!`nContinue?
IfMsgBox, Cancel
	Exit
IniDelete, ColorConfig.ini, %SelectSection%
gosub ReadIni
return

;//Rename Palette//

RenamePalette:
Gui, Submit, Hide
If (SelectSection = "None")
	Exit
InputBox, SectionName, Palette Name, Enter the New Name for %SelectSection%!,,250,150,center,center
	if ErrorLevel
	{
		Gui, Show
		Exit
	}
	if (SectionName = "")
		MsgBox, 4096, Palette Name, Enter a valid Name for the Palette!
	ifMsgBox, OK
		{
			Gui, Show
			Exit
		}
IniDelete, ColorConfig.ini, %SelectSection%
gosub SavetoIni
return


;---Photoshop Interactions--------------------------------------------------------------------//

;//Get Color from Photoshop Color Picker//

GetPSColor:
IfWinNotExist, %Local01%
	MsgBox,4097, Choose your Color, Open the Photoshop Color Chooser.`n`nChoose your Color and press OK.
    IfMsgBox OK
		gosub color
	IfMsgBox Cancel
		Exit
IfWinExist, %Local01%
	gosub color
return

color:
IfWinNotExist, %Local01%
	gosub GetPSColor
ControlGetText, PSColor, Edit7, %Local01%
GuiControl,,ColorAP, %PSColor%
GuiControl,+c%PSColor%, XColor
return

;//Choose Color in Photoshop//

pset:
Gui, Submit, NoHide
IfWinExist, ahk_class Photoshop
{
	StringTrimLeft, psc, A_GuiControl, 3
	GuiControlGet, TempColor,, Color%psc%
	FileAppend,
	(
	R = hexToR("#%TempColor%");
	G = hexToG("#%TempColor%");
	B = hexToB("#%TempColor%");

	function hexToR(h) {return parseInt((cutHex(h)).substring(0,2),16)}
	function hexToG(h) {return parseInt((cutHex(h)).substring(2,4),16)}
	function hexToB(h) {return parseInt((cutHex(h)).substring(4,6),16)}
	function cutHex(h) {return (h.charAt(0)=="#") ? h.substring(1,7):h}

	#target photoshop
	app.bringToFront();
	var solidColorRef = new SolidColor()
	solidColorRef.rgb.red = R
	solidColorRef.rgb.green = G
	solidColorRef.rgb.blue = B
	foregroundColor = solidColorRef;
	)
	,ColorTemp.jsx
	RunWait ColorTemp.jsx
	Sleep, 400
	FileDelete, ColorTemp.jsx
	Gui, submit, nohide
	return
}
else
	Exit
return

Export:
Gui, Submit, NoHide
IfWinNotExist, ahk_Class Photoshop
{
	MsgBox, 4160, Color Export, Open Photoshop first to Export the Colors!
	Exit
}
IfWinExist, ahk_class Photoshop
{
	MsgBox, 4145, Color Export, Append all Colors to the currently chosen Color Palette`nin Photoshop?
	IfMsgBox, Cancel
		Exit
	Loop,20
		{GuiControlGet, ColorExport%A_Index%,, Color%A_Index%
			ColorEx := ColorExport%A_Index%
			If (ColorEx = "")
				Continue
			else
			{
				FileAppend,
				(
					R = hexToR("#%ColorEx%");
					G = hexToG("#%ColorEx%");
					B = hexToB("#%ColorEx%");

					function hexToR(h) {return parseInt((cutHex(h)).substring(0,2),16)}
					function hexToG(h) {return parseInt((cutHex(h)).substring(2,4),16)}
					function hexToB(h) {return parseInt((cutHex(h)).substring(4,6),16)}
					function cutHex(h) {return (h.charAt(0)=="#") ? h.substring(1,7):h}

					#target photoshop

					cTID = function(s) { return app.charIDToTypeID(s); };
					sTID = function(s) { return app.stringIDToTypeID(s); };

					function ColorRGB() {
					  function step1(enabled, withDialog) {
						if (enabled != undefined && !enabled)
						  return;
						var dialogMode = (withDialog ? DialogModes.ALL : DialogModes.NO);
						var desc1 = new ActionDescriptor();
						var ref1 = new ActionReference();
						ref1.putProperty(cTID('Clr '), cTID('FrgC'));
						desc1.putReference(cTID('null'), ref1);
						var desc2 = new ActionDescriptor();
						desc2.putDouble(cTID('Rd  '), R);
						desc2.putDouble(cTID('Grn '), G);
						desc2.putDouble(cTID('Bl  '), B);
						desc1.putObject(cTID('T   '), sTID("RGBColor"), desc2);
						executeAction(sTID('set'), desc1, dialogMode);
					  };

					  function step2(enabled, withDialog) {
						if (enabled != undefined && !enabled)
						  return;
						var dialogMode = (withDialog ? DialogModes.ALL : DialogModes.NO);
						var desc1 = new ActionDescriptor();
						var ref1 = new ActionReference();
						ref1.putClass(cTID('Clrs'));
						desc1.putReference(cTID('null'), ref1);
						var desc2 = new ActionDescriptor();
						desc2.putString(cTID('Nm  '), "%ColorEx%");
						var desc3 = new ActionDescriptor();
						desc3.putDouble(cTID('Rd  '), R);
						desc3.putDouble(cTID('Grn '), G);
						desc3.putDouble(cTID('Bl  '), B);
						desc2.putObject(cTID('Clr '), sTID("RGBColor"), desc3);
						desc1.putObject(cTID('Usng'), cTID('Clrs'), desc2);
						executeAction(sTID('make'), desc1, dialogMode);
					  };

					  step1();
					  step2();
					};

					ColorRGB.main = function () {
					  ColorRGB();
					};

					ColorRGB.main();
				),ColorTemp.jsx
				RunWait ColorTemp.jsx
				Sleep, 300
			}	FileDelete, ColorTemp.jsx
		}
}
return

;---MoveGui--------------------------------------------------------------------------------------//

move:
PostMessage, 0xA1, 2,,, A
return

;---AppExit--------------------------------------------------------------------------------------//

exit:
if FileExist("ColorTemp.jsx")
	FileDelete, ColorTemp.jsx
Gui, Destroy
ExitApp
return

Guiclose:
if FileExist("ColorTemp.jsx")
	FileDelete, ColorTemp.jsx
Gui, Destroy
ExitApp
return