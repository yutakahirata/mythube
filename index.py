#!/usr/local/bin/python3.4
# -*- coding: utf-8 -*-
import lib_ja,bottle,glob,dt
from collections import OrderedDict
from pathlib import Path
flist=list(Path('./video').glob('**/*.mp4'))
flist.sort()
flist=[str(x) for x in flist]
h=bottle.template("index.tpl",dict(title="MyTube",msg="",menu=dt.get(),submenu=dt.sMenu(),flist=flist[::-1]))
print(h)
