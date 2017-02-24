pixeledUrl="http://dl.dafont.com/dl/?f=pixelated"
pixeledOut="pixeled"

fontawesomeUrl="http://fontawesome.io/assets/font-awesome-4.7.0.zip"
fontawesomeOut="fontawesome"

# Downloads and extracts the fonts to the ~/.fonts dir
function downFont {
    while true; do
    read -p "Would you like to download the $2 font? [Y/n] " yn
    case $yn in
        [Yy]* ) createDir "fonts/"; wget -q -O "fonts/$2.zip" $1 ; break;;
        *     ) break;;
    esac
done
}

function createDir {
    if [ ! -d "$1" ]; then
      mkdir $1
    fi
}

# Check if fonts want to be downloaded (required for theme)
downFont $pixeledUrl $pixeledOut
downFont $fontawesomeUrl $fontawesomeOut

