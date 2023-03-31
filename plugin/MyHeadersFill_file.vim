" ------------------------------------------------------
" Created By : sdo
" File Name : MyHeadersFill_file.vim
" Creation Date :2023-03-30 01:35:19
" Last Modified : 2023-04-01 01:30:12
" Email Address : sdo@dorseb.ddns.net
" Version : 0.0.0.3
" License:
" 	Permission is granted to copy, distribute, and/or modify this document under the terms of the Creative Commons Attribution-NonCommercial 3.0 
" 	Unported License, which is available at http://creativecommons.org/licenses/by-nc/3.0/.
" Purpose :
" ------------------------------------------------------

let g:path_vimrc = expand('<sfile>:p:h')."/../vimrc/" " path to vimrc that contains files
echo "g:path_vimrc :".g:path_vimrc 
let s:path_headers = expand('<sfile>:p:h')."/../headers/" " path to headers that contains files
echo "s:path_headers :".s:path_headers 
let s:file_extension = matchstr(expand('%'),'_vimrc$') " We check if the file extension is *_vimrc
echo "s:file_extension :".s:file_extension 
if s:file_extension == '_vimrc'
	let s:file_extension = 'vimrc'
elseif expand("%:e") != ""
	let s:file_extension = expand("%:e")
else
	let s:file_extension = expand("%")
endif
let s:listing_headers=globpath(s:path_headers, s:file_extension.'_header.txt')
echo "list headers:" . s:listing_headers
echo "s:file_extension :".s:file_extension
if s:listing_headers != ""
	let s:localFileHeaderVimrc=g:path_vimrc . s:file_extension."_vimrc"
	echo "=====>".s:localFileHeaderVimrc
	let localFileHeaderTmp=substitute(s:localFileHeaderVimrc,"/vimrc/","/headers/","")
	echo "----->".localFileHeaderTmp
	let s:localFileHeader=substitute(localFileHeaderTmp,"_vimrc","_header.txt","")
	echo "xxxxxxx>".localFileHeaderTmp
	let g:path_to_header_file = s:localFileHeader
	echo "g:path_to_header_file :".g:path_to_header_file
	echo "to launch:" .s:localFileHeaderVimrc
	execute "source ". s:localFileHeaderVimrc
else
	echo "file type ".s:file_extension." not supported yet!"
endif

function FileHeading()
	let s:line=line(".") " We get the cursor position
	let $w=expand('%:e') " We check extension
	let nu=1 " Num to 1
	if $w=="" " If no extension we work on extension
		let fname=s:path_headers.expand('%:e')."vimrc_header.txt" " We take path to go to vimrc_header.txt
	else
		let fname=s:path_headers.expand('%:e')."_header.txt" " We take path and file extension and _header.txt
	endif
	echo "Working on file:".fname
	for line in reverse(readfile(fname,''))
		if match(line,"^:insert$") == 0
		elseif match(line,"^ \{0,1}$") == 0
		elseif match(line,"Creation Date :") >=0
			call append(s:line,line . strftime("%F %T",getftime(expand("%:t"))))
		elseif match(line,"------------------------------------------------------") >= 0 
			call append(s:line,line)
		" nu+=1
		elseif match(line,"#`") == 0 
			call append(s:line,line)
		" nu+=1
		elseif match(line,"# -") == 0 
			call append(s:line,line)
		" nu+=1
		elseif match(line,"q##//q#") == 0 
			call append(s:line,line)
		" nu+=1
		elseif match(line,"#;") == 0 
			call append(s:line,line)
		" nu+=1
		elseif match(line,"]") == 0 
			call append(s:line,line)
		" nu+=1
		elseif match(line,"//") == 0 
			call append(s:line,line)
		" nu+=1
		elseif match(line,"*") == 0 
			call append(s:line,line)
		elseif match(line,"\"") == 0 
			call append(s:line,line)
			" nu+=1
		endif
	endfor
	unlet s:line
endfunction

" insert mode type ctrl + h then enter
" header created where the cursor is
" imap <c-h> <Esc>mz:execute FileHeading()<RET>`zjA
imap <c-h> <Esc>mz:execute FileHeading()
