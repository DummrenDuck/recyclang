# Recyclang
i don't know why i made this **GARBAGE** xD

# Installation
```bash
git clone https://github.com/DummrenDuck/recyclang.git
cd recyclang
nimble install
```

# Usage
recyclang uses commands:

`pls` - prints "my name is giovanni giorgio but everybody calls me giorgio"

`let` - moves cursor left

`me` - moves cursor right

`out` - increments current cell value

`of` - decrements current cell value

`this` - prints current cell value

`recycle` - prints current cell value as a char

`bin` - breaks line

each command should be placed into `~/.local/share/Trash/files` (regular recycle bin on most linux distros) with pattern `rlc.N X"`, where `N` is line number and `X` is a command. to run program you simply need to execute `rlc`. program will automatically find your recycle bin path.
if you don't want to manually create and place all the files into the recycle bin, you can simply create a text file and place all the commands into it (separated by spaces or line breaks) and then execute `rlw file` to convert commands to files and place into the recycle bin. all the previous files starting with `rlc.` will be deleted.
