#!/bin/sh

brew install emacs --HEAD --with-cocoa
brew linkapps emacs

# https://github.com/bbatsov/prelude
curl -L https://git.io/epre | sh

rm -r ~/.emacs.d/personal
ln -s ./prelude_personal ~/.emacs.d/personal
