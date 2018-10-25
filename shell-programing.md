# Shell Programming
## An Introduction

---

# Really important because:
* Capture that hardwon knowledge
* Save on mistakes/errors
* Automate - work vastly faster
* Step up to the next level of power

---

# A Complex Command
## Don't waste that knowledge and experience

> find . -mtime -7 -type f -print

Make a shell function
> newfiles() { find . -mtime -7 -type f -print }

---
# Now you can build on it

Add an argument to make it flexible
> newfiles() { find . -mtime "-${1:-7}" -type f -print }

Now files less than 10 days old
> newfiles 10

---
# Save it forever

## Append it to your .bashrc or start up scripts
> cat >> ~/.bashrc  
> newfiles() { find . -mtime "-${1:-7}" -type f -print }  
> ^D  
> . ~/.bashrc  

## Check if it is defined
> which newfiles  
> newfiles () {  
>    find . -mtime "-${1:-7}" -type f -print  
> }  

---

# Multiple Commands

    echo "Full backup of home"
    sudo dump -0au -z -f - /home \ 
     | ssh -p123 backup-pc dd of=/backups/machine/D_L0.dump bs=1M

## Don't waste that knowledge and experience
## Put this into script file!
## To do this efficiently there are some tricks...

---

# Kick start with a template
Preload valuable help and debug features with
a common fragment

    !sh
    #! /bin/sh

    usage()
    {
       echo "$(basename $0): Description of script"
       echo ""
       echo "-h : This usage information"
       echo "-n : Dry-run print commands instead of executing them"
       echo "-x : Enabling tracing of shell script"
    }

    while getopts 'nxhA:' argv
    do
	case $argv in
	n)
	   echo "Dry-Run"
	   DR=echo
	;;
	x)
	    echo "Enabling tracing"
	    set -x
	;;
	#A) ARG="$OPTARG" ;;
	h) usage ;;
	esac
    done
    shift $(($OPTIND-1))
    echo "Do stuff here"

---

* Saves typing/debugging/remembering stuff
* Really makes it easy to re-use/step up
* Really helps document that work you put
After you've worked out how to use a tool
and all the funny options and common use
cases you can add usage and hide all complexity



---

# Common options
## Really help you extend/debug
* -h = usage
* -n = dry run - print commands don't run them!
* -x = shell debugging set -x mode
## Common argument parsing 
 Adds above options by default and lets you
easily extend / improve your code snippet.

---

# Shell Variables
# Shell Expansion
# wild cards
## joining/default value
## prefix/postfix changing
## pattern substitution

---

# Flow control
## while do done
## if Else fi
## elif
## case - far better
## break / continue

---

# File redirection
## Combine with < or > or >> or |
## Control Error messages with 2>&1 (or >&)
## explicit file descriptor 4< and ls -l /proc/$$/fd

---

# Various shells
## Warning: dash vs bash
## zsh csh and others....

# Shell arrays
## basic notation/usage
## bash indexing with strings

---

# Including files
# use . to share common code

---

# Key builtins
## read  to prompt for data into variable
## test or [ (or [[
## -e -x
## local to scope variables
## arithmetic $(($x+1))
## $() or ` `

---

# processes
## & - background
## wait 
## !? - exit status
## $$ - Parent PID
## pidof - Process no.
## trap for signals
## ps - -C -f -U ....
---

# Shell functions
# arguments
# calling
# returning

---

# Common shell functions
Improve the debugging with die() method
Dump out calling line/error message

---

# Read a Good Book
### on Shell programming
 * It will repay the time you spend *VASTLY* in terms
of saving effort and understanding.

![Shell Scripting by Steve Parker](shellscripting-cover.jpg)

### Shell Scripting by Steve Parker
