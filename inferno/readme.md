This directory does not require actual translations. It contains a pool of
all fonts used by programs that run on top of the Inferno Game Engine.

Inferno based programs select a _best fitting_ font based on language,
requested size and type. Finally, falling back on English versions when no
suitable font is found.

For example, ImgEdit uses 2 fonts at present 10x12 and 8x8. So, if the language
is set to TR, the 1012N-TR.FNT will be used for 10x12 characters. However,
since no smaller size is provided that fits in the 8x8 requirement, the
0808N-EN.FNT will get loaded for that size.