# Language: Brazil Port.
# File ending: PB
# Codepage: 858
# This translation was made by Google Gemini.
# Please help the FreeDOS group to improve it.

	Documentaá∆o de uso do programa Free-DOS MODE

	(c) Copyright 1994-1995 por K. Heidenstrom.

	Modificado:

	KH.19941231.001  (MODE 1.0.0)  Primeira vers∆o
	KH.19950116.002  (MODE 1.0.2)  Adicionada documentaá∆o do switchar
	KH.19950520.003  (MODE 1.0.3)  Sem alteraá‰es na funcionalidade
	KH.19950805.004  (MODE 1.0.4)  Adicionadas opá‰es de modificadores
	(shift-state)


1.  LEGAL

	Este programa Ç Copyright 1994-1995 por K. Heidenstrom. Foi escrito
	especificamente para o projeto Free-DOS. O autor pode ser contatado
	em kheidens@actrix.gen.nz na Internet ou por correio:
	K. Heidenstrom c/- P.O. Box 27-103, Wellington, New Zealand.

	Este programa Ç software livre. Vocà pode redistribuir o c¢digo fonte e
	o execut†vel e/ou modificar o programa sob os termos da GNU General
	Public License conforme publicada pela Free Software Foundation; tanto a
	vers∆o 2 da Licenáa, ou (Ö sua escolha) qualquer vers∆o posterior.

	Este programa Ç distribu°do na esperanáa de que seja £til, mas Ç
	fornecido "como est†", sem qualquer garantia de qualquer tipo,
	incluindo a garantia impl°cita de comercializaá∆o ou adequaá∆o a um
	prop¢sito espec°fico. Em nenhum caso o autor ser† respons†vel por
	quaisquer danos de qualquer tipo relacionados ao uso deste programa.
	Consulte a GNU General Public License para mais detalhes.

	Vocà deve ter recebido uma c¢pia da GNU General Public License junto
	com este programa; se n∆o, escreva para a Free Software Foundation,
	Inc., 675 Mass Ave, Cambridge, MA 02139, USA.

2.  FUNÄ«O E SINTAXE DE USO

	O programa MODE executa seis funá‰es distintas, que s∆o descritas
	separadamente abaixo.

2.1.  DEFINIR MODO DE V÷DEO E NÈMERO DE LINHAS DA TELA

	O MODE permite que o modo de v°deo seja definido para um de cinco modos.
	A sintaxe Ç:

	MODE Mododevideo[,Linhas]

	Os modos s∆o:

	MONO	Modo monocrom†tico, como usado com as placas MDA e Hercules,
		e tambÇm emulado em placas EGA e VGA. Este modo Ç o £nico
		que possui a capacidade de sublinhar caracteres na tela por
		padr∆o. Este modo n∆o pode ser selecionado na placa CGA.

	BW40	Modo de 40 colunas com cor suprimida. Este modo Ç espec°fico
		do adaptador CGA e oferece uma exibiá∆o de 40 colunas por 25
		linhas. A informaá∆o de cor do sinal de v°deo composto da
		placa CGA Ç desligada, para que a exibiá∆o seja em preto e
		branco em um monitor de cor composto, com dezesseis tons de
		cinza.
		Se este modo for selecionado em uma placa EGA ou VGA, ou em uma
		placa CGA que n∆o esteja conectada a uma televis∆o ou a um
		monitor de cor composto, ele aparecer† igual ao modo CO40 (ou
		seja, a cor n∆o ser† suprimida). Este modo n∆o pode ser
		selecionado em placas de v°deo MDA e Hercules.

	BW80	Modo de 80 colunas com cor suprimida. Este modo tambÇm Ç
		espec°fico do adaptador CGA e Ç o mesmo que o BW40, exceto
		que existem 80 colunas.
		Se este modo for selecionado em uma placa EGA ou VGA, ou em uma
		placa CGA que n∆o esteja conectada a uma televis∆o ou a um
		monitor de cor composto, ele aparecer† igual ao modo CO80 (ou
		seja, a cor n∆o ser† suprimida). Este modo n∆o pode ser
		selecionado em placas de v°deo MDA e Hercules.

	CO40	Modo colorido de 40 colunas. Este modo oferece exibiá∆o colorida
		de 40 colunas por 25 linhas. ê suportado pelos adaptadores CGA,
		EGA e VGA, mas n∆o pelas placas MDA e Hercules.

	CO80	Modo colorido de 80 colunas. Este modo oferece uma exibiá∆o de
		80 colunas por 25 linhas e Ç o modo de exibiá∆o normal para
		placas CGA, EGA e VGA. N∆o Ç suportado pelas placas MDA e
		Hercules. Em placas EGA, este modo tambÇm suporta uma variante
		de 43 linhas e, em placas VGA, a variante de 43 linhas e uma
		variante de 50 linhas s∆o suportadas.

		Os modos de 43 e 50 linhas podem ser selecionados especificando
		",43" ou ",50" ap¢s o CO80 na linha de comando do MODE. Se
		este parÉmetro n∆o for especificado, o padr∆o de 25 linhas
		ser† usado.

	Uma vez definido, o modo de v°deo permanecer† em vigor atÇ ser alterado
	por um comando MODE ou por um programa. O modo de v°deo n∆o Ç
	bloqueado permanentemente - os programas s∆o livres para alterar os
	modos de v°deo conforme necess†rio.

2.2.  CONFIGURAR PAR∂METROS DA PORTA SERIAL

	O MODE permite que os parÉmetros de comunicaá∆o de uma porta serial
	sejam configurados. A sintaxe Ç:

	MODE COMn:r,p,d,s

	n	Especifica qual porta serial ser† configurada, no intervalo de
		1 a 4. Se a porta serial n∆o existir, o MODE relatar† um erro.

	r	Especifica a taxa de transmiss∆o (baud) em bits por segundo.
		Os valores s∆o: 50, 110, 150, 300, 600, 1200, 2400, 4800, 9600,
		14400, 19200, 28800, 38400, 57600 e 115200.

		1200, 2400, 4800 e 9600 podem ser abreviados para 12, 24, 48 e
		96, respectivamente. 14400, 19200, 28800, 38400 e 57600 podem
		ser abreviados para seus primeiros dois ou tràs d°gitos.
		115200 pode ser abreviado para 115 ou 1152.

	p	Especifica o tipo de paridade gerada e verificada nos bytes de
		dados. Os valores s∆o:

		E = Paridade par (Even)
		O = Paridade °mpar (Odd)
		N = Nenhuma paridade (No parity)

	d	Especifica o n£mero de bits de dados que ser∆o transmitidos e
		recebidos. Os valores permitidos s∆o 5, 6, 7 e 8.

	s	Especifica o n£mero de bits de parada (stop bits) que ser∆o
		transmitidos e esperados. Pode ser 1 ou 2. Se 2 bits de parada
		forem usados em conjunto com 5 bits de dados, a porta serial
		ir† gerar e verificar 1 1/2 bits de parada.

	Uma vez definidos, os parÉmetros da porta serial permanecer∆o em vigor
	atÇ serem alterados por um comando MODE ou por um programa. As
	configuraá‰es da porta serial n∆o s∆o bloqueadas permanentemente - os
	programas s∆o livres para alter†-las conforme necess†rio.

2.3.  REDIRECIONAMENTO DE PORTA PARALELA E TENTATIVAS INFINITAS

	O MODE permite que a sa°da da porta paralela (LPT) seja redirecionada
	para uma porta serial (COM), para NUL (ou seja, nada), e tambÇm pode
	tentar indefinidamente se o perifÇrico n∆o responder.

	Essas funá‰es s∆o executadas pela parte residente do MODE, que ser†
	instalada automaticamente, se necess†rio, quando a funá∆o for
	solicitada.

	A sintaxe Ç:

	MODE LPTn:P		Tempo de espera infinito na porta paralela
	MODE LPTn:=COMx		Redirecionar sa°da da impressora para porta COM
	MODE LPTn:=NUL:		Redirecionar sa°da da impressora para NUL
	MODE LPTn:		Remover redirecionamento e tempo de espera infinito

	A funá∆o LPTn:P especifica tentativas infinitas no tempo de espera
	(timeout). Se isso estiver ativado, o MODE tentar† continuamente se a
	impressora n∆o responder. Se n∆o estiver ativado, e a impressora n∆o
	responder dentro de um determinado per°odo de tempo (normalmente cerca
	de meio minuto), um erro de falha de gravaá∆o ser† relatado.

	As funá‰es LPTn:=COMx e LPTn:=NUL: especificam o redirecionamento da
	sa°da da impressora. Qualquer porta paralela (existente ou n∆o) pode
	ser redirecionada para qualquer porta serial existente ou para NUL.
	Mais de uma porta paralela pode ser redirecionada para a mesma porta
	serial ou para NUL. Essas funá‰es s∆o £teis se vocà tiver uma
	impressora serial ou se n∆o tiver impressora e quiser evitar que o
	computador trave se um programa tentar imprimir em uma impressora
	inexistente.

	A funá∆o LPTn: remove qualquer redirecionamento e tempo de espera
	infinito que possa estar configurado para a porta especificada e a
	retorna Ö operaá∆o normal.

2.4.  FUNÄÂES DE ESTACIONAMENTO DE DISCO R÷GIDO (PARK)

	O MODE estacionar† o disco r°gido ou discos r°gidos (apenas os dois
	primeiros discos r°gidos f°sicos no sistema), imediatamente ou ap¢s
	o disco ficar inativo por um per°odo de tempo.

	A funá∆o de estacionamento temporizado Ç executada pela parte residente
	do MODE, que ser† instalada automaticamente, se necess†rio.

	A sintaxe Ç:

	MODE PARK			Estacionar agora (Park)
	MODE PARK,minutos[:segundos]	Estacionar ap¢s o disco ficar inativo

	A funá∆o PARK estaciona o(s) disco(s) r°gido(s) imediatamente e espera
	que vocà desligue o computador. Vocà tambÇm pode pressionar Ctrl-C para
	sair e retornar ao DOS.

	A funá∆o PARK,minutos[:segundos] faz com que o(s) disco(s) r°gido(s)
	sejam estacionados ap¢s um certo per°odo de inatividade, que pode
	ser de atÇ 50 minutos. Se vocà tiver dois discos r°gidos f°sicos,
	ambos s∆o tratados separadamente.

	Uma vez definido, vocà pode alterar o per°odo de tempo executando o
	comando novamente com um valor de tempo diferente. A funá∆o de
	estacionamento temporizado n∆o pode ser desligada - vocà deve
	reiniciar para removà-la.

	Essas funá‰es geralmente s∆o £teis apenas para m†quinas antigas.
	Discos r°gidos modernos se estacionam automaticamente ao serem
	desligados.

2.5.  FUNÄÂES TYPEMATIC (REPETIÄ«O DE TECLADO)

	O MODE permite que os parÉmetros de atraso inicial de repetiá∆o e taxa
	de repetiá∆o (typematic) sejam definidos e, opcionalmente, bloqueados.

	A funá∆o de bloqueio de typematic Ç executada pela parte residente do
	MODE, que ser† instalada automaticamente, se necess†rio, quando a
	funá∆o for solicitada.

	A sintaxe Ç:

	MODE DELAY=d RATE=r		Definir parÉmetros typematic
	MODE DELAY=d RATE=r LOCK	Definir e bloquear parÉmetros typematic

	d	Especifica o atraso inicial, o intervalo Ç de 1 a 4 e o atraso
		Ç entre 1/4 de segundo (1) e um segundo (4).

	r	Especifica a taxa de repetiá∆o autom†tica. O intervalo Ç de 1
		a 32 e a taxa Ç entre duas repetiá‰es por segundo (1) e 30
		repetiá‰es por segundo (32).

	LOCK	Especifica que os parÉmetros typematic devem ser bloqueados.
		Uma vez feito isso, os parÉmetros podem ser alterados
		executando o MODE novamente, mas n∆o podem ser alterados pela
		maioria dos outros programas. Isso pode ser £til, pois alguns
		programas alteram os parÉmetros sem sua permiss∆o. N∆o Ç, no
		entanto, completamente infal°vel.

	Observe que tanto DELAY quanto RATE devem ser especificados para essas
	funá‰es.

	O MODE n∆o tenta confirmar se a configuraá∆o typematic est† dispon°vel
	na m†quina. O MODE aceitar† todos os comandos typematic, quer a
	m†quina realmente os suporte ou n∆o.

2.6.  FUNÄÂES SWITCHAR

	O MODE pode exibir e definir o caractere de opá∆o do DOS (switchar).
	O switchar padr∆o Ç a barra normal, '/'. O switchar Ç o caractere usado
	para indicar o in°cio de uma opá∆o, por exemplo, a opá∆o /P no comando
	DIR. Normalmente, o switchar pode ser alterado para '-'. O switchar Ç
	um recurso n∆o documentado do DOS que Ç suportado corretamente por
	poucos programas.

	A sintaxe Ç:

	MODE SWITCHAR			Exibir switchar atual
	MODE SWITCHAR=x			Definir switchar para o caractere x
	MODE SWITCHAR=n			Definir switchar para o valor ASCII n

	O parÉmetro SWITCHAR por si s¢ faz com que o MODE exiba o switchar
	atual. O uso de SWITCHAR= define o switchar. O novo switchar pode ser
	especificado como um caractere (ex: 'MODE SWITCHAR=/') ou como um
	n£mero (ex: 'MODE SWITCHAR=45').

2.7.  FUNÄÂES MODIFICADORAS (ESTADO DE SHIFT)

	O MODE pode alterar os tràs estados de alternÉncia (caps lock, numlock
	e scroll lock). Esta funá∆o n∆o deve ser usada em m†quinas com teclados
	originais de PC ou XT, porque os LEDs indicadores nesses teclados n∆o
	podem ser controlados pelo computador e ficar∆o dessincronizados com
	os estados do computador. O MODE n∆o detecta essas m†quinas, no
	entanto. Em ATs e m†quinas posteriores, n∆o h† problema.

	A sintaxe de parÉmetros para este comando consiste nas seguintes
	opá‰es:

		CAPSLOCK=ON	CAPSLOCK=OFF
		NUMLOCK=ON	NUMLOCK=OFF
		SCRLOCK=ON	SCRLOCK=OFF

	Qualquer combinaá∆o n∆o conflitante e n∆o duplicada dessas opá‰es Ç
	permitida. AlÇm disso, SCRLOCK pode ser expandido para SCROLLLOCK.

3.  GERAL

	Os parÉmetros para o MODE n∆o diferenciam mai£sculas de min£sculas.

	O MODE s¢ pode processar um comando em cada chamada. Se vocà deseja
	redirecionar v†rias portas LPT, deve usar um comando MODE separado
	para cada uma. Comandos de tipos diferentes n∆o podem ser combinados
	na linha de comando.

	Mensagens de erro s∆o sempre enviadas para StdErr. Mensagens de
	informaá∆o s∆o enviadas para a sa°da padr∆o e podem ser redirecionadas
	para NUL: para uma operaá∆o silenciosa.

	Os Errorlevels retornados pelo MODE s∆o os seguintes:

	0	Nenhum erro
	115	A porta serial n∆o existe (para COMn: ou LPTn:=COMx)
	117	Nenhum disco r°gido encontrado para estacionar
	118	O modo de v°deo especificado n∆o Ç suportado nesta m†quina
	162	Mem¢ria insuficiente (o MODE requer cerca de 6K de mem¢ria)
	241	ParÉmetro fora do intervalo (ex: valor de tempo, n£mero LPT)
	242	N∆o Ç poss°vel ter modos de 43 ou 50 linhas sem ser CO80
	243	Taxa de transmiss∆o desconhecida
	244	Deve especificar ambos DELAY= e RATE= para a configuraá∆o
	246	Mais de um comando ou tipo de comando foi fornecido
	255	Sintaxe de uso incorreta (todos os erros de sintaxe)

	O MODE Ç um programa TSR. Se necess†rio, o MODE instalar† parte de si
	residente na mem¢ria do computador. Esta parte residente executa o
	redirecionamento da impressora e tratamento de timeout, estacionamento
	autom†tico do disco r°gido e bloqueio dos parÉmetros typematic, e n∆o
	pode ser removida sem reiniciar (a menos que sejam usados os programas
	MARK e RELEASE). Se funá‰es residentes adicionais forem solicitadas e
	a parte residente j† estiver instalada, o MODE ativar† essas funá‰es
	na parte residente em vez de instalar outra.

	Como o MODE Ç um TSR, ele pode ser incompat°vel com aplicativos ou
	outros TSRs que vocà esteja usando. Se ocorrerem problemas, tente
	estabelecer quais programas est∆o em conflito. Pode ser poss°vel
	evitar o problema instalando os programas em uma ordem diferente.

	Se vocà encontrar um bug no MODE, informe o autor. Os detalhes de
	contato s∆o fornecidos na seá∆o 1 deste documento.

4.  EXEMPLOS DE USO

	Aqui est† um exemplo do uso do MODE no AUTOEXEC.BAT, demonstrando todas
	as funcionalidades:

	mode co80,43			>nul:
	mode com1:96,n,8,1		>nul:
	mode com2:19,n,8,1		>nul:
	mode com3:24,n,8,1		>nul:
	mode lpt1:=com2			>nul:
	mode lpt1:p			>nul:
	mode lpt2:=nul:			>nul:
	mode lpt3:=nul:			>nul:
	mode park,0:30			>nul:
	mode delay=1 rate=32 lock	>nul:
	mode switchar=-			>nul:
	mode numlock=off		>nul:

	Esta sequància primeiro seleciona o modo de exibiá∆o colorido de 43
	linhas, depois configura os parÉmetros da porta serial para COM1,
	COM2 e COM3 (9600, 19200 e 2400 bps respectivamente, sem paridade,
	oito bits de dados e um bit de parada). Esses parÉmetros da porta
	serial n∆o s∆o bloqueados permanentemente, e outro comando MODE ou
	outro programa pode alter†-los a qualquer momento.
	Depois, a sa°da de LPT1 Ç redirecionada para COM2, ent∆o qualquer
	coisa que for impressa na LPT1 ser† enviada para COM2, a 19200 bps
	(por exemplo, para uma impressora laser serial), e LPT2 e LPT3 s∆o
	redirecionados para NUL para que qualquer coisa enviada a eles n∆o
	v† a lugar nenhum.
	Em seguida, um estacionamento de disco r°gido temporizado Ç instalado,
	que estacionar† o(s) disco(s) ap¢s 30 segundos de inatividade.
	Finalmente, o atraso mais curto e a taxa mais r†pida para a funá∆o
	typematic do teclado s∆o selecionados e bloqueados, e o switchar do
	DOS Ç definido como um h°fen ('-').

				   ----//----
