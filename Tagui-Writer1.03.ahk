#Persistent
#SingleInstance Force
#NoEnv
Menu, tray, icon, %A_WinDir%\system32\shell32.dll, 264
;***********************tray items********************************.
Menu, Tray, NoStandard ;removes default options
Menu, Tray, Add, Helpful Links, Helpful_Links
Menu, Tray, Add, About this program, About
Menu, Tray, Add, 
Menu, Tray, Add, Reload
Menu, Tray, Add, Edit
Menu, Tray, Add, Exit
;****************************** 




;~ https://diymediahome.org/windows-icons-reference-list-with-details-locations-images/
;****************************** 
;***********Navigate Webpage******************* 
;****************************** 
Menu,WebScraping_Pointer,Add,Go to specified webpage, go_to_url
Menu,WebScraping_Pointer,Icon,Go to specified webpage, %A_windir%\system32\shell32.dll,18 
Menu,Webscraping, Add, Webpage, :WebScraping_Pointer
Menu,Webscraping,Icon,Webpage, %A_WinDir%\system32\SHELL32.dll, 18 ; %A_WinDir%\system32\imageres.dll, 18

;****************************** 
;***********Click******************* 
;****************************** 
Menu,WebScraping_Click,Add,Click on Element,          WebScraping_Click
Menu,WebScraping_Click,Icon,Click on Element, %A_windir%\system32\shell32.dll,100 
Menu,WebScraping_Click,Add,Click on image,          WebScraping_image
Menu,WebScraping_Click,Icon,Click on image, %A_windir%\system32\shell32.dll,100 
Menu,WebScraping_Click,Add,Click on Text,          WebScraping_text
Menu,WebScraping_Click,Icon,Click on Text, %A_windir%\system32\shell32.dll,75 
Menu,WebScraping_Click,Add,move cursor to element,WebScraping_Click_Focus
Menu,WebScraping_Click,Icon,move cursor to element, %A_windir%\system32\shell32.dll,101 

	Menu,WebScraping,Add,Click, :WebScraping_Click ;*********** ******************* 
   Menu,WebScraping,Icon,Click,     %A_WinDir%\system32\mmcndmgr.dll,51

;*************Set***************** 
Menu,WebScraping_set,Add,Enter text or variables or arrays,          WebScraping_enter
Menu,WebScraping_set,Add,Enter value from repository,          WebScraping_enterrepo
Menu,WebScraping_set,Add,Check a Checkbox,          WebScraping_checkmybox
Menu,WebScraping_set,Icon,Check a Checkbox, %A_windir%\system32\shell32.dll,217 
Menu,WebScraping_set,Add,Choose dropdown option,          WebScraping_option
Menu,WebScraping_set,Add,Press Enter key in element,          WebScraping_pressenter

	Menu,WebScraping,Add,Set, :WebScraping_set ;*********** ******************* 
   Menu,WebScraping,Icon,Set,     %A_WinDir%\system32\shell32.dll,166


   ;*************Scrap***************** 
Menu,WebScraping_get,Add,Check text presence,    					WebScraping_checktext
Menu,WebScraping_get,Icon,Check text presence, %A_windir%\system32\shell32.dll,219 
Menu,WebScraping_get,Add,Check element presence visible,    					WebScraping_checkelement
Menu,WebScraping_get,Icon,Check element presence visible, %A_windir%\system32\shell32.dll,219 
Menu,WebScraping_get,Add,Return if checkbox is checked,    					WebScraping_checkbox
Menu,WebScraping_get,Icon,Return if checkbox is checked, %A_windir%\system32\shell32.dll,217 
Menu,WebScraping_get,Add,Count items in dropdown select,    					WebScraping_dropdownitem
Menu,WebScraping_get,Add,Getting attribute (like href) of elements,    			WebScraping_atribute
Menu,WebScraping_get,Add,Read element text to variable,          WebScraping_read
Menu,WebScraping_get,Add,Print element text to output,          WebScraping_print
Menu,WebScraping_get,Add,Echo text/variables to output,          WebScraping_echo
Menu,WebScraping_get,Add,Echo url of webpage,          WebScraping_url
Menu,WebScraping_get,Icon,Echo url of webpage, %A_windir%\system32\shell32.dll,18 
Menu,WebScraping_get,Add,Echo text of webpage,          WebScraping_webtext
Menu,WebScraping_get,Icon,Echo text of webpage, %A_windir%\system32\shell32.dll,18 
Menu,WebScraping_get,Add,Save screenshot to file,    		WebScraping_snap
Menu,WebScraping_get,Icon,Save screenshot to file, %A_windir%\system32\shell32.dll,140 
Menu,WebScraping_get,Add,Snap page,    					WebScraping_snappage
Menu,WebScraping_get,Icon,Snap page, %A_windir%\system32\shell32.dll,140 
Menu,WebScraping_get,Add,Save webpage to pdf,   			 WebScraping_snap_pdf
Menu,WebScraping_get,Icon,Save webpage to pdf, %A_windir%\system32\shell32.dll,76 
Menu,WebScraping_get,Add,Save basic html table to csv,    WebScraping_table
Menu,WebScraping_get,Icon,Save basic html table to csv, %A_windir%\system32\shell32.dll,115 
Menu,WebScraping_get,Add,Count elements on page,    WebScraping_countel
Menu,WebScraping_get,Icon,Count elements on page, %A_windir%\system32\shell32.dll,166 
Menu,WebScraping_get,Add,Scrap elements of table (loop),    WebScraping_tableelements
Menu,WebScraping_get,Icon,Scrap elements of table (loop), %A_windir%\system32\shell32.dll,166 
Menu,WebScraping_get,Add,Track time between events,    WebScraping_timer
Menu,WebScraping_get,Icon,Track time between events, %A_windir%\system32\shell32.dll,240  

	Menu,WebScraping,Add,Scrap, :WebScraping_get ;*********** ******************* 
   Menu,WebScraping,Icon,Scrap,     %A_WinDir%\system32\shell32.dll,219

   ;*************File***************** 
Menu,WebScraping_file,Add,Save element text to file,          WebScraping_save
Menu,WebScraping_file,Add,Save text/variables to file,          WebScraping_dump
Menu,WebScraping_file,Add,Save informations to a csv file,    WebScraping_csv
Menu,WebScraping_file,Icon,Save informations to a csv file, %A_windir%\system32\shell32.dll,115 
Menu,WebScraping_file,Add,Append text/variables to file,    WebScraping_append
Menu,WebScraping_file,Add,Load file content to variable,    WebScraping_load
Menu,WebScraping_file,Add,COMPLETE EXAMPLE Search/Append content in File,    WebScraping_content
Menu,WebScraping_file,Add,upload file to website,    WebScraping_upload
Menu,WebScraping_file,Icon,upload file to website, %A_windir%\system32\shell32.dll,264 
Menu,WebScraping_file,Add,download from url to file,    WebScraping_download
Menu,WebScraping_file,Icon,download from url to file, %A_windir%\system32\shell32.dll,123 
Menu,WebScraping_file,Add,receive resource to file,    WebScraping_receive

 
	Menu,WebScraping,Add,Save-Read File, :WebScraping_file ;*********** ******************* 
   Menu,WebScraping,Icon,Save-Read File,     %A_WinDir%\system32\shell32.dll,71
   
   
   ;*************Databases***************** 
Menu,WebScraping_db,Add,Take informations from repository,    WebScraping_repo
Menu,WebScraping_db,Icon,Take informations from repository, %A_windir%\system32\shell32.dll,55 
Menu,WebScraping_db,Add,Database example to crawl urls,    WebScraping_db1
Menu,WebScraping_db,Icon,Database example to crawl urls, %A_windir%\system32\shell32.dll,187 
Menu,WebScraping_db,Add,Database example for set of variables(arrays like),    WebScraping_db2
Menu,WebScraping_db,Icon,Database example for set of variables(arrays like), %A_windir%\system32\shell32.dll,187 
Menu,WebScraping_db,Add,MySQL Database access read and write,    WebScraping_db3
Menu,WebScraping_db,Icon,MySQL Database access read and write, %A_windir%\system32\shell32.dll,187 

	Menu,WebScraping,Add,Databases/Repositories, :WebScraping_db ;*********** ******************* 
   Menu,WebScraping,Icon,Databases/Repositories,     %A_WinDir%\system32\shell32.dll,187
   
   
   
   
   
 
   ;*************Start***************** 
Menu,WebScraping_tagui,Add,Run tagui flow,    WebScraping_run
Menu,WebScraping_tagui,Icon,Run tagui flow, %A_windir%\system32\shell32.dll,215 
	Menu,WebScraping,Add,Run script, :WebScraping_tagui ;*********** ******************* 
   Menu,WebScraping,Icon,RUN script,     %A_WinDir%\system32\shell32.dll,215
 
    ;*************Conditions***************** 
Menu,WebScraping_cond,Add,If text contain,          WebScraping_ifcontain
Menu,WebScraping_cond,Add,If value is more less,          WebScraping_if
Menu,WebScraping_cond,Add,If element present do action,          WebScraping_present
Menu,WebScraping_cond,Add,Check element present return text,          WebScraping_checkpres
Menu,WebScraping_cond,Add,Check number of elements return text,          WebScraping_checkcount
Menu,WebScraping_cond,Add,loop for,          WebScraping_for
	Menu,WebScraping,Add,Conditions/loop, :WebScraping_cond ;*********** ******************* 
   Menu,WebScraping,Icon,Conditions/loop,     %A_WinDir%\system32\shell32.dll,145
 
   ;*************pro***************** 
Menu,WebScraping_pro,Add,wait for some time,    WebScraping_wait
Menu,WebScraping_pro,Add,enter live mode,    WebScraping_live
Menu,WebScraping_pro,Add,check condition and print result,    WebScraping_check
Menu,WebScraping_pro,Add,Access to frame in webpage,    WebScraping_frame
Menu,WebScraping_pro,Add,Access to second browser tab,    WebScraping_popup
Menu,WebScraping_pro,Add,Access under Proxy,    WebScraping_proxy
Menu,WebScraping_pro,Add,Integration with R,    WebScraping_R


	Menu,WebScraping,Add,Pro steps, :WebScraping_pro ;*********** ******************* 
   Menu,WebScraping,Icon,Pro steps,     %A_WinDir%\system32\shell32.dll,72

   
   
   
    ;*************Javascript***************** 
Menu,WebScraping_js,Add,Find element attribute,          WebScraping_attribute
Menu,WebScraping_js,Add,Get list of element (dom),          WebScraping_domloop
Menu,WebScraping_js,Add,Save dom result in file,          WebScraping_domsave
Menu,WebScraping_js,Add,String replace (substitution of characters),    WebScraping_substitute
Menu,WebScraping_js,Add,String search (position of characters),    WebScraping_indexof
Menu,WebScraping_js,Add,String extraction (from a string),    WebScraping_substring
Menu,WebScraping_js,Add,Convert Lowercase/uppercase,    WebScraping_case
Menu,WebScraping_js,Add,Array declaration,    WebScraping_array

	Menu,WebScraping,Add,Javascript, :WebScraping_js ;*********** ******************* 
   Menu,WebScraping,Icon,Javascript,     %A_WinDir%\system32\setupapi.dll,13
  
  
;******************************
;***********Help*******************
;******************************
Menu,WebScraping,Add, ;***********spacer*******************
Menu,WebScraping,Add, Helpful links, Helpful_Links
Menu,WebScraping,Add, Exit App, Exit
return
  
;******************************  
^Lbutton::Menu, WebScraping, Show  ; right mouse and windows
;~ Browser_Forward::Reload
;****************************** 




WebScraping_repo:
Store:=ClipboardAll  ;****Store clipboard ****
Clipboard=
(  Join`r`n
// repositories help to make objects or steps reusable and improve readability
// save repository file with same name as your flow filename and with .csv behind
// repository must have 2 columns, for example below (headers up to you to name)
// using 'object' in your flow replaces it with its definition (which can contain objects)
// for example during execution, 'click link' becomes click //*[@id="profile_full"]//a
// if you have watched Inception movie, this is inception level 2 (capped at max 2 for now)
// don't worry about mistakes, TagUI is usually able to tell you which line has what error

// please note that in these precedent comments, the symbol ``` is replaced with '
// otherwise TagUI will try to interpret it as repository definition

// contents of repository.csv
// OBJECT,DEFINITION
// email,quick_email
// password,quick_pass
// user_email,mickey_mouse@disney.com
// user_password,iloveminnie4eva
// show info,Show full information
// click link,click ```facebook_link```
// facebook_link,//*[@id="profile_full"]//a

// somes examples of use :
enter ```email``` as ```user_email```
enter ```password``` as ```user_password```
click ```show info```
hover ```facebook_link```
wait 2.5
```click link```
wait
)
Gosub Paste_and_Restore_Stored_Clipboard
return


WebScraping_db1:
Store:=ClipboardAll  ;****Store clipboard ****
Clipboard=
(  Join`r`n
// datatables extend the power of repositories files to manage batch automation
// datatable has 2 or more columns, for example below (headers up to you to name)
// data-centric approach with rows representing data fields (usually row = test case)

// Example : content of datatable.csv with the same name of tagui file
// file in this format can be from flow 6A using JavaScript, or using Excel transpose function
// 6B_GETCONTACT,#1,#2,#3
// user_url,https://github.com/s0b0lev,https://github.com/zongUMR,https://github.com/jkmartindale

```user_url```
// TagUI loops through each column to automate using values from different datasets
// for example, echo "URL - ```user_url```" in your flow shows URL - https://github.com/s0b0lev

// read User Full Name and GitHub ID to variables
read fullname to fullname
read username to username
echo fullname "," username 
)
Gosub Paste_and_Restore_Stored_Clipboard
return


WebScraping_db2:
Store:=ClipboardAll  ;****Store clipboard ****
Clipboard=
(  Join`r`n
// contents of datatable.csv 
// DATA,#1,#2,#3
// GITHUB_ID,ironman,batman,superman
// USER_EMAIL,tony@stark.org,bruce@wayne.org,clarke@kent.org

// TagUI loops through each column to automate using values from different datasets
// set respective User IDs and User Emails and display to screen and log file

// example of use :
github_id = "```GITHUB_ID```"
user_email = "```USER_EMAIL```";
echo github_id " - " user_email
)
Gosub Paste_and_Restore_Stored_Clipboard
return


WebScraping_db3:
Store:=ClipboardAll  ;****Store clipboard ****
Clipboard=
(  Join`r`n
// form sql query to read from database and save to os script
// on mac/linux be sure that read_db file has execute permission
sql_query = 'mysql DATABASE_NAME -e "SELECT NAME,EMAIL FROM TABLE_NAME"'
dump sql_query to read_db

// above assumes running as root user from server, if database credentials are required, use below -
// sql_query = 'mysql DATABASE_NAME --user=username --password=\'password\' -e "SELECT NAME,EMAIL FROM TABLE_NAME"'

// use run step to run the script and retrieve results
run /full_path_to_flow/read_db
db_result = run_result.split('\n')
for row from 1 to db_result.length
{
        db_row = db_result[row-1].split('\t')
        echo db_row[0] ',' db_row[1]
}

// form sql query to write to database and save to os script
// on mac/linux be sure that read_db file has execute permission
sql_query = 'mysql DATABASE_NAME -e "UPDATE TABLE_NAME SET NAME=\'KS\' WHERE EMAIL=\'kensoh@gmail.com\'"'
dump sql_query to write_db

// above assumes running as root user from server, if database credentials are required, use below -
// sql_query = 'mysql DATABASE_NAME --user=username --password=\'password\' -e "SELECT NAME,EMAIL FROM TABLE_NAME"'

// use run step to run the script to write
run /full_path_to_flow/write_db

// repeat the reading of database showing new data
run /full_path_to_flow/read_db
db_result = run_result.split('\n')
for row from 1 to db_result.length
{
        db_row = db_result[row-1].split('\t')
        echo db_row[0] ',' db_row[1]
}
)
Gosub Paste_and_Restore_Stored_Clipboard
return


WebScraping_dropdownitem:
Store:=ClipboardAll  ;****Store clipboard ****
Clipboard=
(  Join`r`n
//return number of items in Select dropdown
dom return document.getElementById("BSDATORE").options.length;
echo dom_result
)
Gosub Paste_and_Restore_Stored_Clipboard
return

WebScraping_array:
Store:=ClipboardAll  ;****Store clipboard ****
Clipboard=
(  Join`r`n
//array declaration
cars = ["Saab", "Volvo", "BMW"];
)
Gosub Paste_and_Restore_Stored_Clipboard
return


WebScraping_if:
Store:=ClipboardAll  ;****Store clipboard ****
Clipboard=
(  Join`r`n
//conditions examples (natural language)
if day equals to "Friday"	
if menu contains "fruits"	
if A more than B and C not equals to D	
)
Gosub Paste_and_Restore_Stored_Clipboard
return

WebScraping_R:
Store:=ClipboardAll  ;****Store clipboard ****
Clipboard=
(  Join`r`n
// you can use r begin and r finish to denote a R code block
r begin
a=1;b=2
c=a+b
cat(c)
r finish
echo r_result
// alternatively,launch R script like this
r begin
source("/Users/kensoh/Desktop/sampler2.r")
r finish
)
Gosub Paste_and_Restore_Stored_Clipboard
return


WebScraping_for:
Store:=ClipboardAll  ;****Store clipboard ****
Clipboard=
(  Join`r`n
//loop for with some element substitution
for i from 1 to 3
{
element_symb = 'ul > li:nth-child(INDEX) .cell-market-name_name'
element_size = 'ul > li:nth-child(INDEX) .cell-size'
element_symb = element_symb.replace("INDEX", i);
element_size = element_size.replace("INDEX", i);

	if present(element_symb)
	{
	read '+element_symb+' to symb
	read '+element_size+' to size
	echo 'result : ' + symb + ' : ' + size
	}
}	
)
Gosub Paste_and_Restore_Stored_Clipboard
return
   
WebScraping_checkmybox:
Store:=ClipboardAll  ;****Store clipboard ****
Clipboard=
(  Join`r`n
// Check checkbox
dom document.forms[0].settimaneRetribuzioneSelezionate[0].checked = true;
)
Gosub Paste_and_Restore_Stored_Clipboard
return

WebScraping_indexof:
Store:=ClipboardAll  ;****Store clipboard ****
Clipboard=
(  Join`r`n
//return 1st position of string in other string
str = "Hello world";
position = str.indexOf("e");
// string.indexOf(searchvalue, start)
echo "position= " + position
)
Gosub Paste_and_Restore_Stored_Clipboard
return


WebScraping_case:
Store:=ClipboardAll  ;****Store clipboard ****
Clipboard=
(  Join`r`n
//convert Lowercase/uppercase
myString = myString.toLowerCase();
myString = myString.toUpperCase();
)
Gosub Paste_and_Restore_Stored_Clipboard
return


WebScraping_substring:
Store:=ClipboardAll  ;****Store clipboard ****
Clipboard=
(  Join`r`n
//extract some characters from a string
str = "Hello world!";
res = str.substring(1, 4);
echo "res= " + res
)
Gosub Paste_and_Restore_Stored_Clipboard
return


WebScraping_substitute:
Store:=ClipboardAll  ;****Store clipboard ****
Clipboard=
(  Join`r`n
//substitute comma by dot
str='5,17'
newstr=str.replace(',', '.');
echo "newstr= " + newstr
)
Gosub Paste_and_Restore_Stored_Clipboard
return
   
WebScraping_atribute:
Store:=ClipboardAll  ;****Store clipboard ****
Clipboard=
(  Join`r`n
//Getting href (or other attributes) of web element   
element_identifier = '#c_16 > div:nth-child(1) > h3 > a'
myurl = this.getElementsAttribute(element_identifier, 'href')
echo myurl   
)
Gosub Paste_and_Restore_Stored_Clipboard
return

   
WebScraping_checkbox:
Store:=ClipboardAll  ;****Store clipboard ****
Clipboard=
(  Join`r`n
//return if a checkbox is checked, example:
http://echoecho.com/htmlforms09.htm
dom return document.querySelector('input[type="checkbox"]:nth-child(2)').checked
if dom_result equals to true 
variable=1
else
variable=0
echo 'variable: '+variable
)
Gosub Paste_and_Restore_Stored_Clipboard
return

   
WebScraping_proxy:
Store:=ClipboardAll  ;****Store clipboard ****
Clipboard=
(  Join`r`n
//accessing the next URL under that proxy. 
//The last 2 parameters are the username and password, if your proxy service provider requires credentials.
phantom.setProxy('IP', 'port', 'manual', '', '');
https://www.google.com/
)
Gosub Paste_and_Restore_Stored_Clipboard
return

WebScraping_popup:  
Store:=ClipboardAll  ;****Store clipboard ****
Clipboard=
(  Join`r`n
http://tebel.org/index_mobile.php
// click ABOUT footer to open a new tab window
click ABOUT
// the execution context is still at the original window
// in order to interact with the new tab window use popup step
// the popup step looks for a keyword in the urls within the
// list of tabs that you have opened in this session of tagui
// after the next step, context returns to original window
popup about_tebel
{
print file-about_tebel-LC2
snap file-about_tebel-LC2
}
)
Gosub Paste_and_Restore_Stored_Clipboard
return

   
WebScraping_frame:
Store:=ClipboardAll  ;****Store clipboard ****
Clipboard=
(  Join`r`n
// for frame step it is used to access webpage implemented as a frame within another webpage
// the usage is similar to popup step, except that the parameter is the frame name
// if there is a subframe within the mainframe, use frame mainframe | subframe
frame framename
{
***do something***
}
)
Gosub Paste_and_Restore_Stored_Clipboard
return

   
WebScraping_tableelements:
Store:=ClipboardAll  ;****Store clipboard ****
Clipboard=
(  Join`r`n
// go to another web page with a table to practice for loop
https://github.com/tebelorg/TLE
// for loop can be expressed in natural language or JavaScript
for column from 1 to 6
{
// '+variable_name+' can be used where text is expected
show (//table)[3]//td['+column+']
}   
)
Gosub Paste_and_Restore_Stored_Clipboard
return

   
WebScraping_webtext:
Store:=ClipboardAll  ;****Store clipboard ****
Clipboard=
(  Join`r`n
//return text in command
echo 'text: ' text()
)
Gosub Paste_and_Restore_Stored_Clipboard
return


WebScraping_url:
Store:=ClipboardAll  ;****Store clipboard ****
Clipboard=
(  Join`r`n
//return url in command
echo 'page url: ' url()  
//you can use also:
echo 'UPLOADED URL - ' this.getCurrentUrl() + '\n' 
//append url in file
write url() to urllist.txt
)
Gosub Paste_and_Restore_Stored_Clipboard
return

   
WebScraping_text:
Store:=ClipboardAll  ;****Store clipboard ****
Clipboard=
(  Join`r`n
//check before if page contain text
check text() contains "Click here" | "page text contains this text" | "page text does NOT contain this text"
//click on text 
click //*[text()="Click here"]
//click on text contained in variable
click //*[text()="'+variable+'"]	
)
Gosub Paste_and_Restore_Stored_Clipboard
return


WebScraping_checkelement:
Store:=ClipboardAll  ;****Store clipboard ****
Clipboard=
(  Join`r`n
//check if page contain element
if present('element_identifier')
{
fetch element_identifier to element_info
echo element_info
}
//check if element is visible
if visible('element_identifier')
{
fetch element_identifier to element_info
echo element_info
}
)
Gosub Paste_and_Restore_Stored_Clipboard
return

  
  
WebScraping_checktext:
Store:=ClipboardAll  ;****Store clipboard ****
Clipboard=
(  Join`r`n
//check if page contain text
check text() contains "text" | "page text contains text" | "page text does not contain text"
//Other way : if string variable is found make some action
stringvariable='my text';
if present('//*[text()="'+stringvariable+'"]')
{
	echo stringvariable + ' is present'
}
)
Gosub Paste_and_Restore_Stored_Clipboard
return
   
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
Clipboard=
(  Join`r`n
if present('Selector') 
{   
//STUFF//
} 
)
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
// you can also use JavaScript to do post-processing and write to a file, or to a format directly usable by flow 6B
var fs = require('fs'); fs.write("/tmp/urls.csv", dom_result + "\n", 'w');
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
Clipboard=
(  Join`r`n
tagui ***filename*** options(s) 
//OPTION LIST:
//headless	run on invisible Chrome web browser instead of default PhantomJS (first install Chrome)
//chrome	run on visible Chrome web browser instead of invisible PhantomJS (first install Chrome)
//firefox	run on visible Firefox web browser instead of invisible browser (first install Firefox)
//upload	upload automation flow and result to hastebin.com (expires 30 days after last view)
//report	web report for sharing of run results on webserver (default is only a text log file)
//debug		show run-time backend messages from PhantomJS for detailed tracing and logging
//quiet		run without output except for explicit output (echo / show / check / errors etc)
//speed		skip 3-second delay between datatable iterations (and skip restarting of Chrome)
//test		testing with check step test assertions for CI/CD integration (output XUnit XML file)
//baseline	output execution log and relative-path output files to a separate baseline directory
//input(s)	add your own parameter(s) to be used in your automation flow as variables p1 to p9
//i.e. Command Line: tagui demo chrome apple orange banana
//i.e. Script get inputs: 
//echo "parameter 1 is - " p1
//echo "parameter 2 is - " p2
//echo "parameter 3 is - " p3
)
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
Clipboard=
(  Join`r`n
//note: you can snap element or entire page 
snap page to myscript.png 
)
Gosub Paste_and_Restore_Stored_Clipboard
return

WebScraping_snappage:
Store:=ClipboardAll  ;****Store clipboard ****
Clipboard:="snap page"
Gosub Paste_and_Restore_Stored_Clipboard
return


go_to_url:
Store:=ClipboardAll  ;****Store clipboard ****
Clipboard=
(  Join`r`n
// just enter full url of webpage ('+variable+' for variable)
https://www.webpage.com/ 
)
Gosub Paste_and_Restore_Stored_Clipboard
return

WebScraping_Click:
Store:=ClipboardAll  ;****Store clipboard ****
Clipboard:="click ***element***   //i.e. using variable: click '+element_identifier+' "
Gosub Paste_and_Restore_Stored_Clipboard
return


WebScraping_image:
Store:=ClipboardAll  ;****Store clipboard ****
Clipboard=
(  Join`r`n
//click on specific image file (use Screenshoter tool)
click C:\TagUI\filename.png
)
Gosub Paste_and_Restore_Stored_Clipboard
return



Store:=ClipboardAll  ;****Store clipboard ****
Clipboard:="click C:/myimage.png "
Gosub Paste_and_Restore_Stored_Clipboard
return


WebScraping_Click_Focus:
Store:=ClipboardAll  ;****Store clipboard ****
Clipboard:="hover '***element***' "
Gosub Paste_and_Restore_Stored_Clipboard
return


WebScraping_enter:
Store:=ClipboardAll  ;****Store clipboard ****
Clipboard=
(  Join`r`n
//entering text replicating user actions when typing the text character by character
enter ***element*** as my text 
//entering variable without quotation marks
enter ***element*** as variable
//entering array variable with special marks
enter ***element*** as '+array[1]+'
//To set the value directly of HTML element, you can use dom step:
dom_json = 'long string of text'
dom document.getElementById('uh-search-box').value = dom_json
)
Gosub Paste_and_Restore_Stored_Clipboard
return



WebScraping_csv:
Store:=ClipboardAll  ;****Store clipboard ****
Clipboard=
(  Join`r`n
// write the information received into a csv spreadsheet file
// set file to appropriate location, especially if using Windows
var fs = require('fs'); fs.write("/tmp/contacts.csv", "\""+fullname+"\",\""+username+"\",\""+email+"\",\""+url+"\",\""+country+"\",\""+bio+"\"\n", 'a');
)
Gosub Paste_and_Restore_Stored_Clipboard
return



WebScraping_content:
Store:=ClipboardAll  ;****Store clipboard ****
Clipboard=
(  Join`r`n
//email to check/append
email="pinco@gmail.com";

//path of file to create/use
//this file must exist:
path="/tmp/emails.csv";

load '+path+' to database_emails
echo 'database_emails: '+database_emails

if (database_emails.indexOf(email)>-1)
{
echo 'email already exist in database'
}
else
{
echo 'email added in database'
write email to '+path+'
}
)
Gosub Paste_and_Restore_Stored_Clipboard
return



WebScraping_enterrepo:
Store:=ClipboardAll  ;****Store clipboard ****
Clipboard=
(  Join`r`n
// contents of datatable.csv
// DATA,#1,#2,#3
// GITHUB_ID,ironman,batman,superman
// USER_EMAIL,tony@stark.org,bruce@wayne.org,clarke@kent.org

enter ***element*** as "```GITHUB_ID```"
)
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



;***********Helpful Links*******************
Helpful_Links:
Gui, Helpful:Destroy
Gui, Helpful:Font,Bold cBlack Norm
Gui, Helpful:Add,Text,y+5 ,Tagui Links
Gui, Helpful:Font,CBlue Underline
Gui, Helpful:Add,Text,y+5 GTagui_Github, TagUI GitHub
Gui, Helpful:Add,Text,y+5 GTagui_Tutorial, TagUI Youtube Tutorial
;******************************
Gui, Helpful:Font,Bold cBlack Norm
Gui, Helpful:Add,Text,y+20, Tagui Writer 
Gui, Helpful:Font,CBlue Underline
Gui, Helpful:Add,Text,y+10 GTagui_writer, Tagui Writer

hCurs:=DllCall("LoadCursor","UInt",NULL,"Int",32649,"UInt") ;IDC_HAND
onMessage(0x200, "MsgHandler")

Gui, Helpful:Show,w225 , Helpful links
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


Tagui_Github:
Run, https://github.com/kelaberetiv/TagUI
gosub GuiClose
Return


Tagui_Tutorial:
Run, https://www.youtube.com/watch?v=-1M6yuiF7BQ
gosub GuiClose
Return

Tagui_writer:
Run, https://github.com/adegard/tagui_scripts
gosub GuiClose
Return

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