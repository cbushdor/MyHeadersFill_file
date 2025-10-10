<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="Generator" content="Vim/9.1">
<meta name="plugin-version" content="vim9.0_v2">
<meta name="syntax" content="none">
<meta name="settings" content="use_css,no_foldcolumn,expand_tabs,pre_wrap,prevent_copy=,use_input_for_pc=none">
<meta name="colorscheme" content="none">
<!--
<style>
pre { white-space: pre-wrap; font-family: monospace; color: #ffffff; background-color: #000000; }
body { font-family: monospace; color: #ffffff; background-color: #000000; }
* { font-size: 1em; }
a { color: inherit; }
a:link { color: white; background-color: transparent; text-decoration: none;}
a:visited { color: white; background-color: transparent; text-decoration: none; }
a:hover { color: white; background-color: transparent; text-decoration: none; } 
a:active { color: white; background-color: transparent; text-decoration: underline; }
</style>-->
</head>
<body>
<pre id='vimCodeElement'>
*<a id="README.md" href="">MyHeadersFill_file.txt</a>* Integrates headers in files accord to extensions
==============================================================================
Changelog                                       *<a id="MyHeadersFill_file_Changelog" href="">MyHeadersFill_file_Changelog</a>*
<!--&gt;a:link { color: white; background-color: transparent; text-decoration: none;}
a:visited { color: white; background-color: transparent; text-decoration: none; }
a:hover { color: white; background-color: transparent; text-decoration: none; } 
a:active { color: white; background-color: transparent; text-decoration: underline; }
-->
          Created By : sdo
          File Name : README.md
          Creation Date : 2024-01-30 00:20:50
          Last Modified : 2025-10-10 03:23:45
          Email Address : cbushdor013@laposte.net
          Version : 0.0.0.347
<!--&lt;a:link { color: white; background-color: transparent; text-decoration: none;}
a:visited { color: white; background-color: transparent; text-decoration: none; }
a:hover { color: white; background-color: transparent; text-decoration: none; } 
a:active { color: white; background-color: transparent; text-decoration: underline; }
-->
==============================================================================
CONTENTS                                                  *<a id="MyHeadersFill_file" href="">MyHeadersFill_file</a>*
  * Introduction........................... |<a href="#MyHeadersFill_file_Introduction">MyHeadersFill_file_Introduction</a>|
  * How to Install Plugin..................      |<a href="#MyHeadersFill_file_Install">MyHeadersFill_file_Install</a>|
  * Mapping................................      |<a href="#MyHeadersFill_file_Mapping">MyHeadersFill_file_Mapping</a>|
  * Caveats................................      |<a href="#MyHeadersFill_file_Caveats">MyHeadersFill_file_Caveats</a>|
  * Contributing........................... |<a href="#MyHeadersFill_file_Contributing">MyHeadersFill_file_Contributing</a>|
  * Changelog..............................    |<a href="#MyHeadersFill_file_Changelog">MyHeadersFill_file_Changelog</a>|
  * License................................      |<a href="#MyHeadersFill_file_License">MyHeadersFill_file_License</a>|
  * Credits................................      |<a href="#MyHeadersFill_file_Credits">MyHeadersFill_file_Credits</a>|
==============================================================================
Introduction                                 *<a id="MyHeadersFill_file_Introduction" href="">MyHeadersFill_file_Introduction</a>*
Set <strong>man</strong> with the following command (if you shell is zsh):
Go to your terminal and copy and past the two following lines (% is prompt):
<!--&gt;vima:link { color: white; background-color: transparent; text-decoration: none;}
a:visited { color: white; background-color: transparent; text-decoration: none; }
a:hover { color: white; background-color: transparent; text-decoration: none; } 
a:active { color: white; background-color: transparent; text-decoration: underline; }
-->
%echo 'export MANPATH="$HOME/.vim/plugged/MyHeadersFill_file/man:$MANPATH";'\
   &gt;&gt;~/.myzshrc ; source ~/.myzshrc
%man MyHeadersFill_file_README
<!--&lt;a:link { color: white; background-color: transparent; text-decoration: none;}
a:visited { color: white; background-color: transparent; text-decoration: none; }
a:hover { color: white; background-color: transparent; text-decoration: none; } 
a:active { color: white; background-color: transparent; text-decoration: underline; }
-->
When a file is created with a specific extension (see list below under
construction) this plugin creates an appropriate header. In ˜/.vimrc the
<strong>:set nu</strong> option is defined (to remove <strong>:set nonu</strong>) to show line number.
<!--&gt;vima:link { color: white; background-color: transparent; text-decoration: none;}
a:visited { color: white; background-color: transparent; text-decoration: none; }
a:hover { color: white; background-color: transparent; text-decoration: none; } 
a:active { color: white; background-color: transparent; text-decoration: underline; }
-->
    1 " ------------------------------------------------------
    2 " Created By :
    3 " File Name :
    4 " Creation Date : 2024-01-29 09:35:31
    5 " Last Modified :
    6 " Email Address :
    7 " Version :      0.0.0.0
    8 " License:
    9 " Purpose :
   10 " ------------------------------------------------------
<!--&lt;a:link { color: white; background-color: transparent; text-decoration: none;}
a:visited { color: white; background-color: transparent; text-decoration: none; }
a:hover { color: white; background-color: transparent; text-decoration: none; } 
a:active { color: white; background-color: transparent; text-decoration: underline; }
-->
After saving <strong>:w</strong>&lt;ret&gt; you should have:
<!--&gt;vima:link { color: white; background-color: transparent; text-decoration: none;}
a:visited { color: white; background-color: transparent; text-decoration: none; }
a:hover { color: white; background-color: transparent; text-decoration: none; } 
a:active { color: white; background-color: transparent; text-decoration: underline; }
-->
     1 " ------------------------------------------------------
     2 " Created By : foo
     3 " File Name : file.txt
     4 " Creation Date : 2024-01-29 09:35:31
     5 " Last Modified : 2024-01-29 09:36:14
     6 " Email Address : my.email@my_email.net
     7 " Version :  0.0.0.1
     8 " Licence :
     9 " ...  Attribution-NonCommercial 3.0 ...
    10 " ...  <a href="http://creativecommons.org/licenses/by-nc/3.0/">http://creativecommons.org/licenses/by-nc/3.0/</a> ...
    11 " Purpose :
    12 " ------------------------------------------------------
<!--&lt;a:link { color: white; background-color: transparent; text-decoration: none;}
a:visited { color: white; background-color: transparent; text-decoration: none; }
a:hover { color: white; background-color: transparent; text-decoration: none; } 
a:active { color: white; background-color: transparent; text-decoration: underline; }
-->
==============================================================================
How to Install Plugin                             *<a id="MyHeadersFill_file_Install" href="">MyHeadersFill_file_Install</a>*
Technical requirements
    * Vim (text editor): Version 9.0.1050.
    * System macOS: Version 13.2.1 (22D68).
    * System Fedora: Version 38beta (Should work on other linux distros too).
    * Scripts: Markdown, Vim Script, shell sh.
    * Vim plugin: Vim-plug.
Note
Should be alright, as long as Vim Script is supported by the editor
(since version 8.0).
You can use both ways to enlight text or have basic text like this:
         Text enlighted        Basic text
         <strong>:syntax on</strong>            <strong>:syntax off</strong>
         <strong>:set filetype=help</strong>    <strong>:set filetype=text</strong>
         <strong>:syntax enable</strong>
Notation use
  &lt;C-key&gt;: Combination of Control key + another key.
How to start
  We admit that Vim-plugin is already installed. If not so, go to
  <a href="https://github.com/junegunn/vim-plug">https://github.com/junegunn/vim-plug</a> and follow instructions.
  We configure ~/.vimrc below (~ means home directory same story for
  the environment variable ${HOME}):
<!--&gt;vima:link { color: white; background-color: transparent; text-decoration: none;}
a:visited { color: white; background-color: transparent; text-decoration: none; }
a:hover { color: white; background-color: transparent; text-decoration: none; } 
a:active { color: white; background-color: transparent; text-decoration: underline; }
-->
     call plug#begin('~/.vim/plugged')
     Plug 'cbushdor/MyHeadersFill_file'
     call plug#end()
<!--&lt;a:link { color: white; background-color: transparent; text-decoration: none;}
a:visited { color: white; background-color: transparent; text-decoration: none; }
a:hover { color: white; background-color: transparent; text-decoration: none; } 
a:active { color: white; background-color: transparent; text-decoration: underline; }
-->
  and plugin will be installed in ~/.vim/plugged if everything is well
  configured. Then type <strong>:wq</strong> to save and, <strong>:source ~/.vimrc</strong> to relaunch.
  Then, type <strong>:PlugInstall</strong> and, look if plugin is installing itself.
  If, plugin already installed hence <strong>:PlugUpdate</strong>.
  It shoulb be in ${HOME}/.vim/plugged/MyHeadersFill_file/. Later on,
  we will refer to this path as &lt;my_home_plugin&gt;.
  A prompt might ask not to forget to set in ˜/.vimrc the variable email:
<!--&gt;vima:link { color: white; background-color: transparent; text-decoration: none;}
a:visited { color: white; background-color: transparent; text-decoration: none; }
a:hover { color: white; background-color: transparent; text-decoration: none; } 
a:active { color: white; background-color: transparent; text-decoration: underline; }
-->
     let g:myEmail='my.email@my_email.net'
<!--&lt;a:link { color: white; background-color: transparent; text-decoration: none;}
a:visited { color: white; background-color: transparent; text-decoration: none; }
a:hover { color: white; background-color: transparent; text-decoration: none; } 
a:active { color: white; background-color: transparent; text-decoration: underline; }
-->
  WATCHOUT OUT! After installing the plugin, when you open a file for
  the first time (after plugin installed succesfully), a prompt may
  ask to set an email and, may set it in the file ~/.vimrc
  for you. Sometime we have $MYVIMRC that contains the path.
  Check:
               <strong>:!echo $MYVIMRC</strong>
  This can be changed with the command <strong>:MyHeadersFillFileChangeEmail</strong>.
  Just follow prompt instructions!
  The final test is to create a text file in a specific directory s.a
  ˜/Downloads:
<!--&gt;a:link { color: white; background-color: transparent; text-decoration: none;}
a:visited { color: white; background-color: transparent; text-decoration: none; }
a:hover { color: white; background-color: transparent; text-decoration: none; } 
a:active { color: white; background-color: transparent; text-decoration: underline; }
-->
      % cd ˜/Downloads
      % vim file.txt
<!--&lt;a:link { color: white; background-color: transparent; text-decoration: none;}
a:visited { color: white; background-color: transparent; text-decoration: none; }
a:hover { color: white; background-color: transparent; text-decoration: none; } 
a:active { color: white; background-color: transparent; text-decoration: underline; }
-->
   you should have the following (if <strong>:set nu</strong> is set):
<!--&gt;vima:link { color: white; background-color: transparent; text-decoration: none;}
a:visited { color: white; background-color: transparent; text-decoration: none; }
a:hover { color: white; background-color: transparent; text-decoration: none; } 
a:active { color: white; background-color: transparent; text-decoration: underline; }
-->
    1 " ------------------------------------------------------
    2 " Created By :
    3 " File Name :
    4 " Creation Date : 2024-01-29 09:35:31
    5 " Last Modified :
    6 " Email Address :
    7 " Version :      0.0.0.0
    8 " License:
    9 " Purpose :
   10 " ------------------------------------------------------
<!--&lt;a:link { color: white; background-color: transparent; text-decoration: none;}
a:visited { color: white; background-color: transparent; text-decoration: none; }
a:hover { color: white; background-color: transparent; text-decoration: none; } 
a:active { color: white; background-color: transparent; text-decoration: underline; }
-->
  After saving <strong>:w</strong>&lt;ret&gt; you should have something similar!
<!--&gt;vima:link { color: white; background-color: transparent; text-decoration: none;}
a:visited { color: white; background-color: transparent; text-decoration: none; }
a:hover { color: white; background-color: transparent; text-decoration: none; } 
a:active { color: white; background-color: transparent; text-decoration: underline; }
-->
    1 " ------------------------------------------------------
    2 " Created By : foo
    3 " File Name : file.txt
    4 " Creation Date : 2024-01-29 09:35:31
    5 " Last Modified : 2024-01-29 09:36:14
    6 " Email Address : my.email@my_email.net
    7 " Version :  0.0.0.1
    8 " Licence :
    9 " ...  Attribution-NonCommercial 3.0 ...
   10 " ...  <a href="http://creativecommons.org/licenses/by-nc/3.0/">http://creativecommons.org/licenses/by-nc/3.0/</a> ...
   11 " Purpose :
   12 " ------------------------------------------------------
<!--&lt;a:link { color: white; background-color: transparent; text-decoration: none;}
a:visited { color: white; background-color: transparent; text-decoration: none; }
a:hover { color: white; background-color: transparent; text-decoration: none; } 
a:active { color: white; background-color: transparent; text-decoration: underline; }
-->
MEANINGS OF FIELDS
The header is created if file is new and, file type extension supported.
If file already exists, but doesn't have any header, you can create one.
Follow this:
   - Go to first line by typing <strong>:1</strong> and then type <strong>i</strong> to be in
     insert mode. This method should work wherever your cursor is
     but, shebang line won't show up!
   - Type &lt;C-c&gt; (Control-c) a header will show up at first line
     in the current file with shebang according to file extension.
     It will be saved after <strong>:w</strong>&lt;ret&gt;.
   - According to some file type instead of header a script to
     document file will show up as. These files are stored in
     &lt;my_home_plugin&gt;/headers/&lt;file_extenstion&gt;_doc_header.txt.
     List of headers look for
     &lt;my_home_plugin&gt;/headers/&lt;file_extenstion&gt;_header.txt.
<!--&gt;a:link { color: white; background-color: transparent; text-decoration: none;}
a:visited { color: white; background-color: transparent; text-decoration: none; }
a:hover { color: white; background-color: transparent; text-decoration: none; } 
a:active { color: white; background-color: transparent; text-decoration: underline; }
-->
!Field name    !Use                            !Update time
---------------!-------------------------------!------------------------------
!Created By    !User name.                     !At file creation.
!File Name     !File name.                     !At file creation. Cannot be
!              !                               !changed except, if file name
!              !                               !itself is changed. Updated
!              !                               !automatically.
!--------------!-------------------------------!------------------------------
!reation Date  !Date when file is created.     !At file creation.
!--------------!-------------------------------!------------------------------
!ast Modified  !Date when file is Modified.    !Updated when file is saved.
!--------------!-------------------------------!------------------------------
!mail Address  !Email of the user.             !Can be changed within read
!              !                               ! !MyHeadersFill_file_Install!.
!--------------!-------------------------------!------------------------------
!Version       !This is the version number.    !Only last field incremented
!              !                               !when file is saved.
!--------------!-------------------------------!------------------------------
!License       !Your choice.                   !Can be changed anytime!
!--------------!-------------------------------!------------------------------
!Purpose       !Why this file was created.     !Can be changed anytime!
<!--&lt;a:link { color: white; background-color: transparent; text-decoration: none;}
a:visited { color: white; background-color: transparent; text-decoration: none; }
a:hover { color: white; background-color: transparent; text-decoration: none; } 
a:active { color: white; background-color: transparent; text-decoration: underline; }
-->
==============================================================================
Mapping                                           *<a id="MyHeadersFill_file_Mapping" href="">MyHeadersFill_file_Mapping</a>*
Follow these steps if you are in normal mode:
      - MyHeadersFillFileAddHeaderTopFile
      - MyHeadersFillFileChangeEmail
Follow these steps if you are in insert mode:
      - Type &lt;C-h&gt; (Control-h) a header will be created
        at first line of the file acording to file
        extension.
      - Type &lt;C-c&gt; (Control-c) a header will be created
        where the cursor is in in the file. According to
        file extension (if it is supported) the header will
        contains shebang.
        If file with extension already exists, but that
        does not have header and, if cursor is at first
        line in file, header will be added with proper
        shebang.
      - Type &lt;C-c&gt; on the line while in insert mode
           145 I&lt;Last modification:&gt; 2025-09-10 20:35:37
        and fild will be updated like this:
           145 I&lt;Last modification:&gt; 2025-09-10 20:36:23
      - Type &lt;C-c&gt; (Control-c) a header will be created
        where the cursor is in in the file. In that case, if
        file as an extension, might add documenttion tag.
      - Header and documentation can be found in:
        ${HOME}/.vim/plugged/MyHeadersFill_file/headers
        &lt;script_name&gt;_header.txt: holds header
        &lt;script_name&gt;_doc_header.txt: holds documentation
==============================================================================
LICENSE                                           *<a id="MyHeadersFill_file_License" href="">MyHeadersFill_file_License</a>*
Attribution-NonCommercial 3.0 Unported (CC BY-NC 3.0)
Permission is granted to copy, distribute, and/or modify this document under
the terms of the Creative Commons Attribution-NonCommercial 3.0 Unported
License, which is available at <a href="http://creativecommons.org/licenses/by-nc/3.0/">http://creativecommons.org/licenses/by-nc/3.0/</a>.
==============================================================================
Caveats                                           *<a id="MyHeadersFill_file_Caveats" href="">MyHeadersFill_file_Caveats</a>*
- If a file is closed with :x command, fields are not updated properly.
- If header does not exist in the file, when file is saved we have error
messages that are printed.
==============================================================================
Contributing                                 *<a id="MyHeadersFill_file_Contributing" href="">MyHeadersFill_file_Contributing</a>*
- GitHub:  <a href="https://github.com/cbushdor/MyHeadersFill_file">https://github.com/cbushdor/MyHeadersFill_file</a>
- Vim&#0058; <a href="https://www.vim.org/">https://www.vim.org/</a>
- System macOS: Version 13.2.1 (22D68).
- System Fedora: Version 38beta (Should work on other linux distros too).
==============================================================================
Credits                                           *<a id="MyHeadersFill_file_Credits" href="">MyHeadersFill_file_Credits</a>*
Based on "Vi and Vim Autocommand: 3 Steps to Add Custom Header To Your File
Automatically".
vim&#0058;tw=78:ts=15:ft=help:norl:
</pre>
</body>
</html>
<!-- vim: set foldmethod=manual : a:link { color: white; background-color: transparent; text-decoration: none;}
a:visited { color: white; background-color: transparent; text-decoration: none; }
a:hover { color: white; background-color: transparent; text-decoration: none; } 
a:active { color: white; background-color: transparent; text-decoration: underline; }
-->
