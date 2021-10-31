The Danger Engine was previously called the Inferno Game Engine. But, I
recently found an existing project called Inferno. So, to avoid confusion and
any conflicts, my game engine was renamed. The new name is mostly just a
"working title" and I'm not sure if I'll stick with it.

This directory does not require actual translations. It contains a pool of
all fonts used by programs that run on top of the Danger Engine.

Danger based programs select a _best fitting_ font based on language,
requested size and type. Finally, falling back on English versions when no
suitable font is found.

For example, ImgEdit uses 2 fonts at present 10x12 and 8x8. So, if the language
is set to TR, the 1012N-TR.FNT will be used for 10x12 characters. However,
since no smaller size is provided that fits in the 8x8 requirement, the
0808N-EN.FNT will get loaded for that size. If you use ImgEdit to create or
edit a font, the different formats are handled automatically and transparently.
Other editors will not be capable of creating fonts wither than 8 bits that
are compatible with ImgEdit or the Danger Engine.

The first letter following the font size is the basic style idenifier.
N, T, B & I stand for normal, thin, bold and italic.

The - is kinda reserved for future use. Eventually, it will probably be for
other typeface information. Maybe things like Sarif, Gothic, etc.

On a side note, ImgEdit uses two font file formats. Eight bit wide fonts are
always saved in a flat font bitmap file compatible with most programs that can
load fonts (like VFONT and other utilities). For fonts more than 8-bits wide,
it automatically switches to a new font file format. Obviously, the wider fonts
will only work in programs that support that format.

If you desire creating/updating fonts, I currently suggest the following order
of importance...

    10x12
    08x08
    08x16

Of much less importance at present. However, when additional higher resolution
video drivers are added, that may change. For now, fonts taller than 12 pixels
high are too big for most things in resolutions less than 640x480.

    14x16
    12x14
    08x20
    08x18
    08x12
    08x14
    08x10

Additional sizes and types can be provided as well. :-)
