# FreeDOS Package Index List

These are multi-language listings for FreeDOS packages. They are used by
software like FDIMPLES to provide native language descriptions for packages
supplied on the FreeDOS release media and other locations. Eventually,
the support for multi-language listings may be added online repositories as
well.

The latest ENGLISH version is created and maintained automatically by the
Official FreeDOS Software Repository online at:

http://www.ibiblio.org/pub/micro/pc-stuff/freedos/files/repositories/latest/listing.csv

If you wish to provide an new language translation, or updates to an existing
translation, you should use (or at least review) the latest English version to
include any new software packages. Simply translate the Description, Summary
and Keyword fields. Other fields, like TITLE do not get or use multi-language
translations.

To assist in translating, the status.sh script can be used. It will retrieve
the latest listing.csv files from the on-line repositories and generate
a master.csv. It will also examine each language translation listing.csv and
create two additional files. A missing.csv that contains only the entries that
have not been translated. Also created is a mixed.csv that contains the current
translated entries and those marked in their "new" field.

Generally, you should work on translating the "new" items in the "mixed.csv"
file. When complete, submit it as the new "listing.csv" file.


