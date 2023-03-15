let g:path_vimrc = expand('<sfile>:p:h')."/../vimrc/"
let s:path_headers = expand('<sfile>:p:h')."/../headers/"
let s:file_extension = expand('%:e')
let s:localFileHeaderVimrc=g:path_vimrc.s:file_extension."_vimrc"
let localFileHeaderTmp=substitute(s:localFileHeaderVimrc,"vimrc","headers","")
let s:localFileHeader=substitute(localFileHeaderTmp,"_vimrc","_header.txt","")
let g:path_to_header_file = s:localFileHeader
execute "source ". s:localFileHeaderVimrc
