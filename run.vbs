Set fso = CreateObject("Scripting.FileSystemObject")
scriptPath = WScript.ScriptFullName
scriptDir = fso.GetParentFolderName(scriptPath)
startBatPath = scriptDir & "\" & "start.bat"
Set WshShell = CreateObject("WScript.Shell")
WshShell.Run chr(34) & startBatPath & chr(34), 0, false
Set WshShell = Nothing