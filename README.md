<!-- ------------------------------------------------------
* Created By : sdo
* File Name : README.md
* Creation Date : 2022-10-10 13:42:04
* Last Modified : 2023-04-10 17:09:37
* Email Address : sdo@dorseb.ddns.net
* Version : 0.0.0.125
* License :
*   Permission is granted to copy, distribute, and/or modify this document under the terms of the Creative Commons Attribution-NonCommercial 3.0
*   Unported License, which is available at http://creativecommons.org/licenses/by-nc/3.0/.
* Purpose :
*   It is README.md that introduce in brief how to use plugin!
------------------------------------------------------ -->

[![License: CC BY-NC 3.0](https://img.shields.io/badge/License-CC_BY--NC_3.0-lightgrey.svg)](https://creativecommons.org/licenses/by-nc/3.0/)

# In brief
This is another plugin[^2] for [Vim](https://en.wikipedia.org/wiki/Vim_(text_editor))[^1]. It creates a header for a file according to file extension!


# Technical requirements

- [Vim](https://en.wikipedia.org/wiki/Vim_(text_editor))[^1][^3] (text editor): Version 9.0.1050.
- System [macOS](https://en.wikipedia.org/wiki/MacOS): Version 13.2.1 (22D68).
- System [Fedora](https://getfedora.org/), [mag](https://fedoramagazine.org/): Version 38beta (Should work on other linux [distros](https://en.wikipedia.org/wiki/List_of_Linux_distributions) too).
- Scripts: [Markdown](https://en.wikipedia.org/wiki/Markdown), [Vim Script](https://en.wikipedia.org/wiki/Vim_(text_editor)#Vim_script), [shell sh](https://en.wikipedia.org/wiki/Unix_shell).
- Vim plugin: [Vim-plug](https://github.com/junegunn/vim-plug).

[^1]: About [Vim](https://www.vim.org/about.php).
[^2]: How to install [Vim plugin](https://linuxhandbook.com/install-vim-plugins/).
[^3]: This code was based on [Vi and Vim Autocommand](https://www.thegeekstuff.com/2008/12/vi-and-vim-autocommand-3-steps-to-add-custom-header-to-your-file/).

>***Note***
>
> Should be ok as long as Vim Script is supported by the editor (since version 8.0).

# Instructions to install plugin
We admit that Vim-plugin is already installed. If not so, go and install [Vim-plug](https://github.com/junegunn/vim-plug).

We configure *~/.vimrc* below:

```
call plug#begin('~/.vim/plugged')
Plug 'cbushdor/MyHeadersFill_file'
call plug#end()
```

and plugin will be installed in *~/.vim/plugged* if everything is well configured. First, go in vim type *:PlugInstall* and look plugin is installing itself.

# WATCHOUT
Plugin under construction! 
Yet, already tested with *.pl files. Online help will be written pretty soon!? ;-)! as a vim command line.



# Fields and their use

All fields are created if file is new and , format supported.

| Field name     | Use      | Update time |
| :--- | :--- | :--- |
| Created By | Date of file creation.| Created at file creation. Cannot be changed. |
| File Name | File name. | At file creation. Cannot be changed except, if file name itself is changed. Updated automaticaly. |
| Creation Date | Date when file is created. | At file creation|
| Last Modified | Date when file is Modified. | Updated when file is saved. |
| Email Address | Email of the user. | Cannot be changed. |
| Version | This is the version number. | Only last field incremented when file is saved. |
| License | Your choice. | Can be changed anytime! |
| Purpose | Why this file was created. |  Can be changed anytime! |
| Version variable  | Same as Version field. | Incremented at same time as ***Version field*** created. |

# The command line

It is possible to insert where the cursor is a header. Follow the next line:
> Enter Vim if not so. Go to the line where you want to insert header.
> Go to insert mode (type *i*) then *Ctrl-h* (*Control key followed by h key at same time*) then return.

>***Note***
>
> It is better to insert the header at the very top (after shebang i.e). 
> It is working fine if the fields that are updated are in the top 20 first lines of the file!
> It is not caveat!

# Extensions

Features by extension. A &#10003; means implented.

|      | pl      | pm  | xml | xsl | sh   | Makefile | html | htm | css | h   | c   | c++ | cpp | vimrc | t   | php | myconf | js  | raku | vim | cgi | p6  | pl6 | pm6 |
| ---  | ---     | --- | --- | --- | ---  | ---      | ---  | --- | --- | --- | --- | --- | --- | ---   | --- | --- | ---    | --- | ---  | --- | --- | --- | --- | --- |
| Created By | &#10003; | &#10003; | &#10003; | &#10003; | &#10003; | &#10003; | &#10003; | &#10003; | &#10003; | &#10003; | &#10003; | &#10003; | &#10003; | &#10003; | &#10003; | &#10003; | &#10003; | &#10003; | &#10003; | &#10003; | &#10003; | &#10003; | &#10003; | &#10003; | &#10003; |
| File Name  | &#10003; | &#10003; | &#10003; | &#10003; | &#10003; | &#10003; | &#10003; | &#10003; | &#10003; | &#10003; | &#10003; | &#10003; | &#10003; | &#10003; | &#10003; | &#10003; | &#10003; | &#10003; | &#10003; | &#10003; | &#10003; | &#10003; | &#10003; | &#10003; | &#10003; |
| Creation Date | &#10003; | &#10003; | &#10003; | &#10003; | &#10003; | &#10003; | &#10003; | &#10003; | &#10003; | &#10003; | &#10003; | &#10003; | &#10003; | &#10003; | &#10003; | &#10003; | &#10003; | &#10003; | &#10003; | &#10003; | &#10003; | &#10003; | &#10003; | &#10003; | &#10003; |
| Last Modified  | &#10003; | &#10003; | &#10003; | &#10003; | &#10003; | &#10003; | &#10003; | &#10003; | &#10003; | &#10003; | &#10003; | &#10003; | &#10003; | &#10003; | &#10003; | &#10003; | &#10003; | &#10003; | &#10003; | &#10003; | &#10003; | &#10003; | &#10003; | &#10003; | &#10003; |
| Email Address | &#10003; | &#10003; | &#10003; | &#10003; | &#10003; | &#10003; | &#10003; | &#10003; | &#10003; | &#10003; | &#10003; | &#10003; | &#10003; | &#10003; | &#10003; | &#10003; | &#10003; | &#10003; | &#10003; | &#10003; | &#10003; | &#10003; | &#10003; | &#10003; | &#10003; |
| Version  | &#10003; | &#10003; | &#10003; | &#10003; | &#10003; | &#10003; | &#10003; | &#10003; | &#10003; | &#10003; | &#10003; | &#10003; | &#10003; | &#10003; | &#10003; | &#10003; | &#10003; | &#10003; | &#10003; | &#10003; | &#10003; | &#10003; | &#10003; | &#10003; | &#10003; |
| License  | &#10003; | &#10003; | &#10003; | &#10003; | &#10003; | &#10003; | &#10003; | &#10003; | &#10003; | &#10003; | &#10003; | &#10003; | &#10003; | &#10003; | &#10003; | &#10003; | &#10003; | &#10003; | &#10003; | &#10003; | &#10003; | &#10003; | &#10003; | &#10003; | &#10003; |
| Purpose  | &#10003; | &#10003; | &#10003; | &#10003; | &#10003; | &#10003; | &#10003; | &#10003; | &#10003; | &#10003; | &#10003; | &#10003; | &#10003; | &#10003; | &#10003; | &#10003; | &#10003; | &#10003; | &#10003; | &#10003; | &#10003; | &#10003; | &#10003; | &#10003; | &#10003; |
| Version variable   | &#10003; | &#10003; | &#10003; | &#10003; | &#10003; | &#10003; | &#10003; | &#10003; | &#10003; | &#10003; | &#10003; | &#10003; | &#10003; | &#10003; | &#10003; | &#10003; | &#10003; | &#10003; | &#10003; | &#10003; | &#10003; | &#10003; | &#10003; | &#10003; | &#10003; |


## Configuration

Some fields can be configured in a seperated file and loaded if file does not exists. This feature is not available if file already exists, either for the variable that contains version of script.

For instance in the directory header we set a file called *license.txt* and is loaded.

# Directories

```
% ls -R MyHeadersFill_file 
README.md	headers/	vimrc/		plugin/		doc/

MyHeadersFill_file/headers:
vimrc_header.txt	cpp_header.txt		c++_header.txt		htm_header.txt		xml_header.txt		pl6_header.txt		license.txt
t_header.txt		myconf_header.txt	css_header.txt		c_header.txt		html_header.txt		pm6_header.txt
php_header.txt		sh_header.txt*		xsl_header.txt		h_header.txt		cgi_header.txt		pm_header.txt
Makefile_header.txt	js_header.txt		raku_header.txt		vim_header.txt		p6_header.txt		pl_header.txt

MyHeadersFill_file/vimrc:
start_header_vimrc		update_version_header.sh*	update_version_header.sh.old*

MyHeadersFill_file/plugin:
MyHeadersFill_file.vim			MyHeadersFill_file_command_line.vim

MyHeadersFill_file/doc:
tags			introScene.cute.txt	MyHeadersFill_file.txt	cuteHelp.txt		typecorr.txt
```

## HEADERS
Contains the templates of the headers for each file type.

## PLUGIN
Contains the file that is read by default.

## VIMRC
Contains the scripts that modified the headers.  

# DEMO

![output20523](https://user-images.githubusercontent.com/20154269/230741365-b08ab86d-16ce-44f6-8bd2-6fa09cb6bb43.gif)

# License

Attribution-NonCommercial 3.0 Unported (CC BY-NC 3.0)
* 	Permission is granted to copy, distribute, and/or modify this document under the terms of the Creative Commons Attribution-NonCommercial 3.0
 	Unported License, which is available at http://creativecommons.org/licenses/by-nc/3.0/.

# CAVEATS

<!--
If several files are opened in the same vim, headers might not be updated properly when file are saved.
-->

If a file is closed with *:x* command, fields are not updated properly.


# TODO

Help commands need to be written.

