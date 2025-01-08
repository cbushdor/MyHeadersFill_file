" ------------------------------------------------------
" Created By : sdo
" File Name : MyHeadersFill_file_command_line.vim
" Creation Date :2023-03-30 01:35:19
" Last Modified : 2025-01-08 19:02:30
" Email Address : cbushdor@laposte.net
" Version : 0.0.0.118
" License : 
" 	Permission is granted to copy, distribute, and/or modify this document under the terms of the Creative Commons Attribution-NonCommercial 3.0
" 	Unported License, which is available at http://creativecommons.org/licenses/by-nc/3.0/.
" Purpose :
" ------------------------------------------------------

" Sanitary fence
let vimScript=GetsVarString(GetsFileWithNoExtension(GetsFileNameFromPath(expand("<script>"))))
if !IsVarDefined(vimScript)
    call CreatesGlobalVar(vimScript)
"    echo "1. We know that it is not set in memory"
else
"    echo "1. We know that it is set in memory"
    finish
endif
 
function! FileHeading()
	let s:line=line(".") " We get the cursor position
	let $w=expand('%:e') " We check extension

   " echo "extension ---->".$w."<----"
	let nu=1 " Num to 1
	if $w=="" " If no extension we work on extension
		let fname=g:path_headers.expand('%:e')."vimrc_header.txt" " We take path to go to vimrc_header.txt
	else
		let fname=g:path_headers.expand('%:e')."_header.txt" " We take path and file extension and _header.txt
	endif
	" echo "Working on file:"..fname
   " echo getpos(".")
   " exit 0
	for line in reverse(readfile(fname,''))
      " echo "------->"..line
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
		elseif match(line,"# ") == 0 
			call append(s:line,line)
		" nu+=1
		elseif match(line,"q##//q#") == 0 
			call append(s:line,line)
		" nu+=1
		" elseif match(line,"# ") == 0 
		" 	call append(s:line,line)
		" " nu+=1
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
   " exit 0
	unlet s:line
endfunction

function! SetPosition(at_cursor_position = v:false)
"if exists("a:at_cursor_position")
":    execute(":echo 'exists--->'..a:at_cursor_position")
"endif
   
   if (a:at_cursor_position == v:false)
      normal! mA
    "  :1
      :normal! O
      :execute FileHeading()
      :normal! "\<esc>"
      :normal! dd
      :w
      'A
   elseif (a:at_cursor_position == v:true)
      normal! mA
      :normal! O
      :execute FileHeading()
      :normal! "\<esc>"
      :w
      'A
   endif
endfunction

"function! SetPosition()
"normal! mA
":normal! O
":execute FileHeading()
":normal! "\<esc>"
":w
"'A
"endfunction
let AT_CURSOR_POSITION = v:true 

" insert mode type ctrl + h then enter
" header created first line of file
imap <c-h> <Esc>mz:call SetPosition(!AT_CURSOR_POSITION)<cr><esc>'z

" insert mode type ctrl + c then enter
" header created where the cursor is
imap <c-c> <Esc>mz:call SetPosition(AT_CURSOR_POSITION)<cr><esc>'z

command MyHeadersFillFileAddHeaderTopFile  :call SetPosition()
command MyHeadersFillFileChangeEmail :call MyStartErrorMyHeadersFill_file("1")

function! IncreaseVF1()
	:echo "===> IncreaseVF1()"
endfunction

function! IncreaseVF2()
	:echo "===> IncreaseVF2()"
endfunction

function! IncreaseRF1()
	:echo "===> IncreaseRF1()"
endfunction

function! IncreaseRF2()
	:echo "===> IncreaseRF2()"
endfunction

map <F1> <Nop>
map! <F1> <Nop>

nnoremap <F1><F1> :call IncreaseVF1()<cr>
nnoremap <F1><F2> :call IncreaseVF2()<cr>
nnoremap <F2><F1> :call IncreaseRF1()<cr>
" nnoremap <F3><F2> :call IncreaseRF2()<cr>





