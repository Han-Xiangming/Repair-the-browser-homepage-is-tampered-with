set ws=CreateObject("WScript.Shell")
desktop=ws.SpecialFolders("Desktop")
set fso=CreateObject("Scripting.FileSystemObject")
fso.DeleteFile(desktop+"\Google Chrome.lnk")
program=ws.ExpandEnvironmentStrings("%programfiles(x86)%")
set lnk=ws.CreateShortcut(desktop+"\Google Chrome.lnk")
userprofile=ws.ExpandEnvironmentStrings("%USERPROFILE%")
target=userprofile+"\AppData\Local\Google\Chrome SxS\Application\chrome.exe"
lnk.TargetPath=target
lnk.IconLocation=target+",0"
lnk.Description="���ʻ�����"
lnk.Save
fso.DeleteFolder(userprofile+"\AppData\Local\Google\Chrome SxS\User Data")
msgbox "�޸��ɹ�",,"�޸��ɹ�"