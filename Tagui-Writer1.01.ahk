#Persistent
#SingleInstance Force
#NoEnv
Menu, tray, icon, %A_WinDir%\system32\shell32.dll, 264
;***********************tray items********************************.
Menu, Tray, NoStandard ;removes default options
;Menu, Tray, Add, Helpful Links, Helpful_Links
Menu, Tray, Add, About this program, About
Menu, Tray, Add, 
Menu, Tray, Add, Reload
Menu, Tray, Add, Edit
Menu, Tray, Add, Exit
;****************************** 



;http(s)://	just enter full url of webpage ('+variable+' for variable)	go to specified webpage



;~ https://diymediahome.org/windows-icons-reference-list-with-details-locations-images/
;****************************** 
;***********Pointer******************* 
;****************************** 
Menu,WebScraping_Pointer,Add,Go to specified webpage, go_to_url
;Menu,WebScraping_Pointer,Add,Get pointer to IE window, WebScraping_Pointer_wbGet
;Menu,WebScraping_Pointer,Add,Get pointer to IE window with Title and URL, WebScraping_Pointer_Get_IE_Title_URL

;Menu,WebScraping_Pointer,Icon,Get pointer to IE window, %A_WinDir%\system32\shell32.dll,92

Menu,Webscraping, Add, Webpage, :WebScraping_Pointer
Menu,Webscraping,Icon,Webpage, %A_WinDir%\system32\SHELL32.dll, 18 ; %A_WinDir%\system32\imageres.dll, 18

;****************************** 
;***********Click******************* 
;****************************** 
Menu,WebScraping_Click,Add,Click on Element,          WebScraping_Click
Menu,WebScraping_Click,Add,Double Click on Element,          WebScraping_Click_Click
Menu,WebScraping_Click,Add,move cursor to element,WebScraping_Click_Focus
Menu,WebScraping_Click,Icon,move cursor to element, %A_windir%\system32\mmcndmgr.dll,101 ;%A_WinDir%\system32\wmploc.dll,28

	Menu,WebScraping,Add,Click, :WebScraping_Click ;*********** ******************* 
   Menu,WebScraping,Icon,Click,     %A_WinDir%\system32\mmcndmgr.dll,51

;*************Set***************** 
Menu,WebScraping_set,Add,Enter text,          WebScraping_enter
Menu,WebScraping_set,Add,Choose dropdown option,          WebScraping_option

	Menu,WebScraping,Add,Set, :WebScraping_set ;*********** ******************* 
   Menu,WebScraping,Icon,Set,     %A_WinDir%\system32\shell32.dll,166


   ;*************Get***************** 
Menu,WebScraping_get,Add,Read element text to variable,          WebScraping_read
Menu,WebScraping_get,Add,Print element text to output,          WebScraping_print
Menu,WebScraping_get,Add,Echo text/variables to output,          WebScraping_echo

	Menu,WebScraping,Add,Get, :WebScraping_get ;*********** ******************* 
   Menu,WebScraping,Icon,Get,     %A_WinDir%\system32\shell32.dll,219

   ;*************File***************** 
Menu,WebScraping_file,Add,Save element text to file,          WebScraping_save
Menu,WebScraping_file,Add,Save text/variables to file,          WebScraping_dump
Menu,WebScraping_file,Add,Append text/variables to file,    WebScraping_append
Menu,WebScraping_file,Add,Load file content to variable,    WebScraping_load
Menu,WebScraping_file,Add,Save screenshot to file,    WebScraping_snap
Menu,WebScraping_file,Add,Save webpage to pdf,    WebScraping_snap_pdf
Menu,WebScraping_file,Add,Save basic html table to csv,    WebScraping_table
Menu,WebScraping_file,Add,upload file to website,    WebScraping_upload
Menu,WebScraping_file,Add,download from url to file,    WebScraping_download
Menu,WebScraping_file,Add,receive resource to file,    WebScraping_receive
 
	Menu,WebScraping,Add,Save-Read File, :WebScraping_file ;*********** ******************* 
   Menu,WebScraping,Icon,Save-Read File,     %A_WinDir%\system32\shell32.dll,71
 
   ;*************Start***************** 
Menu,WebScraping_tagui,Add,Start another tagui flow,    WebScraping_run
 
	Menu,WebScraping,Add,Start script, :WebScraping_tagui ;*********** ******************* 
   Menu,WebScraping,Icon,Start script,     %A_WinDir%\system32\shell32.dll,215
 
   ;*************pro***************** 
Menu,WebScraping_pro,Add,wait for some time,    WebScraping_wait
Menu,WebScraping_pro,Add,enter live mode,    WebScraping_live
Menu,WebScraping_pro,Add,check condition and print result,    WebScraping_check

	Menu,WebScraping,Add,Pro steps, :WebScraping_pro ;*********** ******************* 
   Menu,WebScraping,Icon,Pro steps,     %A_WinDir%\system32\shell32.dll,72

   
/*
frame	frame name | subframe name if any	next step or block in frame/subframe
popup	url keyword of popup window to look for	next step or block in popup window
{ and }	use { to start block and } to end block (on new line)	define block of steps and code
api	full url (including parameters) of api call	call api & save response to api_result
run	OS shell command including parameters	run OS command & save to run_result
dom	javascript code for document object model	run code in dom & save to dom_result
js	javascript statements (skip auto-detection)	treat as JS code explicitly
r	R statements for big data and machine learning	run R statements & save to r_result
py	python code for big data and machine learning	run python code & save to py_result
vision	custom visual automation commands	run custom sikuli commands
timeout	time in seconds before step errors out	change auto-wait timeout
variable_name	= value (for text, put in quotes, use + to concat)	define variable variable_name
// (on new line)	user comments (ignored during execution)	add user comments
*/

;****************************** 
;***********Help******************* 
;****************************** 
Menu,WebScraping,Add, ;***********spacer******************* 
  Menu,Webscraping,Add, Helpful links, Helpful_Links


 
;******************************  
^Lbutton::Menu, WebScraping, Show  ; right mouse and windows
;~ Browser_Forward::Reload
;****************************** 

   

WebScraping_receive:
Store:=ClipboardAll  ;****Store clipboard ****
Clipboard:="receive ***url keyword*** to ***filename*** "
Gosub Paste_and_Restore_Stored_Clipboard
return

WebScraping_download:
Store:=ClipboardAll  ;****Store clipboard ****
Clipboard:="download ***url*** to ***filename*** "
Gosub Paste_and_Restore_Stored_Clipboard
return


WebScraping_upload:
Store:=ClipboardAll  ;****Store clipboard ****
Clipboard:="upload ***element*** as ***filename*** //note: CSS selector only "
Gosub Paste_and_Restore_Stored_Clipboard
return


WebScraping_wait:
Store:=ClipboardAll  ;****Store clipboard ****
Clipboard:="wait ***time in seconds(optional)*** //note: default is 5 sec. "
Gosub Paste_and_Restore_Stored_Clipboard
return

WebScraping_live:
Store:=ClipboardAll  ;****Store clipboard ****
Clipboard:="live ***try steps or code interactively in Chrome / PhantomJS*** //note: Firefox not yet "
Gosub Paste_and_Restore_Stored_Clipboard
return

WebScraping_check:
Store:=ClipboardAll  ;****Store clipboard ****
Clipboard:="check ***condition*** | 'text if true' | 'text if false'  //note: text in quotes "
Gosub Paste_and_Restore_Stored_Clipboard
return


WebScraping_run:
Store:=ClipboardAll  ;****Store clipboard ****
Clipboard:="tagui ***filename*** //note: relative or absolute path "
Gosub Paste_and_Restore_Stored_Clipboard
return

WebScraping_table:
Store:=ClipboardAll  ;****Store clipboard ****
Clipboard:="table ***element*** to optional filename.csv ***filename.csv (optional)*** //note: XPath selector only  "
Gosub Paste_and_Restore_Stored_Clipboard
return


WebScraping_snap_pdf:
Store:=ClipboardAll  ;****Store clipboard ****
Clipboard:="snap page to ***filename.pdf*** //note: headless Chrome / PhantomJS "
Gosub Paste_and_Restore_Stored_Clipboard
return


WebScraping_snap:
Store:=ClipboardAll  ;****Store clipboard ****
Clipboard:="snap ***element*** to ***filename (optional)*** //note: snap page = webpage) "
Gosub Paste_and_Restore_Stored_Clipboard
return

go_to_url:
Store:=ClipboardAll  ;****Store clipboard ****
Clipboard:="http://www.webpage.com/      //note: '+variable+' for variable "
Gosub Paste_and_Restore_Stored_Clipboard
return

WebScraping_Click:
Store:=ClipboardAll  ;****Store clipboard ****
Clipboard:="click	***element***   //i.e. using variable: click '+element_identifier+' "
Gosub Paste_and_Restore_Stored_Clipboard
return

WebScraping_Click_Click:
Store:=ClipboardAll  ;****Store clipboard ****
Clipboard:="dclick	***element*** "
Gosub Paste_and_Restore_Stored_Clipboard
return

WebScraping_Click_Focus:
Store:=ClipboardAll  ;****Store clipboard ****
Clipboard:="hover ***element*** "
Gosub Paste_and_Restore_Stored_Clipboard
return

WebScraping_enter:
Store:=ClipboardAll  ;****Store clipboard ****
Clipboard:="enter ***element*** as ***text*** //note: [enter] = enter, [clear] = clear field"
Gosub Paste_and_Restore_Stored_Clipboard
return

WebScraping_option:
Store:=ClipboardAll  ;****Store clipboard ****
Clipboard:="select ***element*** as ***option value*** //note: [clear] = clear selection "
Gosub Paste_and_Restore_Stored_Clipboard
return

WebScraping_read:
Store:=ClipboardAll  ;****Store clipboard ****
Clipboard:="read ***element*** to ***variable name*** "
Gosub Paste_and_Restore_Stored_Clipboard
return

WebScraping_echo:
Store:=ClipboardAll  ;****Store clipboard ****
Clipboard:="echo ***text (in quotation marks)*** and variables (without quotation)"
Gosub Paste_and_Restore_Stored_Clipboard
return

WebScraping_print:
Store:=ClipboardAll  ;****Store clipboard ****
Clipboard:="print ***element***  "
Gosub Paste_and_Restore_Stored_Clipboard
return

WebScraping_save:
Store:=ClipboardAll  ;****Store clipboard ****
Clipboard:="save ***element*** to ***filename(optional)***"
Gosub Paste_and_Restore_Stored_Clipboard
return

WebScraping_dump:
Store:=ClipboardAll  ;****Store clipboard ****
Clipboard:="dump ***text and variables*** to ***filename***"
Gosub Paste_and_Restore_Stored_Clipboard
return

WebScraping_append:
Store:=ClipboardAll  ;****Store clipboard ****
Clipboard:="write ***text and variables*** to ***filename***"
Gosub Paste_and_Restore_Stored_Clipboard
return

WebScraping_load:
Store:=ClipboardAll  ;****Store clipboard ****
Clipboard:="load ***filename*** to ***variable name***"
Gosub Paste_and_Restore_Stored_Clipboard
return


;****************************** 
;***********Subroutines******************* 
;****************************** 
;*******Store Clipboard- ****************
Store_Clipboard_Copy_Selected_Text:
Store:=ClipboardAll  ;Store full version of Clipboard
  clipboard :="" ; Empty the clipboard
  Send, ^c  ;Depending on your OS and Admin level- you might want to check this
  ClipWait, 1  
return

;***********Restore clipboard******************* 
Paste_and_Restore_Stored_Clipboard:  ;~ MsgBox % clipboard
Sleep, 50
Send, ^v ;Depending on your OS and Admin level- you might want to check this
Sleep, 50
Clipboard:=Store  ;Restore clipboard to original contents
return

Helpful_Links:
Gui, Helpful:Destroy
;~ Gui, Help:Add, Text,x10 y10, This program allows computers that share a mutual folder to share the clipboard.
;~ Gui, Help:Add, Text,x10 y+15, After launching the script on both computers FROM THE SAME DIRECTORY, Copy/paste as you would normally however use the Windows Key INSTEAD of the Control Key.
;~ Gui, Help:Add, Text,x10 y+15, To Copy hold down the windows key and press C (Alternatively you can press Alt and F1)
;~ Gui, Help:Add, Text,x10 y+15, To Paste hold down the windows key and press V (Alternatively you can press Alt and F2)
Gui, Helpful:Font,CBlue Underline
Gui, Helpful:Add,Text,y+5 GWebsite_Jethrow, Jethrow Tutorial
Gui, Helpful:Add,Text,y+10 GWebsite_Mickers, Mickers Tutorial
;****************************** 
Gui, Helpful:Font,Bold cBlack Norm 
Gui, Helpful:Add,Text,y+20, Other Resources
Gui, Helpful:Font,CBlue Underline
Gui, Helpful:Add,Text,y+10 GWebsite_W3Schools, W3 Schools
Gui, Helpful:Add,Text,y+10 GWebsite_DottorO, DottorO
Gui, Helpful:Add,Text,y+10 GWebsite_iWebBrowswer2, iWeb2 Browser
Gui, Helpful:Add,Text,y+10 GWebsite_YouTube, YouTube Demo
Gui, Helpful:Add,Text,y+10 GWebsite_AHK_Tutorial, AHK tutorial


hCurs:=DllCall("LoadCursor","UInt",NULL,"Int",32649,"UInt") ;IDC_HAND
onMessage(0x200, "MsgHandler")

Gui, Helpful:Show,w150 , Helpful links

;~ run 
return


;***********About me******************* 
About:
Gui,About:Destroy
Gui,About:Font,Bold
Gui,About:Add,Text,x10 y10,WebScraping Menu  v1.0
Gui,About:Font,Norm
Gui,About:Add,Text,x10 y30,To activate menu, Hold down a control key and click the left mouse button

Gui,About:Font
Gui,About:Font,CBlue Underline
;Gui,About:Add,Text,y+10 GWebsite_LinkedIN, Joe Glines on LinkedIN
hCurs:=DllCall("LoadCursor","UInt",NULL,"Int",32649,"UInt") ;IDC_HAND
onMessage(0x200, "MsgHandler")
 Gui,About:Font
 Gui,About:Show,, About
return
/*
Website_Jethrow:
Run,http://www.autohotkey.com/board/topic/47052-basic-webpage-controls-with-javascript-com-tutorial
  gosub GuiClose
Return

Website_Mickers:
Run,http://www.autohotkey.com/board/topic/64563-basic-ahk-v11-com-tutorial-for-webpages/
  gosub GuiClose
Return

Website_W3Schools:
Run, http://www.w3schools.com/jsref/dom_obj_document.asp
  gosub GuiClose
Return

Website_DottorO:
Run, http://help.dottoro.com/ljhrmrfb.php
  gosub GuiClose
Return

Website_LinkedIN:
Run,http://www.linkedin.com/in/joeglines/
Return

Website_iWebBrowswer2:
Run, http://www.autohotkey.com/board/topic/84258-iwb2-learner-iwebbrowser2/
Return

Website_YouTube:
Run, https://youtu.be/UfqumFBUrwI
Return

Website_AHK_Tutorial:
Run, http://ahkscript.org/boards/viewtopic.php?f=7&t=7822
return
*/
Exit:
ExitApp
Return

Reload:
Reload
Return

Edit:
Edit
Return

GuiClose:
  Gui,About:Destroy
  OnMessage(0x200,"")
  DllCall("DestroyCursor","Uint",hCur)
Return