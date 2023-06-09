" ------------------------------------------------------
" Created By : sdo
" File Name : MyHeadersFill_file_command_line.vim
" Creation Date :2023-03-30 01:35:19
" Last Modified : 2023-04-13 00:15:01
" Email Address : sdo@dorseb.ddns.net
" Version : 
" License : 
" 	Permission is granted to copy, distribute, and/or modify this document under the terms of the Creative Commons Attribution-NonCommercial 3.0
" 	Unported License, which is available at http://creativecommons.org/licenses/by-nc/3.0/.

" 	Permission is granted to copy, distribute, and/or modify this document under the terms of the Creative Commons Attribution-NonCommercial 3.0 
" 	Unported License, which is available at http://creativecommons.org/licenses/by-nc/3.0/.
" Purpose :
" ------------------------------------------------------
function FileHeading()
	let s:line=line(".") " We get the cursor position
	let $w=expand('%:e') " We check extension
	let nu=1 " Num to 1
	if $w=="" " If no extension we work on extension
		let fname=g:path_headers.expand('%:e')."vimrc_header.txt" " We take path to go to vimrc_header.txt
	else
		let fname=g:path_headers.expand('%:e')."_header.txt" " We take path and file extension and _header.txt
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
