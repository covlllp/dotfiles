# OS=$1
if [ "$1" == "linux" ] || [ "$1" == "mac" ] ; then
	OS="$1"
else
	echo "Please provide OS type (linux or mac)"
	return
fi

echo $OS

if [ $OS == "mac" ]; then
  SUBLIME_PATH="$HOME/Library/Application Support/Sublime Text 3/Packages/User"
else
  SUBLIME_PATH="$HOME/.config/sublime-text-3/Packages/User"
fi

echo $SUBLIME_PATH
# cd $HOME
# mkdir hi\ you
# cd dotfiles
BLAH="$HOME/hi you"
touch "$BLAH/hel lo.txt"
# cd "$blah"

# touch "$sublime_path/hello.txt"
# cd "$sublime_path"