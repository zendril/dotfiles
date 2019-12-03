# dotfiles

Versioning dotfiles using git and stow.

## Show what would happen (-n)
stow -nvt ~ *

## Stow (start tracking new files)

This moves the target file (from ~) into the /dotfiles/<tool> directory and sets up a symlink to it.
`stow --adopt -nvt ~ *`
or
`stow --adopt -nvt ~ <tool>`

ex: `stow --adopt -nvt ~ bash`

## Restore
This will create a symlink in the target dir (~) pointing to the files in the tool dir

`git clone git@github.com:zendril/dotfiles.git`

`stow -t ~ <tool>`

ex: `stow -t ~ bash`