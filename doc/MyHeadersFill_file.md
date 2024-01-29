            MyHeadersFill_file.txt Integrates headers in files accord to extensions

    ==============================================================================
    CONTENTS                                                  MyHeadersFill_file

          1. Introduction............. MyHeadersFill_file_Introduction
          2. Usage Instructions....... MyHeadersFill_file_Instructions
          2.1 How to Install Plugin... MyHeadersFill_file_Install
          3. Mapping.................. MyHeadersFill_file_Mapping
          4. Caveats.................. MyHeadersFill_file_Caveats
          5. Contributing............. MyHeadersFill_file_Contributing
          6. Changelog................ MyHeadersFill_file_Changelog
          7. License.................. MyHeadersFill_file_License
          8. Credits.................. MyHeadersFill_file_Credits

    ==============================================================================
    Section 1: Introduction                      MyHeadersFill_file_Introduction

    When a file is created with a specific extension (see list below under
    construction) this plugin creates an appropriate header. In ˜.vimrc the set nu
    option is defined to show line numer.


         1 " ------------------------------------------------------
         2 " Created By : foo
         3 " File Name : file.txt
         4 " Creation Date :2024-01-29 08:38:13
         5 " Last Modified : 2024-01-17 21:54:14
         6 " Email Address : my.email@my_email.net
         7 " Version : 0.0.0.7
         8 " Licence :
         9 " ...  Attribution-NonCommercial 3.0 ...
        10 " ...  http://creativecommons.org/licenses/by-nc/3.0/ ...
        11 " Purpose :
        12 " ------------------------------------------------------


    ==============================================================================
    Section 2: USAGE INSTRUCTIONS                MyHeadersFill_file_Instructions

    Don't forget to add in the configuration file:


    let g:myEmail='my.email@my_email.net' <

    *Todo In the near future this will be prompted during install session. For the time being it can be considered as a caveat :-( !!!!!!

    Don't extend header fields over line 19, otherwise header fields shouldn't be
    updated automaticaly when file is saved (to do that, follow the next key
    sequence ESC :w Enter)!

    ==============================================================================
    Section 2: Mapping                                MyHeadersFill_file_Mapping

    ==============================================================================
    Section 3: LICENSE                                MyHeadersFill_file_License

    Attribution-NonCommercial 3.0 Unported (CC BY-NC 3.0)

    Permission is granted to copy, distribute, and/or modify this document under
    the terms of the Creative Commons Attribution-NonCommercial 3.0 Unported
    License, which is available at http://creativecommons.org/licenses/by-nc/3.0/.

    ==============================================================================
    Section 4: Caveats                                MyHeadersFill_file_Caveats

    - If a file is closed with :x command, fields are not updated properly.

    - If header does not exist in the file, when file is saved we have error
    messages that are printed.

    ==============================================================================
    Section 6: Contributing                      MyHeadersFill_file_Contributing

    - GitHub:  https://github.com/cbushdor/MyHeadersFill_file
    - Vim: https://www.vim.org/
    - System macOS: Version 13.2.1 (22D68).
    - System Fedora: Version 38beta (Should work on other linux distros too).

    ==============================================================================
    Section 7: Changelog                            MyHeadersFill_file_Changelog

    ==============================================================================
    Section 8: Credits                                MyHeadersFill_file_Credits

    Based on "Vi and Vim Autocommand: 3 Steps to Add Custom Header To Your File
    Automatically".

    vim:tw=78:ts=3:ft=help:norl:


            
