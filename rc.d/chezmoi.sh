#!/bin/sh

ask_confirm() {
    local answer

    printf "Continue? [y/N/q] "
    read answer
    answer=${answer:-n}

    case "$answer" in
        [Yy]*)
            return 0
            ;;
        [Nn]*)
            return 1
            ;;
        *)
            return 2
            ;;
    esac
}

