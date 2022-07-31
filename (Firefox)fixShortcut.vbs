set ws=CreateObject("WScript.Shell")
desktop=ws.SpecialFolders("Desktop")
set fso=CreateObject("Scripting.FileSystemObject")
fso.DeleteFile(desktop+"\Firefox.lnk")
program=ws.ExpandEnvironmentStrings("%programfiles(x86)%")
set lnk=ws.CreateShortcut(desktop+"\Firefox.lnk")
userprofile=ws.ExpandEnvironmentStrings("%USERPROFILE%")
target=userprofile+"\AppData\Local\Mozilla Firefox\firefox.exe"
lnk.TargetPath=target
lnk.IconLocation=target+",0"
lnk.Save
'fso.DeleteFolder(userprofile+"\AppData\Local\Microsoft\Edge\User Data")
msgbox "修复成功",,"修复成功"