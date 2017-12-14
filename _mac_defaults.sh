#!/usr/bin/env bork
# Most of these are based on Mathias Bynens' famous defaults, with some bork-y changes and personal preference improvements.

# Tell preferences to close any open preference panes to prevent accidental clobbering.
osascript -e 'tell application "System Preferences" to quit'

# Expand save and print panels by default
ok defaults NSGlobalDomain NSNavPanelExpandedStateForSaveMode bool true
ok defaults NSGlobalDomain NSNavPanelExpandedStateForSaveMode2 bool true
ok defaults NSGlobalDomain PMPrintingExpandedStateForPrint bool true
ok defaults NSGlobalDomain PMPrintingExpandedStateForPrint2 bool true

# Disable the “Are you sure you want to open this application?” dialog
ok defaults com.apple.LaunchServices LSQuarantine bool false

# Disable Resume system-wide
ok defaults com.apple.systempreferences NSQuitAlwaysKeepsWindows bool false	

# Disable automatic capitalization and autocarrot
ok defaults NSGlobalDomain NSAutomaticCapitalizationEnabled bool false
ok defaults NSGlobalDomain NSAutomaticSpellingCorrectionEnabled bool false

# Require password immediately after sleep or screen saver begins
ok defaults com.apple.screensaver askForPassword int 1
ok defaults com.apple.screensaver askForPasswordDelay int 0


# Save screenshots as pngs in ~/screenshots
ok directory "$HOME/screenshots"
ok defaults com.apple.screencapture location string "${HOME}/screenshots"
ok defaults com.apple.screencapture type string "png"

# Finder: show all filename extensions
ok defaults NSGlobalDomain AppleShowAllExtensions bool true

# Finder: show status bar
ok defaults com.apple.finder ShowStatusBar bool true

# Finder: show path bar
ok defaults com.apple.finder ShowPathbar bool true

# Keep folders on top when sorting by name
ok defaults com.apple.finder _FXSortFoldersFirst bool true

# Disable the warning when changing a file extension
ok defaults com.apple.finder FXEnableExtensionChangeWarning bool false

# Avoid creating .DS_Store files on network or USB volumes
ok defaults com.apple.desktopservices DSDontWriteNetworkStores bool true
ok defaults com.apple.desktopservices DSDontWriteUSBStores bool true

# Use list view in all Finder windows by default
# Four-letter codes for the other view modes: `icnv`, `clmv`, `Flwv`
ok defaults com.apple.finder FXPreferredViewStyle string "Nlsv"

# Enable AirDrop over Ethernet and on unsupported Macs running Lion
ok defaults com.apple.NetworkBrowser BrowseAllInterfaces bool true

# Show only open applications in the Dock
ok defaults com.apple.dock static-only bool true


# Disable Dashboard
ok defaults com.apple.dashboard mcx-disabled bool true

# Don’t show Dashboard as a Space
ok defaults com.apple.dock dashboard-in-overlay bool true

# Don’t automatically rearrange Spaces based on most recent use
ok defaults com.apple.dock mru-spaces bool false

# Remove the auto-hiding Dock delay
ok defaults com.apple.dock autohide-delay float 0
# Speed up the animation when hiding/showing the Dock
ok defaults com.apple.dock autohide-time-modifier float 0.5

# Automatically hide and show the Dock
ok defaults com.apple.dock autohide bool true

# Disable the Launchpad gesture (pinch with thumb and three fingers)
ok defaults com.apple.dock showLaunchpadGestureEnabled int 0

# Hot Corners
# Possible values:
#  0: no-op
#  2: Mission Control
#  3: Show application windows
#  4: Desktop
#  5: Start screen saver
#  6: Disable screen saver
#  7: Dashboard
# 10: Put display to sleep
# 11: Launchpad
# 12: Notification Center
# Bottom left screen corner → Start screen saver
ok defaults com.apple.dock wvous-bl-corner int 5
ok defaults com.apple.dock wvous-bl-modifier int 0
# Bottom right screen corner → Mission Control
ok defaults com.apple.dock wvous-br-corner int 2
ok defaults com.apple.dock wvous-br-modifier int 0

# Disable inline mail attachments (just show the icons)
ok defaults com.apple.mail DisableInlineAttachmentViewing bool true

# Prevent Time Machine from prompting to use new hard drives as backup volume
ok defaults com.apple.TimeMachine DoNotOfferNewDisksForBackup bool true

# Enable the debug menu in Address Book
ok defaults com.apple.addressbook ABShowDebugMenu bool true

# Enable the debug menu in Disk Utility
ok defaults com.apple.DiskUtility DUDebugMenuEnabled bool true
ok defaults com.apple.DiskUtility advanced-image-options bool true
