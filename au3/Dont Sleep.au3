#cs ----------------------------------------------------------------------------

 AutoIt Version: 3.3.14.5
 Author:         José Mateus Camargo

 Script Function:
	Template AutoIt script.

#ce ----------------------------------------------------------------------------

Opt("TrayOnEventMode",1)
Opt("TrayMenuMode",1)

$AboutItem = TrayCreateItem("About")
TrayItemSetOnEvent(-1,"ReadList")
TrayCreateItem("")
$ExitItem = TrayCreateItem("Exit")
TrayItemSetOnEvent(-1,"ReadList")

Func ReadList()
	$SelectedItem = TrayItemGetText(@TRAY_ID)
	If $SelectedItem="Exit" Then
		Exit
	ElseIf $SelectedItem="About" Then
		Call("About")
	EndIf
EndFunc


Func About()
	 MsgBox(064,"Hello","Now your computer not sleep anymore." & @CRLF & "Copyright © Mateus 2020")
EndFunc

While 1

	$OldCurPos = MouseGetPos ( )
	Sleep(2000)
	$CurPos = MouseGetPos ( )
	If (($OldCurPos[0]=$CurPos[0]) and ($OldCurPos[1]=$CurPos[1])) then

		MouseMove ( $CurPos[0] + 15, $CurPos[1] )
		MouseMove ( $CurPos[0], $CurPos[1] )
		MouseMove ( $CurPos[0] + 15, $CurPos[1] )
		MouseMove ( $CurPos[0], $CurPos[1] )
	endif

WEnd