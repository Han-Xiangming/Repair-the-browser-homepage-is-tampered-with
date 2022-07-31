set ws=CreateObject("WScript.Shell")
desktop=ws.SpecialFolders("Desktop")
set fso=CreateObject("Scripting.FileSystemObject")
fso.DeleteFile(desktop+"\Microsoft Edge.lnk")
program=ws.ExpandEnvironmentStrings("%programfiles(x86)%")
set lnk=ws.CreateShortcut(desktop+"\Microsoft Edge.lnk")
target=program+"\Microsoft\Edge\Application\msedge.exe"
lnk.TargetPath=target
lnk.IconLocation=target+",0"
lnk.Description="浏览Web"
lnk.Save
'userprofile=ws.ExpandEnvironmentStrings("%USERPROFILE%")
'fso.DeleteFolder(userprofile+"\AppData\Local\Microsoft\Edge\User Data")
msgbox "修复成功",,"修复成功"