" ------------------------------------------------------
" Created By : sdo
" File Name : MyHeadersFill_file.vim
" Creation Date :2023-03-30 01:35:19
" Last Modified : 2024-01-09 22:47:59
" Email Address : cbushdor@laposte.net
" Version : 0.0.0.50 
" License : 
" 	Permission is granted to copy, distribute, and/or modify this document under the terms of the Creative Commons Attribution-NonCommercial 3.0
" 	Unported License, which is available at http://creativecommons.org/licenses/by-nc/3.0/.
" Purpose :
" 	Add headers according to extensions.
" ------------------------------------------------------


if !exists("g:myEmail")
	echom "Need to set g:myEmail in ~/.vimrc s.a: echo \"let g:myEmail='let g:myEmail='let g:myEmail='my.ema@myaddr.com'\" >> ~/.vimrc"
	exit 0
endif

let g:path_vimrc = expand('<sfile>:p:h')."/../vimrc/" " path to vimrc that contains files
"echo "g:path_vimrc :".g:path_vimrc 
let g:path_headers = expand('<sfile>:p:h')."/../headers/" " path to headers that contains files
"echo "g:path_headers :".g:path_headers 
let g:path_to_licences_file = g:path_headers.."/license.txt"
if expand('%') =~ '_vimrc$'
	let g:file_extension = matchstr(expand('%'),'_vimrc$') " We check if the file extension is *_vimrc
else
	let g:file_extension = matchstr(expand('%'),'_txt$') " We check if the file extension is *_txt
endif

if g:file_extension == '_vimrc'
	let g:file_extension = 'vimrc'
	let g:filter = "*_vimrc"
elseif g:file_extension == '_txt'
	let g:file_extension = 'txt'
	let g:filter = "*_txt"
elseif expand("%:e") != ""
	let g:file_extension = expand("%:e")
	let g:filter = "*."..g:file_extension
else
	let g:file_extension = expand("%")
	let g:filter = "*"..g:file_extension
endif

"echo "oooooooooooooooooooooooooooooo>g:filter : " .. g:filter
"echo "uuuuuuuuuuuuuuuuuuuuuuuuuuu>"..expand("%")

let s:listing_headers=globpath(g:path_headers, g:file_extension.'_header.txt')
"echo "list headers:" . s:listing_headers
"echo "+++++++>g:file_extension :".g:file_extension
if s:listing_headers != ""
	let s:localFileHeaderVimrc=g:path_vimrc . g:file_extension."_vimrc"
	"echo "=====>".s:localFileHeaderVimrc
	let localFileHeaderTmp=substitute(s:localFileHeaderVimrc,"/vimrc/","/headers/","")
	"echo "----->".localFileHeaderTmp
	let s:localFileHeader=substitute(localFileHeaderTmp,"_vimrc","_header.txt","")
	"echo "xxxxxxx>".localFileHeaderTmp
	let g:path_to_header_file = s:localFileHeader
	"echo "g:path_to_header_file :".g:path_to_header_file
	"echo "ooooo> to launch:" .s:localFileHeaderVimrc
	execute "source ".. g:path_vimrc .."/start_header_vimrc"
	"s:localFileHeaderVimrc
else
	echo "file type ".g:file_extension." not supported yet!"
endif

:function! s:printsLicence(first,flicen,fname)
	:	let mylist=[] " Final list that will be returned
	:	let rfil= readfile(a:fname, '', 10) " Read file 
	: call add(mylist,a:first.."License : ") "a:flicen) " Add to final list
	:	for line in rfil 
	:		let lin="\t"..line " We add a tab
	: 	call add(mylist,a:first..lin) " Add to final list
	:	endfor
	:	return mylist " Final list returned
:endfunction

function InsertsHeader()
	:1
	g/License/s/^\(.\{1,2\}\ \)\(License:\)/\= s:printsLicence(submatch(1),submatch(2),g:path_to_licences_file)/
	g/^\n\(.\{1,2\}\ Purpose\)/s/^\n\(.\{1,2\}\ Purpose\)/\= submatch(1)/
endfunction

:function!  s:updatesReleaseNumber(ff,iv)
:let s:vli=a:ff "..a:sf
:let s:ir=a:iv+1
:return s:vli..s:ir
:endfunction

function UpdatesReleaseNumber()
	:1
	g/Version/s/\(Version\ \:\ [0-9]\+.[0-9]\+.[0-9]\+.\)\([0-9]\+\)/\= s:updatesReleaseNumber(submatch(1),submatch(2))/
endfunction

