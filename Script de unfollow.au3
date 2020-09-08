#cs ----------------------------------------------------------------------------

 AutoIt Version: 3.3.14.5
 Author:         myName

 Script Function:
	Template AutoIt script.

#ce ----------------------------------------------------------------------------

$f = FileOpen("test.txt",0)
$id = InputBox("Connexion","Nom utilisateur","abcde12345")
sleep(500)
$pwd = InputBox("Connexion","Mot de passe","password","*")
sleep(500)
WinActivate("Instagram")
sleep(1000)
MouseClick("left",755,315)
Send($id)
sleep(250)
MouseClick("left",756,355)
Send($pwd)
sleep(250)
send("{enter}")
sleep(5000)
MouseClick("left",882,206)
sleep(2000)
MouseClick("left",799,222)
sleep(2000)
MouseClickDrag("left",734,297,544,297,0.1)
sleep(2000)
MouseMove(734, 290)
sleep(500)
#csMouseClick("left",560,173)
sleep(100)
MouseClick("left",560,173)
sleep(100)
MouseClick("left",560,173)
#cesleep(500)
send("^c")
sleep(1000)
$pseudo = ClipGet()
sleep(1000)
MsgBox(0,"",$pseudo)
sleep(1000)
$f = FileOpen("test.txt",0)
$t = FileReadLine($f,1)
sleep(1000)
if not(is_inside()) Then
	MouseClick("left",547,299)
	sleep(2000)
	MouseClick("left",796,171)
	sleep(1000)
	MouseMove(680,474)
	sleep(1000)
Else
	MsgBox(0,"","Yes")
EndIf
FileClose("test.txt")
MsgBox(64,"Information","La session de unfollow est terminée")


Func is_inside()
	$lines =_FileCountLines("test.txt")
	Local $i
	for $i = 1 to $lines step 1
		$t = FileReadLine($f,$i)
		if StringCompare($t,$pseudo) = 0 Then
		return 1
		EndIf
	Next
EndFunc

Func _FileCountLines($sFilePath)
    Local $N = FileGetSize($sFilePath) - 1
;~  If @error Or $N = -1 Then Return 0
;~  Return StringLen(StringAddCR(FileRead($sFilePath, $N))) - $N + 1
    Local $hFile, $sFileContent, $aTmp
    $hFile = FileOpen($sFilePath, 0)
    If $hFile = -1 Then Return SetError(1, 0, 0)
    $sFileContent = StringStripWS(FileRead($hFile), 2)

    FileClose($hFile)
    If StringInStr($sFileContent, @CR) Then
        $aTmp = StringSplit(StringStripCR($sFileContent), @LF)

    ElseIf StringInStr($sFileContent, @CR) Then
        $aTmp = StringSplit($sFileContent, @CR)
    ElseIf Not $sFileContent = "" Then
        $aTmp=StringLen(StringAddCR(FileRead($sFilePath, $N))) - $N + 1
    Else
        Return SetError(2, 0, 0)
    EndIf
    If IsArray($aTmp) Then
    Return $aTmp[0]
Else
    Return $aTmp
    EndIf
EndFunc  ;==>_FileCountLines




