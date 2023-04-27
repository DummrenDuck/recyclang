import os, strutils, strformat

let dir = getHomeDir() & ".local/share/Trash/files"

for file in walkDir dir:
  if not file.path.splitPath.tail.startsWith("rlc."):
    continue
  
  if file.kind == pcFile:
    removeFile(file.path)
  if file.kind == pcDir:
    removeDir(file.path)

for i, cmd in (readFile paramStr 1).split('\n').join(" ").split(' ').pairs():
  if cmd == "":
    continue
  
  writeFile("{dir}/rlc.{i} {cmd}".fmt, "")
