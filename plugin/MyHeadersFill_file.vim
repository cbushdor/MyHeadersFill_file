let g:path_vimrc = expand('<sfile>:p:h')."/../vimrc/"
let s:path_headers = expand('<sfile>:p:h')."/../headers/"
let s:file_extension = matchstr(expand('%'),'_vimrc')
if s:file_extension == '_vimrc'
	let s:file_extension = 'vimrc'
else
	let s:file_extension = expand("%:e")
endif

echo "s:file_extension :".s:file_extension
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
