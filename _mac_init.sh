#!/usr/bin/env bork

ok check "fdesetup status | grep $Q -E 'FileVault is (On|Off, but will be enabled after the next restart).'"
if check_failed && satisfying; then
	echo "Enabling Filevault on Next Boot"
	sudo fdesetup enable -user $USER | tee $HOME/Desktop/"Filevault Recovery Key.txt"
fi

if [ -n "$COMPUTER_NAME" ]; then 
	echo "Setting Computer name to $COMPUTER_NAME"
	ok scutil ComputerName $COMPUTER_NAME
	ok scutil HostName $COMPUTER_NAME
	ok scutil LocalHostName $COMPUTER_NAME
fi

ok directory "$HOME/.ssh"
ok check "[ -e $HOME/.ssh/*.pub ]"
if check_failed && satisfying; then 
	echo "Generating SSH Key"
	ssh-keygen -t rsa
fi

if satisfying
	echo "Setting resolution of internal display to smallest HiDPI available, if possible"
	ok cask switchresx
	osascript << 'EOF'
tell application "SwitchResX Daemon"
	set builtinDisplay to first item of (displays)
	set highestRetinaMode to last item of (modes of builtinDisplay whose definition is 2.0)
	if height of highestRetinaMode > 899 then
		set current mode of builtinDisplay to highestRetinaMode
	end if
end tell
EOF
end if