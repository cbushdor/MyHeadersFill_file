let g:path_vimrc = expand('<sfile>:p:h')."/../vimrc/"
let s:path_headers = expand('<sfile>:p:h')."/../headers/"
let s:file_extension = expand('%:e')
let s:localFileHeaderVimrc=g:path_vimrc.s:file_extension."_vimrc"
let localFileHeaderTmp=substitute(s:localFileHeaderVimrc,"vimrc","headers","")
let s:localFileHeader=substitute(localFileHeaderTmp,"_vimrc","_header.txt","")
let g:path_to_header_file = s:localFileHeader
execute "source ". s:localFileHeaderVimrc

function FileHeading()
	let s:line=line(".")
	let $w=expand('%:e')
	let nu=1
	"let fname="/Users/sdo/.vim/headers/".expand('%:e')."_header.txt"
	let fname=s:path_headers.expand('%:e')."_header.txt"
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
			" nu+=1
		endif
	endfor
	unlet s:line
endfunction

" insert mode type ctrl + h then enter
" header created where the cursor is
" imap <c-h> <Esc>mz:execute FileHeading()<RET>`zjA
imap <c-h> <Esc>mz:execute FileHeading()
