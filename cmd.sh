# if env $LOG is defined, the echo it to stdout
if [ -n "$LOG" ]; then
    echo $LOG
fi


# if env $EXIT_CODE is not defined, the exit code is 0
if [ -z "$EXIT_CODE" ]; then
    EXIT_CODE=0
fi

exit $EXIT_CODE
