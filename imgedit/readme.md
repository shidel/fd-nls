This document is specifically for Translators and does not need translated.

Now that ImgEdit has been officially released to the general public. You can
download the [latest version](https://fd.lod.bz/repos/current/pkg-html/imgedit.html)
directly from my DOS Software Repostory in order to test translations. :-)

Actually, ImgEdit and ImgView are two separate programs for one package.  They
don't use the standard NLS directories. Instead, all resources (images, text,
etc) are attached to the executable. This eliminates the need for an end user
to worry about such things.

Also, the utilities to monitor the FD-NLS project don't handle multiple
applications for single projects. Eventually, I'll get around to adding that.
But, in the meantime, I've just mimicked the normal dir structure for the main
program in the ImgEdit project.

Put your translation files in the same directory as ImgEdit. Then simply set
your language *SET LANG=ML* and run ImgEdit. It will see those files and
use them instead of any included translations.

For the __Help text__, rename it to HELPTXT.* (like HELPTXT.TR) and place it
in the same directory as well.

If you notice the font for your language is not correct. Just fetch it from the
[Danger fonts](https://github.com/shidel/fd-nls/tree/master/danger/fonts)
pool here on FD-NLS. Drop that font in the same directory and it will override
the built in font. Oh, and you can easily edit fonts in ImgEdit as well.

Just a few notes on ImgEdit...

First, it is not a photo or picture editor. It is something I needed to make
graphics for my Danger Engine. That engine is far from finished. But, with the
recent update to the video driver, it is much much faster. So if your running
it in DOSBox, you'll no longer need to crank up the Khz. It actually runs much
better now at the default 3000 cycles than previous versions did at over 10,000
cycles. Offloading the image rendering functions from the graphics subsystem
into the driver, resulted in a roughly 15x performance boost for image
related stuff.

ImgEdit doesn't have Undo/Redo. You can only set image/font size from the
command line. Doesn't do sprites yet. Very very limited BMP support. Only edit
images up to 160x160. And numerous other limitations.  But, I did create the
[Danger Engine](https://gitlab.com/DOSx86/sge) logo using it.

It's a side project.

:-)

