
# Introduction
This is another plugin[^2] for [Vim](https://en.wikipedia.org/wiki/Vim_(text_editor))[^1]. It creates a header for a file according to file extension! 

# Technical requirements

- [Vim](https://en.wikipedia.org/wiki/Vim_(text_editor))[^1] (text editor): Version 9.0.1050.
- System [macOS](https://en.wikipedia.org/wiki/MacOS): Version 13.2.1 (22D68).
- Scripts: [Markdown](https://en.wikipedia.org/wiki/Markdown), [Vim Script](https://en.wikipedia.org/wiki/Vim_(text_editor)#Vim_script), [shell sh](https://en.wikipedia.org/wiki/Unix_shell).
- Vim plugin: [Vim-plug](https://github.com/junegunn/vim-plug).

[^1]: About [Vim](https://www.vim.org/about.php).
[^2]: How to install [Vim plugin](https://linuxhandbook.com/install-vim-plugins/).

>***Note***
>
> Should be ok as long as Vim Script is supported by the editor (since version 8.0).

# Instructions to install plugin
We admit that Vim-plugin is already installed. If not so, go and install [Vim-plug](https://github.com/junegunn/vim-plug).

We configure *~/.vimrc* bellow:

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

Features by extension. A start means implented.

|      | pl      |pm |
| --- | --- | --- |
| Created By | * | * |
| File Name | * | * |
| Creation Date | * | * |
| Last Modified | * | * |
| Email Address | * | * |
| Version | * | * |
| License | * | * |
| Purpose | * | * |
| Version variable  | * | * |

# Directories


## HEADERS
Contains the templates of the headers for each file type.

## PLUGIN
Contains the file that is read by default.

## VIMRC
Contains the scripts that modified the headers.  

<details><summary>CLICK ME</summary>
<p>

```
MyHeadersFill_file
├── README.md
├── headers
│   ├── Makefile_header.txt
│   ├── c++_header.txt
│   ├── c_header.txt
│   ├── cgi_header.txt
│   ├── cpp_header.txt
│   ├── css_header.txt
│   ├── h_header.txt
│   ├── htm_header.txt
│   ├── html_header.txt
│   ├── js_header.txt
│   ├── p6_header.txt
│   ├── php_header.txt
│   ├── pl6_header.txt
│   ├── pl_header.txt
│   ├── pm6_header.txt
│   ├── pm_header.txt
│   ├── raku_header.txt
│   ├── sh_header.txt
│   ├── t_header.txt
│   ├── xml_header.txt
│   └── xsl_header.txt
├── plugin
│   └── MyHeadersFill_file.vim
└── vimrc
    ├── Makefile_vimrc
    ├── c_vimrc
    ├── cgi_vimrc
    ├── cpp_vimrc
    ├── css_vimrc
    ├── h_vimrc
    ├── html_vimrc
    ├── js_vimrc
    ├── p6_vimrc
    ├── php_vimrc
    ├── pl_vimrc
    ├── pl_vimrc.old
    ├── pm_vimrc
    ├── sh_vimrc
    ├── testFileType_vimrc
    ├── tests_vimrc
    ├── update_version_header.sh
    ├── xml_vimrc
    └── xsl_vimrc

3 directories, 42 files
```
</p>
</details>
