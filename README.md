# mousecabs
Mouse coordinates and button state - Command line tool for Mac OS that prints the current mouse coordinates and button state - x, y, button - line by line. The same like "cliclick p" but including the button state of the mouse and with line-by-line formatting.

Files

mousecabs.m - source code
mousecabs.sh - shell script to compile the source
mousecabs - executable

Usage

open terminal
with the mousecabs executable in the current directory, run
./mousecabs

Examples

    unknown0023DFFEACBB:prg.c.mac sir$ ./mousecabs
    608
    1280
    0

Mouse is at (608,1280) with no mouse button pressed

    608
    1280
    1
    
Mouse is at (608,1280) with left mouse button pressed (make sure to "brew install cliclick" before)

    cliclick p; ./mousecabs
    Current mouse position: 841,1218
    841
    1218
    0

To constantly monitor the mouse state e.g. every second, install watch and run

    brew install watch
    watch -n 1 ./mousecabs
    
------------------

# mouserep
Mouse repeat - Tool for personal use. Outputs Automator - Apple Script Code that repeats clicks which you perform on screen using cliclick. Install cliclick using brew :
    
    brew install cliclick

Then, e.g. 

    sir$ ./mouserep
    do shell script "/usr/local/bin/cliclick c:410,1031"
    delay 8
    do shell script "/usr/local/bin/cliclick c:559,1026"
    delay 8
    do shell script "/usr/local/bin/cliclick c:547,363"
    delay 8
    do shell script "/usr/local/bin/cliclick c:1143,904"
    delay 8
    ^C
    
