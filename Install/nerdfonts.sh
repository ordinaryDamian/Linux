#! /bin/sh

mkdir -p ~/.local/share/fonts

cd /tmp
fonts=(
"NerdFontsSymbolsOnly"
"Arimo"
"AnonymousPro"
"CascadiaCode"
"DaddyTimeMono"
"DroidSansMono"
"FiraCode"
"Gohu"
"Go-Mono"
"Hack"
"Hasklig"
"Hermit"
"iA-Writer"
"Inconsolata"
"InconsolataGo"
"InconsolataLGC"
"Iosevka"
"IosevkaTerm"
"JetBrainsMono"
"Meslo"
"Monofur"
"Monoid"
"Mononoki"
"Noto"
"Overpass"
"ProFont"
"ProFonlean"
"RobotoMono"
"ShareTechMono"
"SourceCodePro"
"SpaceMono"
"Terminus"
"Tinos"
"Ubuntu"
"UbuntuMono"
"VictorMono"
)
for font in ${fonts[@]}
do
    wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.3.3/$font.zip
	unzip $font.zip -d $HOME/.local/share/fonts/$font/
    rm $font.zip
done
fc-cache
