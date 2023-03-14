## V8Turbo font files

V8Turbo, V8Micro and V8TurboX all use the same font files. These fonts are
automatically applied whenever the Language is changed in the shell. To use
a different font system or to just prevent the shell from applying the
appropriate font when changing languages, use the /N switch with the LANG
command. The /N switch will also prevent the shell from resetting the font
when no font is provided for a language.

Font switching is only supported on computers with EGA or better graphics. On
lesser hardware, fonts are not loaded and no switching is attempted.

On supported systems, the font that is loaded for a specific translation is
based on the first recommended codepage (index key 00,0002) and the video
display and the files are named accordingly.

Font file names are CPnnn-hh.FNT. Where nnn is a 3 digit codepage and hh is the
vertical height of the characters. 14 is the height for EGA and 16 is the height
for VGA or better systems. At present, only CPnnn-16.FNT files are provided.

At present, font files need to be located in either the same directory as the
shell or in the directory with the translation files.

Eventually, custom heights along with the ability to select those may be added
to the LANG command in the shell.

The shell can switch, load or reload translations and fonts at any time. When I
get around to adding support to execute external commands (programs and such),
it will make it very easy to edit and test translations. :-)
