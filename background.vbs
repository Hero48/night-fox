Set WshShell = CreateObject("WScript.Shell")
Set args = WScript.Arguments
scriptPath = WshShell.CurrentDirectory & "\main.bat"
argString = ""

For i = 0 To args.Count - 1
    argString = argString & " " & args(i)
Next

WshShell.Run "cmd /c " & scriptPath & argString, 0, False
Set WshShell = Nothing