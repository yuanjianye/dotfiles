#!/usr/bin/env python3
import sys
for i in sys.argv[1:]:
    print(i)

mlist = "".join(sys.argv[1:]).split("/")
win_path = "z:" + "\\".join(mlist)
print(win_path)
