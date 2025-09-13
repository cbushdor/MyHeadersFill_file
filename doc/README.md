      1 *MyHeadersFill_file.txt* Integrates headers in files accord to extensions
      2 
      3 ==============================================================================
      4 Changelog                                         *MyHeadersFill_file_Changelog*
      5 
      6 >
      7           Created By : sdo
      8           File Name : MyHeadersFill_file.txt
      9           Creation Date : 2024-01-30 00:20:50
     10           Last Modified : 2025-09-13 00:38:20
     11           Email Address : sebastien.dorey013@laposte.net
     12           Version : 0.0.0.248
     13 <
     14 
     15 ==============================================================================
     16 CONTENTS                                                    *MyHeadersFill_file*
     17 
     18   * Introduction............. |MyHeadersFill_file_Introduction|
     19   * How to Install Plugin.... |MyHeadersFill_file_Install|
     20   * Mapping.................. |MyHeadersFill_file_Mapping|
     21   * Caveats.................. |MyHeadersFill_file_Caveats|
     22   * Contributing............. |MyHeadersFill_file_Contributing|
     23   * Changelog................ |MyHeadersFill_file_Changelog|
     24   * License.................. |MyHeadersFill_file_License|
     25   * Credits.................. |MyHeadersFill_file_Credits|
     26 
     27 ==============================================================================
     28 Introduction                                   *MyHeadersFill_file_Introduction*
     29 
     30 When a file is created with a specific extension (see list below under
     31 construction) this plugin creates an appropriate header. In ˜/.vimrc the
     32 `:set nu` option is defined (to remove `:set nonu`) to show line number.
     33 >vim
     34     1 " ------------------------------------------------------
     35     2 " Created By :
     36     3 " File Name :
     37     4 " Creation Date : 2024-01-29 09:35:31
     38     5 " Last Modified :
     39     6 " Email Address :
     40     7 " Version :      0.0.0.0
     41     8 " License:
     42     9 " Purpose :
     43    10 " ------------------------------------------------------
     44 <
     45 After saving `:w`<ret> you should have:
     46 >vim
     47      1 " ------------------------------------------------------
     48      2 " Created By : foo
     49      3 " File Name : file.txt
     50      4 " Creation Date : 2024-01-29 09:35:31
     51      5 " Last Modified : 2024-01-29 09:36:14
     52      6 " Email Address : my.email@my_email.net
     53      7 " Version :  0.0.0.1
     54      8 " Licence :
     55      9 " ...  Attribution-NonCommercial 3.0 ...
     56     10 " ...  http://creativecommons.org/licenses/by-nc/3.0/ ...
     57     11 " Purpose :
     58     12 " ------------------------------------------------------
     59 <
     60 ==============================================================================
     61 How to Install Plugin                               *MyHeadersFill_file_Install*
     62 
     63 Technical requirements ~
     64     * Vim (text editor): Version 9.0.1050.
     65     * System macOS: Version 13.2.1 (22D68).
     66     * System Fedora: Version 38beta (Should work on other linux distros too).
     67     * Scripts: Markdown, Vim Script, shell sh.
     68     * Vim plugin: Vim-plug.
     69 
     70     Note
     71       Should be alright, as long as Vim Script is supported by the editor
     72       (since version 8.0).
     73       You can use both ways to enlight text or have basic text like this:
     74 
     75          Text enlighted        Basic text~
     76          `:syntax on`            `:syntax off`
     77          `:set filetype=help`    `:set filetype=text`
     78          `:syntax enable`
     79 
     80 Notation use ~
     81   <C-key>: Combination of Control key + another key.
     82 
     83 How to start ~
     84   We admit that Vim-plugin is already installed. If not so, go to
     85   https://github.com/junegunn/vim-plug and follow instructions.
     86 
     87   We configure ~/.vimrc below (~ means home directory same story for
     88   the environment variable ${HOME}):
     89 >vim
     90      call plug#begin('~/.vim/plugged')
     91      Plug 'cbushdor/MyHeadersFill_file'
     92      call plug#end()
     93 <
     94   and plugin will be installed in ~/.vim/plugged if everything is well
     95   configured. Then type `:wq` to save and, `:source ~/.vimrc` to relaunch.
     96   Then, type `:PlugInstall` and, look if plugin is installing itself.
     97   If, plugin already installed hence `:PlugUpdate`.
     98   It shoulb be in ${HOME}/.vim/plugged/MyHeadersFill_file/. Later on,
     99   we will refer to this path as <my_home_plugin>.
    100   A prompt might ask not to forget to set in ˜/.vimrc the variable email:
    101 >vim
    102      let g:myEmail='my.email@my_email.net'
    103 <
    104   WATCHOUT OUT! After installing the plugin, when you open a file for
    105   the first time (after plugin installed succesfully), a prompt may
    106   ask to set an email and, may set it in the file ~/.vimrc
    107   for you. Sometime we have $MYVIMRC that contains the path.
    108   Check:
    109                `:!echo $MYVIMRC`
    110 
    111   This can be changed with the command `:MyHeadersFillFileChangeEmail`.
    112   Just follow prompt instructions!
    113 
    114   The final test is to create a text file in a specific directory s.a
    115   ˜/Downloads:
    116 >
    117       % cd ˜/Downloads
    118       % vim file.txt
    119 <
    120    you should have the following (if `:set nu` is set):
    121 >vim
    122     1 " ------------------------------------------------------
    123     2 " Created By :
    124     3 " File Name :
    125     4 " Creation Date : 2024-01-29 09:35:31
    126     5 " Last Modified :
    127     6 " Email Address :
    128     7 " Version :      0.0.0.0
    129     8 " License:
    130     9 " Purpose :
    131    10 " ------------------------------------------------------
    132 <
    133   After saving `:w`<ret> you should have something similar!
    134 >vim
    135     1 " ------------------------------------------------------
    136     2 " Created By : foo
    137     3 " File Name : file.txt
    138     4 " Creation Date : 2024-01-29 09:35:31
    139     5 " Last Modified : 2024-01-29 09:36:14
    140     6 " Email Address : my.email@my_email.net
    141     7 " Version :  0.0.0.1
    142     8 " Licence :
    143     9 " ...  Attribution-NonCommercial 3.0 ...
    144    10 " ...  http://creativecommons.org/licenses/by-nc/3.0/ ...
    145    11 " Purpose :
    146    12 " ------------------------------------------------------
    147 <
    148 MEANINGS OF FIELDS ~
    149 
    150 The header is created if file is new and, file type extension supported.
    151 If file already exists, but doesn't have any header, you can create one.
    152 Follow this:
    153       - Go to first line by typing `:1` and then type `i` to be in
    154         insert mode. This method should work wherever your cursor is
    155         but, shebang line won't show up!
    156       - Type <C-c> (Control-c) a header will show up at first line
    157         in the current file with shebang according to file extension.
    158         It will be saved after `:w`<ret>.
    159       - According to some file type instead of header a script to
    160         document file will show up as. These files are stored in
    161         <my_home_plugin>/headers/<file_extenstion>_doc_header.txt.
    162         List of headers look for
    163         <my_home_plugin>/headers/<file_extenstion>_header.txt.
    164 
    165 Field name     |Use                            |Update time
    166 ===============|===============================|==============================
    167 Created By     |User name.                     |At file creation.
    168 File Name      |File name.                     |At file creation. Cannot be
    169                |                               |changed except, if file name
    170                |                               |itself is changed. Updated
    171                |                               |automatically.
    172 ---------------|-------------------------------|------------------------------
    173 Creation Date  |Date when file is created.     |At file creation.
    174 ---------------|-------------------------------|------------------------------
    175 Last Modified  |Date when file is Modified.    |Updated when file is saved.
    176 ---------------|-------------------------------|------------------------------
    177 Email Address  |Email of the user.             |Can be changed within read
    178                |                               | |MyHeadersFill_file_Install|.
    179 ---------------|-------------------------------|------------------------------
    180 Version        |This is the version number.    |Only last field incremented
    181                |                               |when file is saved.
    182 ---------------|-------------------------------|------------------------------
    183 License        |Your choice.                   |Can be changed anytime!
    184 ---------------|-------------------------------|------------------------------
    185 Purpose        |Why this file was created.     |Can be changed anytime!
    186 
    187 
    188 ==============================================================================
    189 Mapping                                             *MyHeadersFill_file_Mapping*
    190 
    191 Follow these steps if you are in normal mode:
    192 
    193       - MyHeadersFillFileAddHeaderTopFile
    194       - MyHeadersFillFileChangeEmail
    195 
    196 Follow these steps if you are in insert mode:
    197 
    198       - Type <C-h> (Control-h) a header will be created
    199         at first line of the file acording to file
    200         extension.
    201 
    202       - Type <C-c> (Control-c) a header will be created
    203         where the cursor is in in the file. According to
    204         file extension (if it is supported) the header will
    205         contains shebang.
    206         If file with extension already exists, but that
    207         does not have header and, if cursor is at first
    208         line in file, header will be added with proper
    209         shebang.
    210 
    211       - Type <C-c> on the line while in insert mode
    212            145 I<Last modification:> 2025-09-10 20:35:37
    213 
    214         and fild will be updated like this:
    215            145 I<Last modification:> 2025-09-10 20:36:23
    216 
    217 
    218       - Type <C-c> (Control-c) a header will be created
    219         where the cursor is in in the file. In that case, if
    220         file as an extension, might add documenttion tag.
    221       - Header and documentation can be found in:
    222         ${HOME}/.vim/plugged/MyHeadersFill_file/headers
    223         <script_name>_header.txt: holds header
    224         <script_name>_doc_header.txt: holds documentation
    225 
    226 
    227 ==============================================================================
    228 LICENSE                                             *MyHeadersFill_file_License*
    229 
    230 Attribution-NonCommercial 3.0 Unported (CC BY-NC 3.0)
    231 
    232 Permission is granted to copy, distribute, and/or modify this document under
    233 the terms of the Creative Commons Attribution-NonCommercial 3.0 Unported
    234 License, which is available at http://creativecommons.org/licenses/by-nc/3.0/.
    235 
    236 ==============================================================================
    237 Caveats                                             *MyHeadersFill_file_Caveats*
    238 
    239 - If a file is closed with :x command, fields are not updated properly.
    240 
    241 - If header does not exist in the file, when file is saved we have error
    242 messages that are printed.
    243 
    244 ==============================================================================
    245 Contributing                                   *MyHeadersFill_file_Contributing*
    246 
    247 - GitHub:  https://github.com/cbushdor/MyHeadersFill_file
    248 - Vim: https://www.vim.org/
    249 - System macOS: Version 13.2.1 (22D68).
    250 - System Fedora: Version 38beta (Should work on other linux distros too).
    251 
    252 
    253 ==============================================================================
    254 Credits                                             *MyHeadersFill_file_Credits*
    255 
    256 Based on "Vi and Vim Autocommand: 3 Steps to Add Custom Header To Your File
    257 Automatically".
    258 
    259 vim:tw=78:ts=15:ft=help:norl:

<!-- vim: set foldmethod=manual : -->
