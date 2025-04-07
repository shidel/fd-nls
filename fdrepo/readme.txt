Some basic information for translators.

FDRepo is not DOS software. It is the back-end server side software that manages the
online download repositories for FreeDOS software packages. All files need to be in
UTF-8 encoding. The FDRepo program does not use files encoded using DOS CodePages for
these translations.

There are two basic different files to translate.

First is the fdrepo.en file. It will be used by FDRepo for the general web page text
when creating the static HTML web pages used to browse the repository. (This file is not
present now. It will be included when FDRepo v3 is closer to completion.)

Second are the individual repository files like latest.en and 1.4.en. These files are
for the individual specific repositories managed by FDRepo. The latest.en file
contains the most text to translate.

Just an FYI, These translation files are not used as-is by FDRepo. The various
translations will combined into single files for the different repositories which contain
all of the different languages along with the master English text.

Note: This file does not need translated. :-)