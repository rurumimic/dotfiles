#!/bin/sh

ask_confirm() {
    local answer

    printf "Continue? [Y/n/q] "
    read answer
    answer=${answer:-y}

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

