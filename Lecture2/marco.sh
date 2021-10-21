#!/usr/bin/bash
marco() {
    last_dir=$(pwd)
    echo "current directory is: $last_dir"
}

polo() {
    cd "$last_dir"
}