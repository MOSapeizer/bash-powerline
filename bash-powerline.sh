#!/usr/bin/env bash

__powerline() {

    # Unicode symbols
    readonly PS_SYMBOL_DARWIN=''
    readonly PS_SYMBOL_LINUX='$'
    readonly PS_SYMBOL_OTHER='%'
    readonly GIT_BRANCH_SYMBOL='⑂ '
    readonly GIT_BRANCH_CHANGED_SYMBOL='+'
    readonly GIT_NEED_PUSH_SYMBOL='⇡'
    readonly GIT_NEED_PULL_SYMBOL='⇣'

    # Emoji symbols
    readonly EMOJI_GRINNING="\$(echo -e \"\xF0\x9F\x98\x81\")"
    readonly EMOJI_TEARS="\$(echo -e \"\xF0\x9F\x98\x82\")"
    readonly EMOJI_SMILING_WITH_OPEN_MOUTH="\$(echo -e \"\xF0\x9F\x98\x83\")"
    readonly EMOJI_SMILING_WITH_OPEN_MOUTH_AND_SMIL="\$(echo -e \"\xF0\x9F\x98\x84\")"
    readonly EMOJI_SMILING_WITH_OPEN_MOUTH_AND_COLD_SWEAT="\$(echo -e readonly \"\xF0\x9F\x98\x85\")"
    readonly EMOJI_SMILING_WITH_OPEN_MOUTH_AND_CLOSED_EYES="\$(echo -e readonly \"\xF0\x9F\x98\x86\")"
    readonly EMOJI_WINKING="\$(echo -e \"\xF0\x9F\x98\x89\")"
    readonly EMOJI_SMILING_WITH_SMILING_EYES="\$(echo -e \"\xF0\x9F\x98\x8A\")"
    readonly EMOJI_SAVOURING_DELICIOUS_FOOD="\$(echo -e \"\xF0\x9F\x98\x8B\")"
    readonly EMOJI_RELIEVED="\$(echo -e \"\xF0\x9F\x98\x8C\")"
    readonly EMOJI_SMILING_WITH_HEART_SHAPED_EYES="\$(echo -e \"\xF0\x9F\x98\x8D\")"
    readonly EMOJI_SMIRKING="\$(echo -e \"\xF0\x9F\x98\x8F\")"
    readonly EMOJI_UNAMUSED="\$(echo -e \"\xF0\x9F\x98\x92\")"
    readonly EMOJI_WITH_COLD_SWEAT="\$(echo -e \"\xF0\x9F\x98\x93\")"
    readonly EMOJI_PENSIVE="\$(echo -e \"\xF0\x9F\x98\x94\")"
    readonly EMOJI_CONFOUNDED="\$(echo -e \"\xF0\x9F\x98\x96\")"
    readonly EMOJI_THROWING_A_KISS="\$(echo -e \"\xF0\x9F\x98\x98\")"
    readonly EMOJI_KISSING_WITH_CLOSED_EYES="\$(echo -e \"\xF0\x9F\x98\x9A\")"
    readonly EMOJI_WITH_STUCK_OUT_TONGUE_AND_WINKING_EYE="\$(echo -e \"\xF0\x9F\x98\x9C\")"
    readonly EMOJI_WITH_STUCK_OUT_TONGUE_AND_CLOSED_EYES="\$(echo -e \"\xF0\x9F\x98\x9D\")"
    readonly EMOJI_DISAPPOINTED="\$(echo -e \"\xF0\x9F\x98\x9E\")"
    readonly EMOJI_ANGRY="\$(echo -e \"\xF0\x9F\x98\xA0\")"
    readonly EMOJI_POUTING="\$(echo -e \"\xF0\x9F\x98\xA1\")"
    readonly EMOJI_CRYING="\$(echo -e \"\xF0\x9F\x98\xA2\")"
    readonly EMOJI_PERSEVERING="\$(echo -e \"\xF0\x9F\x98\xA3\")"
    readonly EMOJI_WITH_LOOK_OF_TRIUMPH="\$(echo -e \"\xF0\x9F\x98\xA4\")"
    readonly EMOJI_DISAPPOINTED_BUT_RELIEVED="\$(echo -e \"\xF0\x9F\x98\xA5\")"
    readonly EMOJI_FEARFUL="\$(echo -e \"\xF0\x9F\x98\xA8\")"
    readonly EMOJI_WEARY="\$(echo -e \"\xF0\x9F\x98\xA9\")"
    readonly EMOJI_SLEEPY="\$(echo -e \"\xF0\x9F\x98\xAA\")"
    readonly EMOJI_TIRED="\$(echo -e \"\xF0\x9F\x98\xAB\")"
    readonly EMOJI_LOUDLY_CRYING="\$(echo -e \"\xF0\x9F\x98\xAD\")"
    readonly EMOJI_WITH_OPEN_MOUTH_AND_COLD_SWEAT="\$(echo -e \"\xF0\x9F\x98\xB0\")"
    readonly EMOJI_SCREAMING_IN_FEAR="\$(echo -e \"\xF0\x9F\x98\xB1\")"
    readonly EMOJI_ASTONISHED="\$(echo -e \"\xF0\x9F\x98\xB2\")"
    readonly EMOJI_FLUSHED="\$(echo -e \"\xF0\x9F\x98\xB3\")"
    readonly EMOJI_DIZZY="\$(echo -e \"\xF0\x9F\x98\xB5\")"
    readonly EMOJI_WITH_MEDICAL_MASK="\$(echo -e \"\xF0\x9F\x98\xB7\")"
    readonly EMOJI_GRINNING_CAT_WITH_SMILING_EYES="\$(echo -e \"\xF0\x9F\x98\xB8\")"
    readonly EMOJI_CAT_WITH_TEARS_OF_JOY="\$(echo -e \"\xF0\x9F\x98\xB9\")"
    readonly EMOJI_SMILING_CAT_WITH_OPEN_MOUTH="\$(echo -e \"\xF0\x9F\x98\xBA\")"
    readonly EMOJI_SMILING_CAT_WITH_HEART_SHAPED_EYES="\$(echo -e \"\xF0\x9F\x98\xBB\")"
    readonly EMOJI_CAT_WITH_WRY_SMILE="\$(echo -e \"\xF0\x9F\x98\xBC\")"
    readonly EMOJI_KISSING_CAT_WITH_CLOSED_EYES="\$(echo -e \"\xF0\x9F\x98\xBD\")"
    readonly EMOJI_POUTING_CAT="\$(echo -e \"\xF0\x9F\x98\xBE\")"
    readonly EMOJI_CRYING_CAT="\$(echo -e \"\xF0\x9F\x98\xBF\")"
    readonly EMOJI_WEARY_CAT="\$(echo -e \"\xF0\x9F\x99\x80\")"
    readonly EMOJI_WITH_NO_GOOD_GESTURE="\$(echo -e \"\xF0\x9F\x99\x85\")"
    readonly EMOJI_WITH_OK_GESTURE="\$(echo -e \"\xF0\x9F\x99\x86\")"
    readonly EMOJI_PERSON_BOWING_DEEPLY="\$(echo -e \"\xF0\x9F\x99\x87\")"
    readonly EMOJI_SEE_NO_EVIL_MONKEY="\$(echo -e \"\xF0\x9F\x99\x88\")"
    readonly EMOJI_HEAR_NO_EVIL_MONKEY="\$(echo -e \"\xF0\x9F\x99\x89\")"
    readonly EMOJI_SPEAK_NO_EVIL_MONKEY="\$(echo -e \"\xF0\x9F\x99\x8A\")"
    readonly EMOJI_HAPPY_PERSON_RAISING_ONE_HAND="\$(echo -e \"\xF0\x9F\x99\x8B\")"
    readonly EMOJI_PERSON_RAISING_BOTH_HANDS_IN_CELEBRATION="\$(echo -e readonly \"\xF0\x9F\x99\x8C\")"
    readonly EMOJI_PERSON_FROWNING="\$(echo -e \"\xF0\x9F\x99\x8D\")"
    readonly EMOJI_PERSON_WITH_FOL_="\$(echo -e \"\xF0\x9F\x99\x8F\")"

    # Solarized colorscheme
    readonly FG_BASE03="\[$(tput setaf 8)\]"
    readonly FG_BASE02="\[$(tput setaf 0)\]"
    readonly FG_BASE01="\[$(tput setaf 10)\]"
    readonly FG_BASE00="\[$(tput setaf 11)\]"
    readonly FG_BASE0="\[$(tput setaf 12)\]"
    readonly FG_BASE1="\[$(tput setaf 14)\]"
    readonly FG_BASE2="\[$(tput setaf 7)\]"
    readonly FG_BASE3="\[$(tput setaf 15)\]"

    readonly BG_BASE03="\[$(tput setab 8)\]"
    readonly BG_BASE02="\[$(tput setab 0)\]"
    readonly BG_BASE01="\[$(tput setab 10)\]"
    readonly BG_BASE00="\[$(tput setab 11)\]"
    readonly BG_BASE0="\[$(tput setab 12)\]"
    readonly BG_BASE1="\[$(tput setab 14)\]"
    readonly BG_BASE2="\[$(tput setab 7)\]"
    readonly BG_BASE3="\[$(tput setab 15)\]"

    readonly FG_YELLOW="\[$(tput setaf 3)\]"
    readonly FG_ORANGE="\[$(tput setaf 9)\]"
    readonly FG_RED="\[$(tput setaf 1)\]"
    readonly FG_MAGENTA="\[$(tput setaf 5)\]"
    readonly FG_VIOLET="\[$(tput setaf 13)\]"
    readonly FG_BLUE="\[$(tput setaf 4)\]"
    readonly FG_CYAN="\[$(tput setaf 6)\]"
    readonly FG_GREEN="\[$(tput setaf 2)\]"

    readonly BG_YELLOW="\[$(tput setab 3)\]"
    readonly BG_ORANGE="\[$(tput setab 9)\]"
    readonly BG_RED="\[$(tput setab 1)\]"
    readonly BG_MAGENTA="\[$(tput setab 5)\]"
    readonly BG_VIOLET="\[$(tput setab 13)\]"
    readonly BG_BLUE="\[$(tput setab 4)\]"
    readonly BG_CYAN="\[$(tput setab 6)\]"
    readonly BG_GREEN="\[$(tput setab 2)\]"

    readonly DIM="\[$(tput dim)\]"
    readonly REVERSE="\[$(tput rev)\]"
    readonly RESET="\[$(tput sgr0)\]"
    readonly BOLD="\[$(tput bold)\]"

    # what OS?
    case "$(uname)" in
        Darwin)
            readonly PS_SYMBOL=$PS_SYMBOL_DARWIN
            ;;
        Linux)
            readonly PS_SYMBOL=$PS_SYMBOL_LINUX
            ;;
        *)
            readonly PS_SYMBOL=$PS_SYMBOL_OTHER
    esac

    __git_info() { 
        [ -x "$(which git)" ] || return    # git not found

        local git_eng="env LANG=C git"   # force git output in English to make our work easier
        # get current branch name or short SHA1 hash for detached head
        local branch="$($git_eng symbolic-ref --short HEAD 2>/dev/null || $git_eng describe --tags --always 2>/dev/null)"
        [ -n "$branch" ] || return  # git branch not found

        local marks
    local unstaged_count="$($git_eng status --porcelain | wc -l | xargs)"
        # branch is modified?
        [ -n "$($git_eng status --porcelain)" ] && marks+=" $BG_BASE2$FG_RED $GIT_BRANCH_CHANGED_SYMBOL $unstaged_count "

        # how many commits local branch is ahead/behind of remote?
        local stat="$($git_eng status --porcelain --branch | grep '^##' | grep -o '\[.\+\]$')"
        local aheadN="$(echo $stat | grep -o 'ahead [[:digit:]]\+' | grep -o '[[:digit:]]\+')"
        local behindN="$(echo $stat | grep -o 'behind [[:digit:]]\+' | grep -o '[[:digit:]]\+')"
        [ -n "$aheadN" ] && marks+=" $GIT_NEED_PUSH_SYMBOL$aheadN"
        [ -n "$behindN" ] && marks+=" $GIT_NEED_PULL_SYMBOL$behindN"

        # print the git branch segment without a trailing newline
        printf " $GIT_BRANCH_SYMBOL$branch$marks "
    }

    ps1() {
        # Check the exit code of the previous command and display different
        # colors in the prompt accordingly. 
        if [ $? -eq 0 ]; then
            local BG_EXIT="$BG_GREEN"
        local EMOJI_EXIT="$BG_EXIT $EMOJI_GRINNING  $RESET "
        else
            local BG_EXIT="$BG_RED"
        local EMOJI_EXIT="$BG_EXIT $EMOJI_POUTING  $RESET "
        fi

        PS1="$BG_BASE1$FG_VIOLET \W $RESET"
        PS1+="$BG_BLUE$FG_BASE3$(__git_info)$RESET"
        #PS1+="$BG_EXIT$FG_BASE3 $PS_SYMBOL $RESET "
        PS1+="$EMOJI_EXIT"
    }

    PROMPT_COMMAND=ps1
}

__powerline
unset __powerline
