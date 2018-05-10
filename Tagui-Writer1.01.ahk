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

Menu,Webscraping, Add, Webpage, :WebScraping_Pointer
Menu,Webscraping,Icon,Webpage, %A_WinDir%\system32\SHELL32.dll, 18 ; %A_WinDir%\system32\imageres.dll, 18

;****************************** 
;***********Click******************* 
;****************************** 
Menu,WebScraping_Click,Add,Click on Element,          WebScraping_Click
Menu,WebScraping_Click,Add,move cursor to element,WebScraping_Click_Focus
Menu,WebScraping_Click,Icon,move cursor to element, %A_windir%\system32\mmcndmgr.dll,101 ;%A_WinDir%\system32\wmploc.dll,28

	Menu,WebScraping,Add,Click, :WebScraping_Click ;*********** ******************* 
   Menu,WebScraping,Icon,Click,     %A_WinDir%\system32\mmcndmgr.dll,51

;*************Set***************** 
Menu,WebScraping_set,Add,Enter text,          WebScraping_enter
Menu,WebScraping_set,Add,Enter value from repository,          WebScraping_enterrepo

Menu,WebScraping_set,Add,Choose dropdown option,          WebScraping_option
Menu,WebScraping_set,Add,Press Enter key in element,          WebScraping_pressenter

	Menu,WebScraping,Add,Set, :WebScraping_set ;*********** ******************* 
   Menu,WebScraping,Icon,Set,     %A_WinDir%\system32\shell32.dll,166


   ;*************Scrap***************** 
Menu,WebScraping_get,Add,Read element text to variable,          WebScraping_read
Menu,WebScraping_get,Add,Print element text to output,          WebScraping_print
Menu,WebScraping_get,Add,Echo text/variables to output,          WebScraping_echo
Menu,WebScraping_get,Add,Save screenshot to file,    		WebScraping_snap
Menu,WebScraping_get,Add,Snap page,    					WebScraping_snappage
Menu,WebScraping_get,Add,Save webpage to pdf,   			 WebScraping_snap_pdf
Menu,WebScraping_get,Add,Save basic html table to csv,    WebScraping_table
Menu,WebScraping_get,Add,Count elements on page,    WebScraping_countel
Menu,WebScraping_get,Add,Track time between events,    WebScraping_timer

	Menu,WebScraping,Add,Scrap, :WebScraping_get ;*********** ******************* 
   Menu,WebScraping,Icon,Scrap,     %A_WinDir%\system32\shell32.dll,219

   ;*************File***************** 
Menu,WebScraping_file,Add,Save element text to file,          WebScraping_save
Menu,WebScraping_file,Add,Save text/variables to file,          WebScraping_dump
Menu,WebScraping_file,Add,Append text/variables to file,    WebScraping_append
Menu,WebScraping_file,Add,Load file content to variable,    WebScraping_load
Menu,WebScraping_file,Add,upload file to website,    WebScraping_upload
Menu,WebScraping_file,Add,download from url to file,    WebScraping_download
Menu,WebScraping_file,Add,receive resource to file,    WebScraping_receive
 
	Menu,WebScraping,Add,Save-Read File, :WebScraping_file ;*********** ******************* 
   Menu,WebScraping,Icon,Save-Read File,     %A_WinDir%\system32\shell32.dll,71
 
   ;*************Start***************** 
Menu,WebScraping_tagui,Add,Start another tagui flow,    WebScraping_run
 
	Menu,WebScraping,Add,Start script, :WebScraping_tagui ;*********** ******************* 
   Menu,WebScraping,Icon,Start script,     %A_WinDir%\system32\shell32.dll,215
 
    ;*************Conditions***************** 
Menu,WebScraping_cond,Add,If text contain,          WebScraping_ifcontain
Menu,WebScraping_cond,Add,If element present do action,          WebScraping_present
Menu,WebScraping_cond,Add,Check element present return text,          WebScraping_checkpres
Menu,WebScraping_cond,Add,Check number of elements return text,          WebScraping_checkcount
	Menu,WebScraping,Add,Conditions, :WebScraping_cond ;*********** ******************* 
   Menu,WebScraping,Icon,Conditions,     %A_WinDir%\system32\shell32.dll,145
 
   ;*************pro***************** 
Menu,WebScraping_pro,Add,wait for some time,    WebScraping_wait
Menu,WebScraping_pro,Add,enter live mode,    WebScraping_live
Menu,WebScraping_pro,Add,check condition and print result,    WebScraping_check

	Menu,WebScraping,Add,Pro steps, :WebScraping_pro ;*********** ******************* 
   Menu,WebScraping,Icon,Pro steps,     %A_WinDir%\system32\shell32.dll,72

   
   
   
    ;*************Javascript***************** 
Menu,WebScraping_js,Add,Find element attribute,          WebScraping_attribute
Menu,WebScraping_js,Add,Get list of element (dom),          WebScraping_domloop
Menu,WebScraping_js,Add,Save dom result in file,          WebScraping_domsave
	Menu,WebScraping,Add,Javascript, :WebScraping_js ;*********** ******************* 
   Menu,WebScraping,Icon,Javascript,     %A_WinDir%\system32\setupapi.dll,13
  
;******************************  
^Lbutton::Menu, WebScraping, Show  ; right mouse and windows
;~ Browser_Forward::Reload
;****************************** 
   
   
WebScraping_timer:
Store:=ClipboardAll  ;****Store clipboard ****
Clipboard=
(  Join`r`n
// use timer() as a stopwatch to track elapsed time between calls
start = timer()

// ... some actions...

// use timer() as a stopwatch to track elapsed time between calls
time_taken = timer()
echo 'time taken - ' time_taken ' seconds'
)
Gosub Paste_and_Restore_Stored_Clipboard
return

   
WebScraping_countel:
Store:=ClipboardAll  ;****Store clipboard ****
Clipboard=
(  Join`r`n
//specify same id, class name of all elements on the page...
count_number = count('uh-tb-')
echo 'count_number = ' count_number
)
Gosub Paste_and_Restore_Stored_Clipboard
return

WebScraping_present:
Store:=ClipboardAll  ;****Store clipboard ****
Clipboard:="if present(***Selector***) {   ....  } "
Gosub Paste_and_Restore_Stored_Clipboard
return
   
WebScraping_ifcontain:
Store:=ClipboardAll  ;****Store clipboard ****
Clipboard:="if ****text variable(without quotation marks)*** contains 'text (with quotation marks)' "
Gosub Paste_and_Restore_Stored_Clipboard
return

WebScraping_checkpres:
Store:=ClipboardAll  ;****Store clipboard ****
Clipboard:="check present('search-buttons') | 'search button exists' | 'search button does not exist' "
Gosub Paste_and_Restore_Stored_Clipboard
return

WebScraping_checkcount:
Store:=ClipboardAll  ;****Store clipboard ****
Clipboard:="check count('uh-tb-') more than or equals to 6|'header menu items >= 6'|'header menu items < 6' "
Gosub Paste_and_Restore_Stored_Clipboard
return


  
WebScraping_domloop:
Store:=ClipboardAll  ;****Store clipboard ****
Clipboard=
(  Join`r`n
// JavaScript can be used directly in the flow for more expressive and advanced automation
// default execution context for JavaScript is local, to work on webpage dom, use dom step
// following loop through directly in webpage dom to compile and return list of profile ids
dom id_list = ""; for (n=1;n<=51;n++) {id_list += document.querySelector('.follow-list-item:nth-child('+n+') a').href + '\n'}; return id_list; 
echo dom_result
)

Gosub Paste_and_Restore_Stored_Clipboard
return

WebScraping_domsave:
Store:=ClipboardAll  ;****Store clipboard ****
Clipboard=
(  Join`r`n
// you can also use JavaScript to do post-processing and write to a file, or to a format directly usable by flow 6B
var fs = require('fs'); fs.write("/tmp/urls.csv", dom_result + "\n", 'w');
)

Gosub Paste_and_Restore_Stored_Clipboard
return

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

WebScraping_attribute:
Store:=ClipboardAll  ;****Store clipboard ****
Clipboard:="js myurl = this.getElementsAttribute(element_identifier, 'href');"
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

WebScraping_snappage:
Store:=ClipboardAll  ;****Store clipboard ****
Clipboard:="snap page"
Gosub Paste_and_Restore_Stored_Clipboard
return


go_to_url:
Store:=ClipboardAll  ;****Store clipboard ****
Clipboard:="http://www.webpage.com/      //note: '+variable+' for variable "
Gosub Paste_and_Restore_Stored_Clipboard
return

WebScraping_Click:
Store:=ClipboardAll  ;****Store clipboard ****
Clipboard:="click ***element***   //i.e. using variable: click '+element_identifier+' "
Gosub Paste_and_Restore_Stored_Clipboard
return


WebScraping_Click_Focus:
Store:=ClipboardAll  ;****Store clipboard ****
Clipboard:="hover '***element***' "
Gosub Paste_and_Restore_Stored_Clipboard
return

WebScraping_enter:
Store:=ClipboardAll  ;****Store clipboard ****
Clipboard:="enter ***element*** as ***text*** (or variable without quotation marks)"
Gosub Paste_and_Restore_Stored_Clipboard
return

WebScraping_enterrepo:
Store:=ClipboardAll  ;****Store clipboard ****
Clipboard:="enter ***element*** as 'text'"
Gosub Paste_and_Restore_Stored_Clipboard
return

WebScraping_pressenter:
Store:=ClipboardAll  ;****Store clipboard ****
Clipboard:="enter ***element*** as [enter] "
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

;***********About me******************* 
About:
Gui,About:Destroy
Gui,About:Font,Bold
Gui,About:Add,Text,x10 y10,WebScraping Menu  v1.0
Gui,About:Font,Norm
Gui,About:Add,Text,x10 y30,To activate menu, Hold down a control key and click the left mouse button

Gui,About:Font
Gui,About:Font,CBlue Underline
hCurs:=DllCall("LoadCursor","UInt",NULL,"Int",32649,"UInt") ;IDC_HAND
onMessage(0x200, "MsgHandler")
 Gui,About:Font
 Gui,About:Show,, About
return
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
