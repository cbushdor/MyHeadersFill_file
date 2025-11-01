" ------------------------------------------------------
" Created By : sdo
" File Name : MyHeadersFill_file_command_line.vim
" Creation Date :2023-03-30 01:35:19
" Last Modified : 2025-11-02 00:03:00
" Email Address : cbushdor013@laposte.net
" Version : 0.0.0.730
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

:function TestCur(l,str)
: let res=match(a:l,a:str)
": echo "TestCur("..a:l..","..a:str..")=====>"..res
: return res==0
:endfunction

function CheckIfInHeaderField(curpos) " Current position in current File
   :0
   :let l:cp=line('.') " Curson position init
   :silent! /------------------------------------------------------
   :let l:ncp=line('.') " Curson position init after first seach
   :let l:begin=line('.')
   :silent! /------------------------------------------------------
   :let l:end=line('.') " We recort position after second search
   :if l:cp == l:ncp && l:begin==l:end " We check if moved
   ":echohl ErrorMsg
   ":echomsg 'Hello World'
   ":echohl NONE
   ":throw "Hello return aaaaaa"
   :echohl Statement| "HELLO WORLD"|echohl NONE
   :  call StacksMessagesToPrint("Header does not exist?")
   :  return -2 " Nothing happened
   :endif
   :if l:end<l:begin " Must be top down! If so we permute positions
   :   let l:tmp=l:begin
   :   let l:begin=l:end
   :   let l:end=l:tmp
   :endif
   ":echo l:begin.."<="..a:curpos.."&&"..a:curpos.."<="..l:end
   :if a:curpos<=l:end " We wheck if current potition is in or, out !
   :   if l:begin<=a:curpos
   ":      echo "return 0"
   ":      throw 'Hello returns 0'
   :        call StacksMessagesToPrint("Within header or first line(s) reserved!")
   :      return 0
   :   elseif l:begin>a:curpos
   ":      echo "return 0"
   ":      throw 'Hello returns 0'
   :        call StacksMessagesToPrint("Within header or first line(s) reserved!")
   ":     call StacksMessagesToPrint("2 none xill happened")
   :      return 0
   :   else
   ":      echo "return -1"
   ":      throw 'Hello returns -1'
   :     call StacksMessagesToPrint("3 none xill happened")
   :      return -1
   :   endif
   :else
   ":   echo "return 1"
   ":      throw 'Hello returns 1'
   ":  call StacksMessagesToPrint("4 none xill happened")
   :   return 1
   :endif
endfunction

:function MeowPe(li)" Update date field when on it for perl files only (.pl,.pm)
   normal! mA
   :call setline(line('.'),substitute(a:li,'\(I<Last modification:>\).*','\1 '..strftime("%F %T",getftime(expand("%:t"))),"g"))
   :+1
   :d
   'A
:endfunction


:function MeowMan(li) " Update date field when on it for man files only
   normal! mA
   :call setline(line('.'),substitute(a:li,'\(.TH[^\"]\{0,\}\"\)[^\"]\{0,\}\(".*\)','\1'..strftime("%F %T",getftime(expand("%:t")))..'\2',"g"))
   :+1
   :d
   'A
   normal! mA
   :call setline(line('.'),substitute(a:li,'\(.TH[^\"]\{0,\}\"[^\"]\{0,\}\"[^\"]\{0,\}\"\)[^\"]\{0,\}','\1'..GetsNumVers()..'\2',"g"))
   :-1
   :d
   'A
:endfunction

:function StacksMessagesToPrint(mess)
   :if exists("g:errmsg")
   :  let g:errmsg=g:errmsg..a:mess
   :else
   :  let g:errmsg=a:mess
   :endif
:endfunction

:function PrintsMessages()
   :if exists("g:errmsg")
   :  execute "echon 'Message: ' |
               \ echohl ErrorMsg |
               \ echon g:errmsg |
               \ echohl None "
   :else
   :  execute "echo ' ' "
   :endif
:endfunction

function! FileHeading()
   let curLi=getline(line('.')+1)
   let mycurpos=line(".")
   unlet! g:errmsg

"   :try
"   : throw "Hello"
   :let l:res=CheckIfInHeaderField(line("."))
"   :catch /Hello/
"   :   echomsg "errrooooor"
"   :   return
"   :finally
"   :   echo 'I am done trying'
"   :   return
"   :endtry
   ":echo "------->"..res.."<====>"..mycurpos.."(++++)"
   :if l:res == 0
   ":echo "nothing to do"
   :else
      ":echo "vvvvvv======>"..curLi
      if TestCur(curLi,'I<Last modification:>')
         ":echo "*****>"..curLi
         :call MeowPe(curLi) " When on line update line
      elseif TestCur(curLi,'.TH')
         ":echo "xxxxxx>"..curLi
         :call MeowMan(curLi) " When on line update line (.TH)
      else
         let s:line=mycurpos " line(".") " We get the cursor position
         "let l:pos=line(".") " We get the cursor position
         let $w=expand('%:e') " We check extension

         ":echo "extension ---->"..$w.."<---->>>>"..mycurpos.."<<<<"
         let nu=1 " Num to 1
         "let fname='azeazea'

         if $w=="" " If no extension we work on extension
            let fname=g:path_headers.expand('%:e')."vimrc_header.txt" " We take path to go to vimrc_header.txt
         else
            "let l:pos=line(".") " We get the cursor position
            if $w=="pm" || $w=="pl"  " file extension for perl s.a .pl or .pm
               " echo "GREETINGS in ["..bufname("%")..":"..pos.."] at ext "..$w
               if mycurpos==1
                  " echo "first line "..$w.." at pos "..pos
                  let fname=g:path_headers.expand('%:e')."_header.txt" " We take path and file extension and _header.txt
               else
                  " echo "not first line "..$w.." at pos "..mycurpos
                  let fname=g:path_headers.expand('%:e')."_doc_header.txt" " We take path and file extension and _header.txt
               endif
            elseif match($w,"^[1-8]$") == 0 || match($w,"^nro$") == 0  " We check file extension if man s.a .[1-7] or nro (for nroff or n run off)
               ":let l:pos=line(".") " We get the cursor position
               ":echo "---------WE RECALCULATED CURSOR POSITON:"..mycurpos
               ":echo getcurpos('.')
               if mycurpos==1
                  "echo "first line "..$w.." at pos "..mycurpos
                  let fname=g:path_headers.expand('%:e')."_header.txt" " We take path and file extension and _header.txt
               else
                  "echo "xxxx not first line "..$w.." at pos "..mycurpos
                  let fname=g:path_headers.expand('%:e')."_doc_header.txt" " We take path and file extension and _header.txt
               endif
            else
               " echo "if "..$w.."==\"pm\" || "..$w.."==\"pl\"" 
               let fname=g:path_headers.expand('%:e')."_header.txt" " We take path and file extension and _header.txt
            endif
         endif
          " echo "Working on file:"..fname.." file extension:"..$w
          " echo getpos(".")
          "exit 0
         let is_doc=0
         let lroff='^.\\' " For roff troff groff
         for line in reverse(readfile(fname,''))
            " echo "append to line #"..s:line.."-------> this string:"..line
            if is_doc==0
               if match(line,"^:insert$") == 0
               elseif match(line,"^=") >= 0 && is_doc==0
                  let is_doc=1
                  :echo "we found doc"
                  "call append(s:line,line)
               elseif match(line,"^ \{0,1}$") == 0
               elseif match(line,"^.$") == 0
               elseif match(line,"Creation Date :") >=0
                  call append(s:line,line . strftime("%F %T",getftime(expand("%:t")))) " append to current s:line (line number) the text line
               elseif match(line,"------------------------------------------------------") >= 0 
                  call append(s:line,line)
               elseif match(line,lroff) >= 0   " For roff troff groff
                  call append(s:line,line)
               elseif match(line,"^\.[^\.]") >= 0 && mycurpos != 1  " For roff troff groff
                  call append(s:line,line)
               " nu+=1
               elseif match(line,"^#!") == 0  " Check if we have shebang
                  " Check if interpretor can be included according position
                  if mycurpos==1
                     call append(s:line,"") " Empty line
                     call append(s:line,line) " line with shebang included if and only,
                                              " if cursor is at position first line
                                              " in file
                     "call append(s:line," ") " Empty line
                  endif
               elseif match(line,"#`") == 0 
                  call append(s:line,line)
               " nu+=1
               elseif match(line,"# ") == 0 
                  call append(s:line,line)
               " nu+=1
               elseif match(line,"% ") == 0 
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
            endif
            if is_doc==1
               if match(line,"^:insert$") == 0
               elseif match(line,"I<Created on:>") >= 0
                  call append(s:line,line ." ". strftime("%F %T",getftime(expand("%:t")))) " append to current s:line (line number) the text line
               elseif match(line,"I<Last modification:>") >= 0
                  call append(s:line,line ." ". strftime("%F %T",getftime(expand("%:t")))) " append to current s:line (line number) the text line
               else
                  call append(s:line,line)
               endif
            endif
         endfor
         " exit 0
         "echo "---->"..s:line.."<----"
         if mycurpos==1
            :1
            :d
         endif
         unlet s:line
      endif
   endif
"   :catch /Hello/
"   :   echo "errrooooor"
"   :   return
"   :finally
"   :   echo 'I am done trying'
"   :   return
"   :endtry
endfunction

function! SetPosition(at_cursor_position = v:false)
   :if  filereadable(expand('%')) " We check if file exist
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
         ":normal! O
         :execute FileHeading()
         :normal! "\<esc>"
         :w
         'A
      endif
   :else " We know that file doesn't exist
      " We print a message error
      :echohl Statement | echon "File [" | 
               \ echohl Identifier |
               \ echon expand('%') |
               \ echohl Statement |
               \ echon "] does not exists! Save it first with "|
               \ echohl Todo |echon ":w<ret>" |
               \ echohl Statement |
               \ echon " to do that!"|
               \ echohl None
   :endif
endfunction

"function! SetPosition()
"normal! mA
":normal! O
":execute FileHeading()
":normal! "\<esc>"
":w
"'A
"endfunction
"try
let AT_CURSOR_POSITION = v:true 

" insert mode type ctrl + h then enter
" header created first line of file
"imap <c-h> <Esc>mz:call SetPosition(AT_CURSOR_POSITION)<cr><esc>'z

" insert mode type ctrl + c then enter
" header created where the cursor is
imap <c-c> <Esc>mz:call SetPosition(AT_CURSOR_POSITION)<cr><esc>'z:call PrintsMessages()<cr>

"command MyHeadersFillFileAddHeaderTopFile  :call SetPosition()
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
"catch /Hello return/
"   echoerr "errrooooor"
""   return
"finally
"   echo 'I am done trying'
""   return
"endtry
