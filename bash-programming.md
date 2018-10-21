# Shell Programming
## An Introduction

---

# Really important becuase:
## Capture that hardwon knowledge
## Save on mistakes/errors
## Automate - work vastly faster
## Step up to the next level of power

---

# When ever you have several commands
Don't waste that knowledge and experience

> find . -mtime -7 -type f -print

Save it as a shell function

> oldfiles() { find . -mtime -7 -type f -print }

---

# To do this efficiently there are some tricks

---

# Basic Framework
## Saves typing/debugging/remembering stuff
## Really makes it easy to re-use/step up
## Really helps document that work you put
After you've worked out how to use a tool
and all the funny options and common use
cases you can add usage and hide all complexity

---

# Common options - really help you extend/debug
# -h = usage
# -n = dry run - print commands don't run them!
# -x = shell debugging set -x mode

---

# Common argument parsing 
 Adds above options by default and lets you
easily extend / improve your code snippet.

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

# Read a good book on Shell programming
It will repay the time you spend *VASTLY* in terms
of saving effort and understanding.

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
