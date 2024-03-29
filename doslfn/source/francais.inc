;Texte_franzoesisch:	;(DOS CP850)
 dz	10							;0
 dz    "haute"							;1
 dz    "charg� en consommant %u octets."			;2
 dz 10,"Impossible de trouver/ouvrir le fichier de table Unicode %s !"	;3
 dz 10,"Mauvais contenu du fichier %s ou impossible de lire !"	;4
 dz    "d�sactiv�."						;5
 dz 10,"(Un autre r�sident a pris Int21 et/ou Int2F)"		;6
 dz    "Pas encore install� !"					;7
 dz    "N�cessite au moins un processeur 386 !"			;8
 dz    "option(s) prises"					;9
 db    "	(386+)	++ FREEWARE ++",10			;10
  db   "Programme qui prend en charge les noms de fichiers longs sous DOS.",10
  db   "UTILISEZ CE PROGRAMME � VOS RISQUES, PERTE DE DONN�ES POSSIBLE",10
  db   "Actions :	- (rien)	charger et/ou activer le TSR",10
  db   "		- h ou ?	cette aide",10
  db   "		- d		d�sactiver DOSLFN",10
  db   "		- s		afficher l'�tat et les r�glages",10
ifdef PROFILE
  db   "		- p		afficher les donn�es de profil",10
  db   "		- pr		remettre � z�ro les donn�es de profil",10
  db   "		- pc		calibrer le chronom�trage du profil",10
endif
  db   "		- u		d�charger le TSR (r�sident)",10
  db   "Options :	- w{+|-}	* acc�s en �criture",10
  db   "                - ~{+|-}	* NameNumericTail - utilisation du tilde",10
  db   "		- t{+|-}	* PreserveLongNames - effet tunnel",10
  db   "		- f{+|-}	* mode de repli - fournir le LFN � tous les lecteurs",10
  db   "		- c{+|-}	* prise en charge des CD-ROM",10
  db   "		- i{+|-}	* entrer le verrou via le drapeau InDOS + R�INITIALISER LECTEUR",10
  db   "		- r{+|-}	* bit en lecture seule pour les fichiers CD-ROM",10
if USEWINTIME
  db   "		- o[N]		* d�finir le fuseau horaire N ou le lire si absent",10
endif
  db   "		- z[:|=]table	charger la table Unicode (format Volkov .TBL)",10
  db   "		- m[:|=]octets	d�clarer la taille du tas interne, 600..50000",10
  db   "		- ms[:|=]octets	d�clarer la taille du chemin court, 16..141",10
  db   "		- ml[:|=]octets	d�clarer la taille du chemin long, 16..1024",10
  db   "		- mn[:|=]octets	d�clarer la taille du nom long, 13..512",10
  db   "		- p[:|=]chemin	d�clarer le dossier de travail pour .TBL/.JLT/.386",10
  db   "		- l{d|e|f|t}	d�finir la langue (allemand|anglais|fran�ais|turc)",10
  db   "Environnement : TZ=xxxNyyy	fuseau horaire N pour conversion, pas d'heure d'hiver",10
  db   "E-mail :         %s",10
  db   "T�l�chargement : %s",10
  dz   "                 %s"

 dz    "actif"							;11
 dz    "activ�."						;12
 dz    "enlev� de la m�moire."					;13
 dz    "%7lu acc�s en lecture"					;14
 dz    "%7lu acc�s en �criture"					;15
 dz    "%7lu appels Int21/AH=71"				;16
 dz    "acc�s en �criture"					;17
 dz    "utilisation du tilde"					;18
 dz    "effet tunnel"						;19
 dz    "prise en charge des CD-ROM"				;20
 dz    "mode de repli"						;21
 dz    "Bit en lecture seule d�fini pour les fichiers CD"	;22
 dz    "taille de tas invalide"					;23
 dz    "ACTIF"							;24
 dz    "INACTIF"						;25
 dz    "%35s %s",10						;26
 dz    "le r�pertoire n'existe pas !"				;27
 dz    "impossible de d�finir le r�pertoire de travail"		;28
 dz    "impossible de redimensionner le tas"			;29
 dz    "option rejet�e"						;30
 dz			 " - d�chargez d'abord le r�sident de la m�moire"	;31
 dz    "n�cessite au moins la version 4 de DOS !"		;32
 dz 10,"Ce programme est inutile dans une fen�tre DOS de cette version de Windows !";33
 dz    "Tas: taille=%u, utilis�=%u, libre=%u, max-dispo=%u Octets",10	;34
 dz    "Derni�re erreur : %u - "						;35  =   0
 dz			"l'utilisateur avait refus� l'acc�s en �criture"		;1
 dz			"impossible d'�tendre le r�pertoire FAT"			;2
 dz			"impossible de trouver une table de liens Joliet"		;3
 dz			"pas assez de m�moire - augmentez le tas (heap)"		;4
 dz			"impossible de charger automatiquement la table Unicode"	;5
 dz    "drapeau InDOS et R�INITIALISATION de l'utilisation du lecteur"	;41
if USEWINTIME
 dz    "Le fuseau horaire est"					;42
 dz    "%35s UTC%+d",10						;43
endif
ifdef PROFILE
 dz    "Profil.",10						;ProfileNr
 dz    "Profil r�initialis�.",10				;+1
 dz    "%7lu %2d.%03d %s",10					;+2
 dz    "Calibrage du profil.",10				;+3
 dz    "Constante de chronom�trage du profil = %lu000",10	;+4
 dz    "Erreur d'ex�cution du calibrage",10			;+5
endif
