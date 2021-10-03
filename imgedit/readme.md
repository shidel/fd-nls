Although not officially released to the general public yet, you can download
a debug copy of [ImgEdit](https://fd.lod.bz/Members-Only/imgedit-211002.zip) in
order to test translations. :-)

Put your translation files in the same directory as ImgEdit. Then simply set
your language *SET LANG=ML* and run ImgEdit. It will see those files and
use them instead of any included translations. If you notice the font for your
language is not correct. Just fetch it from the
[Inferno fonts](https://github.com/shidel/fd-nls/tree/master/inferno/fonts)
pool here on FD-NLS. Drop that font in the same directory and it will override
the built in font. Oh, and you can easily edit it in ImgEdit as well.

Just a few notes on the pre-release version of ImgEdit...

First, it is not a photo or picture editor. It is something I needed to make
graphics for my Inferno Game Engine. That engine is far from finished and the
graphics driver is at a bare minimum. So, most visual stuff is handled by the
general graphics sub-system and overall performance is affected. When the
driver is "done", the sub-system will defer to using it and performance will
improve. Probably a lot. So if your running it in DOSBox, you'll want to
crank up the Khz.

ImgEdit doesn't have Undo/Redo. You can only set image/font size from the
command line. Doesn't do sprites yet. Very very limited BMP support. Only edit
images up to 160x160. And numerous other limitations.  But, I did create the
[Inferno](https://gitlab.com/DOSx86/inferno) logo using it.

It's a side project.

:-)

