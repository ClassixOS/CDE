$ *************************************<+>*************************************
$ *****************************************************************************
$ **
$ **  File:        DtPrint.msg
$ **
$ **  Project:     DT
$ **
$ **  Description:
$ **  -----------
$ **  This file is the source for the message catalog for the Dt Print
$ **  library.
$ **
$ **
$ *****************************************************************************
$ **
$ **  (c) Copyright 1993, 1994 Hewlett-Packard Company
$ **  (c) Copyright 1993, 1994 International Business Machines Corp.
$ **  (c) Copyright 1993, 1994 Sun Microsystems, Inc.
$ **  (c) Copyright 1993, 1994 Novell, Inc.
$ **
$ *****************************************************************************
$ **
$ **
$ **  $XConsortium: DtPrint.msg /main/9 1996/10/19 14:45:24 rws $
$ *****************************************************************************
$ *****************************************************************************

$ *****************************************************************************
$ 
$ ***** NOTE FOR MESSAGE CATALOG TRANSLATORS *****
$ 
$ There MAY be three types of messages in this file:
$ 
$  1. Messages that appear in dialogs or are displayed to the user.
$ 
$     These messages are the default and they should ALL BE LOCALIZED.
$     Note that these messages do NOT have any identification (see the
$     comments for type 2 and 3 below).
$ 
$  2. Messages that only appear in the DT error log file ($HOME/.dt/errorlog).
$ 
$     The localization of these messages is OPTIONAL.  These messages are
$     identified by the following:
$ 
$  MESSAGES xx-yy IN SET zz WILL ONLY APPEAR IN THE DT ERRORLOG FILE
$ 
$  3. Messages that should not be localized.
$ 
$     These messages are identified by the following:
$ 
$  DO NOT TRANSLATE or CHANGE or LOCALIZE MESSAGES xx-yy from set zz
$ 
$ ***** END (NOTE FOR MESSAGE CATALOG TRANSLATORS) *****
$ 
$ ******************************************************************************

$quote "



$set 1
$ *************************************************************
$ ** 							     ** 
$ ** PrintSetupBox messages and labels 			     **
$ ** 							     ** 
$ *************************************************************
$ Warning messages
$ Note: do not localize the chars %s
$ 
$quote
1 Configuraci??n del recurso workAreaLocation no v??lida.

$ Label values
$ 
2 M??s impresoras...
3 Imprimir en el archivo:
4 Seleccionar archivo...
5 Cancelar
6 Copias:
7 Ayuda
8 Imprimir
9 Impresora:
10 Configurar...
11 Descripci??n de la impresora:

$ Warning messages
$ Note: do not localize the chars %s
12 El total de copias est?? fuera de intervalo.
13 Modo de configuraci??n de impresi??n no v??lido.
14 El modo de impresi??n no se puede cambiar.

$ Label values
$ 
15 Informaci??n...

$ Warning messages
$ Note: do not localize the chars %s
16 Impresora no v??lida
17 No se ha encontrado la impresora %s en el servidor de imrpesi??n %s
18 Incapaz de conectar con el servidor de impresi??n %s
19 El servidor X %s no soporta impresi??n
20 No se pudo determinar ninguna impresora predeterminada
21 No se pudo encontrar ning??n servidor de impresi??n X para %s
22 Falta el nombre de la impresora en el especificador %s
23 Destino de impresi??n no v??lido.
24 Incapaz de convertir de texto compuesto.
25 No se necesitan argumentos para efectuar la conversi??n de recursos.

$ Label values
$ 
26 Error de selecci??n de impresora

$ Warning messages
$ Note: do not localize the chars %s
27 No se puede encontrar ninguna impresora.

$ Label values
$ 
28 La descripci??n no est?? disponible
29 Seleccionar archivo
30 Informaci??n de la impresora
31 Formato:
32 Modelo:
33 Impresoras:
34 M??s impresoras
35 Imprimir en la impresora
36 Nombre de archivo:
37 Configuraci??n de la impresora - Ayuda

$set 2
$ *************************************************************
$ ** 							     ** 
$ ** _DtPrint Frame GUI messages			     **
$ ** 							     ** 
$ *************************************************************
$ 
$ Label values for Margin Frame
$ 

$quote "

1 "M??rgenes"
2 "Superior:"
3 "Derecho:"
4 "Inferior:"
5 "Izquierdo:"
$ 
$ Label values for Header/Footer Frame
$ 
6 "Encabezamientos y pies de p??gina"
7 "Izquierdo superior:"
8 "Derecho superior:"
9 "Izquierdo inferior:"
10 "Derecho inferior:"

$set 3
$ *************************************************************
$ ** 							     ** 
$ ** Dt Print Dialog Manager Job Options GUI messages        **
$ ** 							     ** 
$ *************************************************************
$ 

$quote

$ Label values for Margin Frame
1 Enviar correo al terminar
2 T??tulo de la p??gina separadora:
3 Opciones del comando de impresi??n:
