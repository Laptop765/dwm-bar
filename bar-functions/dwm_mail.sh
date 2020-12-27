#!/bin/sh

# A dwm_bar function to display the number of emails in an inbox
# Joe Standring <git@joestandring.com>
# GNU GPLv3

# To count mail in an inbox, change "/path/to/inbox" below to the location of your inbox. For example, "/home/$USER/.mail/new"

dwm_mail () {
    MAILBOX1=$(ls /home/paul/.mail/laptop765-gmail/INBOX/new | wc -l)
    MAILBOX2=$(ls /home/paul/.mail/offisignin-gmail/INBOX/new | wc -l)

    printf "%s" "$SEP1"
    if [ "$IDENTIFIER" = "unicode" ]; then
        if [ "$MAILBOX1" -eq 0 ]; then
            printf "📪 %s" "$MAILBOX1"
        else
            printf "📫 %s" "$MAILBOX1"
        fi
    else
        printf "MAI %s" "$MAILBOX1"
    fi
    # printf "%s\n" "$SEP2"

    printf " | "

    # printf "%s" "$SEP1"
    if [ "$IDENTIFIER" = "unicode" ]; then
        if [ "$MAILBOX2" -eq 0 ]; then
            printf "📪 %s" "$MAILBOX2"
        else
            printf "📫 %s" "$MAILBOX2"
        fi
    else
        printf "MAI %s" "$MAILBOX2"
    fi
    printf "%s\n" "$SEP2"
}

dwm_mail
