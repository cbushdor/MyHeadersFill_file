" ------------------------------------------------------
" Created By : sdo
" File Name : MyHeadersFill_file_command_line_overloaded.vim
" Creation Date :2023-03-30 01:35:19
" Last Modified : 2023-04-16 20:29:18
" Email Address : sdo@dorseb.ddns.net
" Version : 0.0.0.24
" License : 
" 	Permission is granted to copy, distribute, and/or modify this document under the terms of the Creative Commons Attribution-NonCommercial 3.0
" 	Unported License, which is available at http://creativecommons.org/licenses/by-nc/3.0/.
" Purpose :
" ------------------------------------------------------

echo "loading MyHeadersFill_file_command_line_overloaded.vim"
if !exists("g:potion_command")
	echo "first"
	let g:potion_command = "potion"
else
	echo "second"
	echo g:potion_command
endif

function! PotionCompileAndRunFile()
    silent !clear
    execute "!" . g:potion_command . " " . bufname("%")
endfunction

"nnoremap <buffer> <localleader>r :call PotionCompileAndRunFile()<cr>
"nnoremap n :call PotionCompileAndRunFile()<cr>
