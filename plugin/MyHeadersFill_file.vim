let g:path_vimrc = expand('<sfile>:p:h')."/../vimrc/"
let s:path_headers = expand('<sfile>:p:h')."/../headers/"
let s:file_extension = expand('%:e')
"let s:resp = system("ls ".g:path_vimrc."\*_vimrc")

echom "g:path_vimrc ==> ". g:path_vimrc . " ------ " . s:file_extension
echom "s:path_headers ==> ". s:path_headers
echom "----------------------------------"
let s:localFileHeaderVimrc=g:path_vimrc.s:file_extension."_vimrc"
echom "LFVIMRC----->". s:localFileHeaderVimrc
let localFileHeaderTmp=substitute(s:localFileHeaderVimrc,"vimrc","headers","")
let s:localFileHeader=substitute(localFileHeaderTmp,"_vimrc","_header.txt","")
echom "LFHEADER----->".s:localFileHeader
let g:path_to_header_file = s:localFileHeader
execute "source ". s:localFileHeaderVimrc
