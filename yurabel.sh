#! /bin/bash
mkdir yurabel1
cd yurabel1
mkdir ki406
cd ki406
echo 'y.belichenko007@gmail.com' > yurabel.txt
cp yurabel.txt /home

file_path="/home/osboxes/yurabel1/ki406/yurabel.txt"


email_regex="[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}"


if [[ $(grep -E -c "$email_regex" "$file_path") -gt 0 ]]; then
    echo "Файл містить електронну пошту."
else
    echo "Файл не містить електронної пошти."
fi
