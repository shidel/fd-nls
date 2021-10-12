( New pre-release coming very soon... It has numerous bug fixes and additional
features in it. Probably be available on 10/13 sometime. It contains several
new menu items as well. )

Although not officially released to the general public yet, you can download
a debug copy of [ImgEdit](https://fd.lod.bz/Members-Only/imgedit-211002.zip) in
order to test translations. :-)

Actually, ImgEdit and ImgView are two separate programs for one package.  They
don't use the standard NLS directories. Instead, all resources (images, text,
etc) are attached to the executable. This eliminates the need for an end user
to worry about such things.

Also, the utilities to monitor the FD-NLS project don't handle multiapplication
for single projects. Eventually, I'll get around to adding that. But, in the
meantime, I've just mimicked the normal dir structure for the main program
in the ImgEdit project.

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

