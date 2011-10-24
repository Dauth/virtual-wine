# This file must be used with "source bin/activate.csh" *from csh*.
# You cannot run it directly.

alias deactivate 'test $?_OLD_VIRTUALWINE_PATH != 0 && setenv PATH "$_OLD_VIRTUALWINE_PATH" && unset _OLD_VIRTUALWINE_PATH; rehash; test $?_OLD_VIRTUALWINE_PROMPT != 0 && set prompt="$_OLD_VIRTUALWINE_PROMPT" && unset _OLD_VIRTUALWINE_PROMPT; unsetenv WINEPREFIX; test "\!:*" != "nondestructive" && unalias deactivate'

# Unset irrelavent variables.
deactivate nondestructive

setenv WINEPREFIX 'XX-BASENAME-XX'

set _OLD_VIRTUALWINE_PATH="$PATH"
setenv PATH "$WINEPREFIX/bin:$PATH"

set _OLD_VIRTUALWINE_PROMPT="$prompt"

if ("" != "") then
    set env_name = ""
else
    if (`basename "$WINEPREFIX"` == "__") then
        # special case for Aspen magic directories
        # see http://www.zetadev.com/software/aspen/
        set env_name = `basename \`dirname "$WINEPREFIX"\``
    else
        set env_name = `basename "$WINEPREFIX"`
    endif
endif
set prompt = "[$env_name] $prompt"
unset env_name

rehash

