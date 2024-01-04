#!/bin/bash

# Required arguments
# <path>: Path to the project

# Options
# -h: Display help

display_help() {
    # Display help, using the PAGER environment variable if possible
    if [ -z "$PAGER" ]; then
        cat $HOME/scripts/create_c/help.md 1>&2
    else
        $PAGER $HOME/scripts/create_c/help.md 1>&2
    fi
}

# Parse command line arguments with getopts
while getopts "h" opt; do
    case ${opt} in
    h)
        display_help
        exit 0
        ;;
    \?)
        echo -e "\033[31mOption ERROR: -$OPTARG" 1>&2
        exit 1
        ;;
    esac
done

# Remove the options from the positional parameters
shift $((OPTIND - 1))

# Check if the required arguments are present
if [ $# -lt 1 ]; then
    echo -e "\033[31mMissing argument: <path>\033[0m"
    exit 1
fi

# Assign the positional parameters to variables
path=$1

echo -e "\033[33m# Creating C project at path: [ \033[34m$path\033[0m\033[33m ]\033[0m"
echo ""

# Create the project directory
if [ -d "$path" ]; then
    echo -e "\033[31m* WARNING: [ \033[34m$path\033[0m\033[31m ] already exists\033[0m"
    echo -n -e "\033[31m-> Would you like to overwrite it? [y/N]\033[0m "
    read -r overwrite
    if [ "$overwrite" != "y" ]; then
        echo -e "\033[31m-> \033[33mAborting...\033[0m"
        exit 1
    fi
    echo -e "\033[31m-> \033[32mOK\033[0m"
    rm -rf "$path"
fi

mkdir -p "$path"

mkdir -p "$path/src"
mkdir -p "$path/include"
mkdir -p "$path/lib"

touch "$path/include/.gitkeep"
touch "$path/lib/.gitkeep"

cp $HOME/scripts/create_c_files/Makefile "$path/Makefile"
cp $HOME/scripts/create_c_files/main.c "$path/src/main.c"
cp $HOME/scripts/create_c_files/.gitignore "$path/.gitignore"
cp $HOME/scripts/create_c_files/README.md "$path/README.md"
cp $HOME/scripts/create_c_files/colors.h "$path/include/colors.h"

git -C "$path" init
git -C "$path" add .
git -C "$path" commit -m "Initial commit"
