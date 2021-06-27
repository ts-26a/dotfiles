function fish_prompt
    set STATUS $status
    set DATE (date +"%H:%M:%S")
    set OK (set_color 6bce3a)
    set BAD (set_color ff2146)
    set YELLOW (set_color dbdb7d)
    set PROMPT (prompt_pwd)
    set NORMAL (set_color normal)
    git rev-parse --abbrev-ref @ 2&> /dev/null
    set GIT_STATUS $status
    if test $STATUS -eq 0
        if test $GIT_STATUS -eq 0
            echo "[$PROMPT][$YELLOW"(git rev-parse --abbrev-ref @)"$NORMAL][$OK""OK$NORMAL][$DATE]"
        else
            echo "[$PROMPT][$OK""OK$NORMAL][$DATE]"
        end
    else
        if test $GIT_STATUS -eq 0
            echo "[$PROMPT][$YELLOW"(git rev-parse --abbrev-ref @)"$NORMAL][$BAD""BAD[$STATUS]$NORMAL][$DATE]"
        else
            echo "[$PROMPT][$BAD""BAD[$STATUS]$NORMAL][$DATE]"
        end
    end
    echo "\$"
end
