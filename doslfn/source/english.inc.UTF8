;Texte_englisch:
dz	10							;0
dz    "high"							;1
dz    "loaded consuming %u bytes."				;2
dz 10,"Cannot find/open Unicode table file %s!"		;3
dz 10,"Wrong content of file %s or cannot read!"		;4
dz    "disabled."						;5
dz 10,"(Another TSR grabbed Int21 and/or Int2F)"		;6
dz    "Not yet installed!"					;7
dz    "Requires at least a 386 processor!"			;8
dz    "switch(es) taken"					;9
db    "	(386+)	++ FREEWARE ++",10			;10
 db   "Program that supports long filenames in pure DOS.",10
 db   "USE THIS PROGRAM AT YOUR OWN RISK, DATA LOSS MAY BE POSSIBLE",10
 db   "Actions:	- (nothing)	load and/or enable TSR",10
 db   "		- h or ?	this help",10
 db   "		- d		disable DOSLFN",10
 db   "		- s		show status and settings",10
ifdef PROFILE
 db   "		- p		show profile data",10
 db   "		- pr		reset profile data",10
 db   "		- pc		calibrate profile timing",10
endif
 db   "		- u		unload TSR",10
 db   "Switches:	- w{+|-}	* write access",10
 db   "		- ~{+|-}	* NameNumericTail - tilde usage (I hate snakes)",10
 db   "		- t{+|-}	* PreserveLongNames - tunnel effect",10
 db   "		- f{+|-}	* fallback mode - supply LFN for all drives",10
 db   "		- c{+|-}	* CDROM support",10
 db   "		- i{+|-}	* reenter lock via InDOS flag + RESET DRIVE",10
 db   "		- r{+|-}	* read-only bit for CDROM files",10
if USEWINTIME
 db   "		- o[N]		* set time zone N or read TZ if absent",10
endif
 db   "		- z[:|=]table	load Unicode table (format Volkov .TBL)",10
 db   "		- m[:|=]bytes	declare size of internal heap, 600..50000",10
 db   "		- ms[:|=]bytes	declare size of short path, 16..141",10
 db   "		- ml[:|=]bytes	declare size of long path, 16..1024",10
 db   "		- mn[:|=]bytes	declare size of long name, 13..512",10
 db   "		- p[:|=]path	declare working directory for .TBL/.JLT/.386",10
 db   "		- l{d|e|f|t}	set language (German|English|French|Turkish)",10
 db   "Environment:	TZ=xxxNyyy	time zone N for time conversion, no DST
usage",10
 db   "Email:    %s",10
 db   "Download: %s",10
 dz   "          %s"

dz    "active"							;11
dz    "enabled."						;12
dz    "removed from memory."					;13
dz    "%7lu read accesses"					;14
dz    "%7lu write accesses"					;15
dz    "%7lu Int21/AH=71 calls"					;16
dz    "write access"						;17
dz    "tilde usage"						;18
dz    "tunnel effect"						;19
dz    "CDROM support"						;20
dz    "fallback mode"						;21
dz    "Read-Only bit set on CD files"				;22
dz    "invalid heap size"					;23
dz    "ON"							;24
dz    "OFF"							;25
dz    "%35s %s",10						;26
dz    "directory doesn't exist!"				;27
dz    "cannot set workdir"					;28
dz    "cannot resize heap"					;29
dz    "switch rejected"					;30
dz			 " - unload TSR first"			;31
dz    "requires at least DOS version 4!"			;32
dz 10,"This program is useless in a DOS box of this Windows version!";33
dz    "Heap: size=%u, used=%u, free=%u, max-avail=%u Bytes",10 ;34
dz    "Last error: %u - "					;35  =   0
dz			"user had denied write access"			;1
dz			"couldn't expand FAT directory"			;2
dz			"couldn't find a Joliet Link Table"		;3
dz			"not enough memory - increase heap"		;4
dz			"couldn't auto-load Unicode table"		;5
dz    "InDOS flag and RESET drive usage"			;41
if USEWINTIME
dz    "Timezone is"						;42
dz    "%35s UTC%+d",10						;43
endif
ifdef PROFILE
dz    "Profile.",10						;ProfileNr
dz    "Profile reset.",10					;+1
dz    "%7lu %2d.%03d %s",10					;+2
dz    "Calibrating profile.",10				;+3
dz    "Profile timing constant = %lu000",10			;+4
dz    "Error running calibration",10				;+5
endif