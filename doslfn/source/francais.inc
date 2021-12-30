;Texte_franzoesisch:	;(DOS CP850)
 dz	10							;0
 dz    "haute"							;1
 dz    "chargÇ en consommant %u octets."			;2
 dz 10,"Impossible de trouver/ouvrir le fichier de table Unicode %s !"	;3
 dz 10,"Mauvais contenu du fichier %s ou impossible de lire !"	;4
 dz    "dÇsactivÇ."						;5
 dz 10,"(Un autre rÇsident a pris Int21 et/ou Int2F)"		;6
 dz    "Pas encore installÇ !"					;7
 dz    "NÇcessite au moins un processeur 386 !"			;8
 dz    "option(s) prises"					;9
 db    "	(386+)	++ FREEWARE ++",10			;10
  db   "Programme qui prend en charge les noms de fichiers longs sous DOS.",10
  db   "UTILISEZ CE PROGRAMME ∑ VOS RISQUES, PERTE DE DONNêES POSSIBLE",10
  db   "Actions :	- (rien)	charger et/ou activer le TSR",10
  db   "		- h ou ?	cette aide",10
  db   "		- d		dÇsactiver DOSLFN",10
  db   "		- s		afficher l'Çtat et les rÇglages",10
ifdef PROFILE
  db   "		- p		afficher les donnÇes de profil",10
  db   "		- pr		remettre Ö zÇro les donnÇes de profil",10
  db   "		- pc		calibrer le chronomÇtrage du profil",10
endif
  db   "		- u		dÇcharger le TSR (rÇsident)",10
  db   "Options :	- w{+|-}	* accäs en Çcriture",10
  db   "                - ~{+|-}	* NameNumericTail - utilisation du tilde",10
  db   "		- t{+|-}	* PreserveLongNames - effet tunnel",10
  db   "		- f{+|-}	* mode de repli - fournir le LFN Ö tous les lecteurs",10
  db   "		- c{+|-}	* prise en charge des CD-ROM",10
  db   "		- i{+|-}	* entrer le verrou via le drapeau InDOS + RêINITIALISER LECTEUR",10
  db   "		- r{+|-}	* bit en lecture seule pour les fichiers CD-ROM",10
if USEWINTIME
  db   "		- o[N]		* dÇfinir le fuseau horaire N ou le lire si absent",10
endif
  db   "		- z[:|=]table	charger la table Unicode (format Volkov .TBL)",10
  db   "		- m[:|=]octets	dÇclarer la taille du tas interne, 600..50000",10
  db   "		- ms[:|=]octets	dÇclarer la taille du chemin court, 16..141",10
  db   "		- ml[:|=]octets	dÇclarer la taille du chemin long, 16..1024",10
  db   "		- mn[:|=]octets	dÇclarer la taille du nom long, 13..512",10
  db   "		- p[:|=]chemin	dÇclarer le dossier de travail pour .TBL/.JLT/.386",10
  db   "		- l{d|e|f|t}	dÇfinir la langue (allemand|anglais|franáais|turc)",10
  db   "Environnement : TZ=xxxNyyy	fuseau horaire N pour conversion, pas d'heure d'hiver",10
  db   "E-mail :         %s",10
  db   "TÇlÇchargement : %s",10
  dz   "                 %s"

 dz    "actif"							;11
 dz    "activÇ."						;12
 dz    "enlevÇ de la mÇmoire."					;13
 dz    "%7lu accäs en lecture"					;14
 dz    "%7lu accäs en Çcriture"					;15
 dz    "%7lu appels Int21/AH=71"				;16
 dz    "accäs en Çcriture"					;17
 dz    "utilisation du tilde"					;18
 dz    "effet tunnel"						;19
 dz    "prise en charge des CD-ROM"				;20
 dz    "mode de repli"						;21
 dz    "Bit en lecture seule dÇfini pour les fichiers CD"	;22
 dz    "taille de tas invalide"					;23
 dz    "ACTIF"							;24
 dz    "INACTIF"						;25
 dz    "%35s %s",10						;26
 dz    "le rÇpertoire n'existe pas !"				;27
 dz    "impossible de dÇfinir le rÇpertoire de travail"		;28
 dz    "impossible de redimensionner le tas"			;29
 dz    "option rejetÇe"						;30
 dz			 " - dÇchargez d'abord le rÇsident de la mÇmoire"	;31
 dz    "nÇcessite au moins la version 4 de DOS !"		;32
 dz 10,"Ce programme est inutile dans une fenàtre DOS de cette version de Windows !";33
 dz    "Tas: taille=%u, utilisÇ=%u, libre=%u, max-dispo=%u Octets",10	;34
 dz    "Derniäre erreur : %u - "						;35  =   0
 dz			"l'utilisateur avait refusÇ l'accäs en Çcriture"		;1
 dz			"impossible d'Çtendre le rÇpertoire FAT"			;2
 dz			"impossible de trouver une table de liens Joliet"		;3
 dz			"pas assez de mÇmoire - augmentez le tas (heap)"		;4
 dz			"impossible de charger automatiquement la table Unicode"	;5
 dz    "drapeau InDOS et RêINITIALISATION de l'utilisation du lecteur"	;41
if USEWINTIME
 dz    "Le fuseau horaire est"					;42
 dz    "%35s UTC%+d",10						;43
endif
ifdef PROFILE
 dz    "Profil.",10						;ProfileNr
 dz    "Profil rÇinitialisÇ.",10				;+1
 dz    "%7lu %2d.%03d %s",10					;+2
 dz    "Calibrage du profil.",10				;+3
 dz    "Constante de chronomÇtrage du profil = %lu000",10	;+4
 dz    "Erreur d'exÇcution du calibrage",10			;+5
endif
