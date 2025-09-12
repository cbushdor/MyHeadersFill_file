<!-- ------------------------------------------------------
* Created By : sdo
* File Name : README.md
* Creation Date : 2023-03-15 00:19:36
* Last Modified : 2025-09-13 01:30:12
* Email Address : cbushdor013@laposte.net
* Version : 0.0.0.166
* License :
*   Permission is granted to copy, distribute, and/or modify this document under the terms of the Creative Commons Attribution-NonCommercial 3.0
*   Unported License, which is available at http://creativecommons.org/licenses/by-nc/3.0/.
* Purpose :
*   It is README.md that introduce in brief how to use plugin!
------------------------------------------------------ -->
 ~/.vim/plugged/MyHeadersFill\_file/doc/MyHeadersFill\_file.txt.html      <!-- pre { white-space: pre-wrap; font-family: monospace; color: #ffffff; background-color: #000000; } body { font-family: monospace; color: #ffffff; background-color: #000000; } \* { font-size: 1em; } a { color: inherit; } .Comment { color: #00ffff; } .Constant { color: #ff40ff; } .Special { color: #ffd7d7; } .Identifier { color: #00ffff; font-weight: bold; } .Statement { color: #ffff00; } .PreProc { color: #5fd7ff; } .Todo { color: #000000; background-color: #ffff00; padding-bottom: 1px; } -->

MyHeadersFill\_file.txt Integrates headers in files accord to extensions

\==============================================================================
Changelog                                         MyHeadersFill\_file\_Changelog

          Created By : sdo
          File Name : MyHeadersFill\_file.txt
          Creation Date : 2024-01-30 00:20:50
          Last Modified : 2025-09-13 00:36:52
          Email Address : sebastien.dorey013@laposte.net
          Version : 0.0.0.248

\==============================================================================
CONTENTS                                                    MyHeadersFill\_file

  \* Introduction............. MyHeadersFill\_file\_Introduction
  \* How to Install Plugin.... MyHeadersFill\_file\_Install
  \* Mapping.................. MyHeadersFill\_file\_Mapping
  \* Caveats.................. MyHeadersFill\_file\_Caveats
  \* Contributing............. MyHeadersFill\_file\_Contributing
  \* Changelog................ MyHeadersFill\_file\_Changelog
  \* License.................. MyHeadersFill\_file\_License
  \* Credits.................. MyHeadersFill\_file\_Credits

\==============================================================================
Introduction                                   MyHeadersFill\_file\_Introduction

When a file is created with a specific extension (see list below under
construction) this plugin creates an appropriate header. In ˜/.vimrc the
:set nu option is defined (to remove :set nonu) to show line number.

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

After saving :w<ret> you should have:

     1 " ------------------------------------------------------
     2 " Created By : foo
     3 " File Name : file.txt
     4 " Creation Date : 2024-01-29 09:35:31
     5 " Last Modified : 2024-01-29 09:36:14
     6 " Email Address : my.email@my\_email.net
     7 " Version :  0.0.0.1
     8 " Licence :
     9 " ...  Attribution-NonCommercial 3.0 ...
    10 " ...  [http://creativecommons.org/licenses/by-nc/3.0/](http://creativecommons.org/licenses/by-nc/3.0/) ...
    11 " Purpose :
    12 " ------------------------------------------------------

\==============================================================================
How to Install Plugin                               MyHeadersFill\_file\_Install

Technical requirements
    \* Vim (text editor): Version 9.0.1050.
    \* System macOS: Version 13.2.1 (22D68).
    \* System Fedora: Version 38beta (Should work on other linux distros too).
    \* Scripts: Markdown, Vim Script, shell sh.
    \* Vim plugin: Vim-plug.

    Note
      Should be all right, as long as Vim Script is supported by the editor
      (since version 8.0).
      You can use both ways to enlight text or have basic text like this:

         Text enlighted        Basic text
         :syntax on            :syntax off
         :set filetype=help    :set filetype=text
         :syntax enable

Notation use
  <C-key>: Combination of Control key + another key.

How to start
  We admit that Vim-plugin is already installed. If not so, go to
  [https://github.com/junegunn/vim-plug](https://github.com/junegunn/vim-plug) and follow instructions.

  We configure ~/.vimrc below (~ means home directory same story for
  the environment variable ${HOME}):

     call plug#begin('~/.vim/plugged')
     Plug 'cbushdor/MyHeadersFill\_file'
     call plug#end()

  and plugin will be installed in ~/.vim/plugged if everything is well
  configured. Then type :wq to save and, :source ~/.vimrc to relaunch.
  Then, type :PlugInstall and, look if plugin is installing itself.
  If, plugin already installed hence :PlugUpdate.
  It shoulb be in ${HOME}/.vim/plugged/MyHeadersFill\_file/. Later on,
  we will refer to this path as <my\_home\_plugin>.
  A prompt might ask not to forget to set in ˜/.vimrc the variable email:

     let g:myEmail\='my.email@my\_email.net'

  WATCHOUT OUT! After installing the plugin, when you open a file for
  the first time (after plugin installed succesfully), a prompt may
  ask to set an email and, may set it in the file ~/.vimrc
  for you. Sometime we have $MYVIMRC that contains the path.
  Check:
               :!echo $MYVIMRC

  This can be changed with the command :MyHeadersFillFileChangeEmail.
  Just follow prompt instructions!

  The final test is to create a text file in a specific directory s.a
  ˜/Downloads:

      % cd ˜/Downloads
      % vim file.txt

   you should have the following (if :set nu is set):

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

  After saving :w<ret> you should have something similar!

    1 " ------------------------------------------------------
    2 " Created By : foo
    3 " File Name : file.txt
    4 " Creation Date : 2024-01-29 09:35:31
    5 " Last Modified : 2024-01-29 09:36:14
    6 " Email Address : my.email@my\_email.net
    7 " Version :  0.0.0.1
    8 " Licence :
    9 " ...  Attribution-NonCommercial 3.0 ...
   10 " ...  [http://creativecommons.org/licenses/by-nc/3.0/](http://creativecommons.org/licenses/by-nc/3.0/) ...
   11 " Purpose :
   12 " ------------------------------------------------------

MEANINGS OF FIELDS

The header is created if file is new and, file type extension supported.
If file already exists, but doesn't have any header, you can create one.
Follow this:
      - Go to first line by typing :1 and then type i to be in
        insert mode. This method should work wherever your cursor is
        but, shebang line won't show up!
      - Type <C-c> (Control-c) a header will show up at first line
        in the current file with shebang according to file extension.
        It will be saved after :w<ret>.
      - According to some file type instead of header a script to
        document file will show up as. These files are stored in
        <my\_home\_plugin>/headers/<file\_extenstion>\_doc\_header.txt.
        List of headers look for
        <my\_home\_plugin>/headers/<file\_extenstion>\_header.txt.

Field name     |Use                            |Update time
\===============|===============================|==============================
Created By     |User name.                     |At file creation.
File Name      |File name.                     |At file creation. Cannot be
               |                               |changed except, if file name
               |                               |itself is changed. Updated
               |                               |automatically.
\---------------|-------------------------------|------------------------------
Creation Date  |Date when file is created.     |At file creation.
\---------------|-------------------------------|------------------------------
Last Modified  |Date when file is Modified.    |Updated when file is saved.
\---------------|-------------------------------|------------------------------
Email Address  |Email of the user.             |Can be changed within read
               |                               | MyHeadersFill\_file\_Install.
\---------------|-------------------------------|------------------------------
Version        |This is the version number.    |Only last field incremented
               |                               |when file is saved.
\---------------|-------------------------------|------------------------------
License        |Your choice.                   |Can be changed anytime!
\---------------|-------------------------------|------------------------------
Purpose        |Why this file was created.     |Can be changed anytime!

\==============================================================================
Mapping                                             MyHeadersFill\_file\_Mapping

Follow these steps if you are in normal mode:

      - MyHeadersFillFileAddHeaderTopFile
      - MyHeadersFillFileChangeEmail

Follow these steps if you are in insert mode:

      - Type <C-h> (Control-h) a header will be created
        at first line of the file acording to file
        extension.

      - Type <C-c> (Control-c) a header will be created
        where the cursor is in in the file. According to
        file extension (if it is supported) the header will
        contains shebang.
        If file with extension already exists, but that
        does not have header and, if cursor is at first
        line in file, header will be added with proper
        shebang.

      - Type <C-c> on the line while in insert mode
           145 I<Last modification:> 2025-09-10 20:35:37

        and fild will be updated like this:
           145 I<Last modification:> 2025-09-10 20:36:23


      - Type <C-c> (Control-c) a header will be created
        where the cursor is in in the file. In that case, if
        file as an extension, might add documenttion tag.
      - Header and documentation can be found in:
        ${HOME}/.vim/plugged/MyHeadersFill\_file/headers
        <script\_name>\_header.txt: holds header
        <script\_name>\_doc\_header.txt: holds documentation

\==============================================================================
LICENSE                                             MyHeadersFill\_file\_License

Attribution-NonCommercial 3.0 Unported (CC BY-NC 3.0)

Permission is granted to copy, distribute, and/or modify this document under
the terms of the Creative Commons Attribution-NonCommercial 3.0 Unported
License, which is available at [http://creativecommons.org/licenses/by-nc/3.0/](http://creativecommons.org/licenses/by-nc/3.0/).

\==============================================================================
Caveats                                             MyHeadersFill\_file\_Caveats

- If a file is closed with :x command, fields are not updated properly.

- If header does not exist in the file, when file is saved we have error
messages that are printed.

\==============================================================================
Contributing                                   MyHeadersFill\_file\_Contributing

- GitHub:  [https://github.com/cbushdor/MyHeadersFill\_file](https://github.com/cbushdor/MyHeadersFill_file)
- Vim: [https://www.vim.org/](https://www.vim.org/)
- System macOS: Version 13.2.1 (22D68).
- System Fedora: Version 38beta (Should work on other linux distros too).

\==============================================================================
Credits                                             MyHeadersFill\_file\_Credits

Based on "Vi and Vim Autocommand: 3 Steps to Add Custom Header To Your File
Automatically".

vim:tw=78:ts=15:ft=help:norl:
