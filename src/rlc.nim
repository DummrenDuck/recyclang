import os, sugar, algorithm, strutils

#[
  pls - prints "my name is giovanni giorgio but everybody calls me giorgio"
  let - moves cursor left
  me - moves cursor right
  out - increments current cell value
  of - decrements current cell value
  this - prints current cell value
  recycle - prints current cell value as a char
  bin - breaks line
]#

var lines: seq[string] = newSeq.collect:
  for file in walkDir(getHomeDir() & "/.local/share/Trash/files"):
    let fn = file.path.splitPath.tail
    
    if fn.startsWith("rlc."):
      fn

lines.sort do (x, y: string) -> int:
  let xSus = x["rlc.".len..x.find(" ") - 1].parseInt
  let ySus = y["rlc.".len..y.find(" ") - 1].parseInt
  
  result = cmp(xSus, ySus)

for i in 0..lines.len - 1:
  let line = lines[i]
  lines[i] = line[line.find(" ") + 1..line.len - 1]

var data: array[30000, int]
var pos = 0

for line in lines:
  case line:
    of "pls":
      stdout.write "my name is giovanni giorgio but everybody calls me giorgio"
    of "let":
      pos -= 1
    of "me":
      pos += 1
    of "out":
      data[pos] += 1
    of "of":
      data[pos] -= 1
    of "this":
      stdout.write data[pos]
    of "recycle":
      stdout.write data[pos].char
    of "bin":
      echo ""
    else:
      discard

echo ""
