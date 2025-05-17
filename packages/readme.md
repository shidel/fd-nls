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
and Keyword fields. Other fields, like TITLE generally do not get translated.

To assist in translating, the update.sh script can be used. It will retrieve
the latest listing.csv files from the on-line repositories and generate
a master.csv. It will also examine each language translation listing.csv files
a create a new mixed.csv file. The mixed.csv will contain the current
translated entries and plus untranslated entries marked in their "new" field.

When complete, submit updated "mixed.csv" as the new "listing.csv" file.

Please note, you will need place the CSV for your language in a language
subdirectory. Also, probably a Codepage & UTF-8 version of the listing.csv as well.
See the existing translations for languages like FR & TR for examples.

Note: The CSV update utility will choose either the CODE PAGE version or the UTF-8
version of the listing.csv file based of the on which is newer. It will then replace
the older of the two automatically.
