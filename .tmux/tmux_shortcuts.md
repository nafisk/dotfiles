# Tmux Cheat Sheet

## [tmux session]

- A session is a collection of windows that you can switch between and manage together. 
- Each session can contain multiple windows, and each window can be split into multiple panes. 
- Sessions are particularly useful for long-running processes or when you need to organize your work into different contexts

### New Sessions
# `tmux`
# `tmux new`
# `tmux new-session`
# `tmux new -s sessionname`

### Attach Sessions
# `tmux a`
# `tmux att`
# `tmux attach`
# `tmux a -t sessionname`

### Remove Sessions
# `tmux kill-ses`
# `tmux kill-session -t sessionname`

### Key Bindings
# `ctrl + s $` - rename session
# `ctrl + s d` - detach session
# `ctrl + s )` - next session
# `ctrl + s (` - previous session

## [tmux windows]

- Windows are like tabs in a browser. Windows exist in a session and occupy the same of a session screen.

### Key Bindings
# `ctrl + s c` - create window
# `ctrl + s n` - move to next window
# `ctrl + s p` - move to previous window
# `ctrl + s l` - move to last used window
# `ctrl + s 0-9` - select window by number
# `ctrl + s '` - select window by name
# `ctrl + s .` - change window number
# `ctrl + s ,` - rename window
# `ctrl + s f` - search windows
# `ctrl + s &` - kill window
# `ctrl + s w` - list windows

## [tmux panes]

- Panes are sections of windows that have been split into different screens - just like the panes on this cheatsheet.

### Key Bindings
# `ctrl + s %` - vertical split
# `ctrl + s "` - horizontal split
# `ctrl + s →` - move to pane to the right
# `ctrl + s ←` - move to pane to the left
# `ctrl + s ↑` - move up to pane
# `ctrl + s ↓` - move down to pane
# `ctrl + s o` - go to next pane
# `ctrl + s ;` - go to last active pane
# `ctrl + s }` - move pane right
# `ctrl + s {` - move pane left
# `ctrl + s !` - convert pane to window
# `ctrl + s x` - kill pane

## [tmux copy mode]

### Key Bindings
# `ctrl + s [` - enter copy mode
# `ctrl + s ]` - paste from buffer

### Copy Mode Commands
# `ctrl + space` - start selection
# `ctrl + w` - copy selection
# `ctrl + g` - clear selection
# `alt + <` - go to top
# `alt + >` - go to bottom
# `← → ↑ ↓` - move cursor
# `ctrl + s` - search
# `n` - next search
# `PageUp` - scroll page up
# `PageDown` - scroll page down
# `q` - quit
