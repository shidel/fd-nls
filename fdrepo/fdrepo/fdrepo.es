[common]

	; text for when the page was last modified
	; %1 is the timestamp. For now, the timestamp itself
	; is not translated. I may change that later on.
	; the value of %1 will be something like "Sat Apr 26 12:29:13 EDT 2025"
	Page_modified=página modificada por última vez el %1

	; this is the text and absolute/relative url for the web page above the repository.
	; This is only inserted into the Navigation bar when both navbar values are set
	; and the "NavBar_parent" is true in the fdrepo.conf file. Depending on other
	; settings the NavBar Items in [*] may or may not be present. But generally,
	; it will look something like this:
	; [HOME_PAGE] > [NavBar_Text] > [Repo list] > repo > group > package > version
	NavBar_URL=
	NavBar_Text=
	NavBar_Repos=Repositorios

	; %1 is a comma separate list of available languages
	Page_languages=Available languages: %1

	Required=Requerido
	Thousands=,
	File_bytes=%1 bytes
	Language=Español

[repositories]
	; List of all repositories on server

	; %1 is server "name" defined in config file.
	; Something like "FreeDOS" or "FD.LOD.BZ"
	Page_Title=%1 repositorios
	Heading=Lista de repositorios disponibles en %1

[repository]
	; Index of all groups for a single repository

	; %1 is [Repository]/Caption defined in individual repository NLS
	; Something like "Latest and Unstable"
	Page_Title=%1
	Heading=%1 grupos de paquetes
	Count=%1 aquetes
	Single=un paquete
	Footing=%1 paquetes en total

	; %1 is CSV_Link Text
	; %2 is repository caption, like "Latest and Unstable Repository"
	CSV=Descargue el %1 para el %2.
	CSV_Link=Paquete CSV

	; %1 is Chart_Link Text
	Chart=Ver el paquete del repositorio %1.
	Chart_Link=Cuadro comparativo

	; %1 is the RSS_Link Text
	RSS=Suscríbete al canal RSS %1.
	RSS_Link=Actualización del paquete

	; %1 is likely FDNPKG
	Config=Descargue el archivo de configuración %1.

	; %1 is an ISO file
	ISO=Descargue todos los paquetes más recientes como %1.

[group]
	; Index of all packages in a single group

	; %1 is [*]/Caption defined in individual repository NLS
	; Something like "Applications", "FreeDOS Base", etc
	Page_Title=%1
	Heading=Grupo de paquetes %1
	Count=%1 paquetes
	Single=un paquete
	Version=versión %1
	Modified=modificado %1

[package]
	; Package information and download page

	; %1 is the package ID.
	; %2 is the package Version.
	; Since, the ID or Version package metadata should not generally be translated,
	; these use only the english versions of that data.
	; Something like "blkdrop - 0.2"
	Page_Title=%1 - %2
	; %1 is Package Title, like "Doszip Commander"
	; %2 is something like "doszip"
	; %3 and %4 are parenthesis ( )
	; Heading=Package %1 %3%2%4
	Heading=Paquete %1
	One_Version=no hay otras versiones
	Two_Versions=otra versión
	; %1 is the number of alternative versions of the package
	More_Versions=%1 versiones alternativas

[compare]
	; Comparison of Repository to Various OS Releases

	Page_Title=Comparar %1
	NavBar_Text=comparar
	HeadingComparación de %1 con las versiones del sistema operativo
	Identical=Idéntico al paquete anterior.
	Modified=Misma versión con ligeros cambios.

[lsm]
    ; LSM Metadata Field Name Translations

	Title=Título
	Version=Versión
	Modified_date=Fecha de modificación
	Entered_date=Fecha de entrada
	Description=Descripción
	Summary=Resumen
	Changes=Cambios
	Author=Autor
	Maintained_by=Mantenido por
	Maintainer=Mantenido por
	Copying_policy=Política de copia
	Keywords=Palabras clave
	Platforms=Plataformas
	Wiki_site=Sitio wiki
	Primary_site=Sitio principal
	Alternate_site=Sitio alternativo
	Original_site==Sitio original
	Long_file_names=Nombres largos de archivo
	crc32=CRC32
	md5=MD5
	sha=SHA1
	File_size=Tamaño del paquete
	Download=Descargar
