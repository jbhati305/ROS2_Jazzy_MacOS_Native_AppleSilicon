#!/bin/bash

# Backup the original formula
cp /opt/homebrew/Library/Taps/osrf/homebrew-simulation/Formula/ogre1.9.rb /opt/homebrew/Library/Taps/osrf/homebrew-simulation/Formula/ogre1.9.rb.backup

# Apply the patch
sed -i '' 's/class Ogre19Rb/class Ogre19/' /opt/homebrew/Library/Taps/osrf/homebrew-simulation/Formula/ogre1.9.rb

# Reinstall OGRE
brew uninstall ogre1.9
brew install ogre1.9

echo "OGRE formula has been fixed and reinstalled." 