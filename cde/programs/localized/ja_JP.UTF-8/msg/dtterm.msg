$ $TOG: dtterm.msg /main/5 1999/09/17 13:29:26 mgreess $
$ *************************************<+>*************************************
$ *****************************************************************************
$ **
$ **  File:        dtterm.msg
$ **
$ **  Project:     Common Desktop Environment dtterm
$ **
$ **  Description:
$ **  -----------
$ **  This file is the source for the message catalog for dtterm
$ **  Any additional messages are to be added to this file by hand,
$ **  and the associated index number placed in the code.
$ **
$ *****************************************************************************
$ **
$ **     (c) Copyright 1993, 1994 Hewlett-Packard Company
$ **     All Rights reserved
$ **
$ **
$ *****************************************************************************
$ *************************************<+>*************************************

$ *************************************<L>*************************************
$ **  -----------------GENERAL LOCALIZATION NOTES SECTION---------------------
$ * Comment lines begin with a $ except $set which indicates the start of a
$ * new set.
$ *
$ * Do not delete any comments; you may add comments for your use.
$ *
$ **  ----------------GENERAL LOCALIZATION NOTES SECTION END------------------
$ *************************************<L>*************************************

$ *****************************************************************************
$ 
$ ***** NOTE FOR MESSAGE CATALOG TRANSLATORS *****
$ 
$ There may be three types of messages in this file:
$ 
$ 1. Messages that appear in dialogs or are displayed to the user.
$ 
$     These messages are the default and they should ALL BE LOCALIZED.
$     Note that these messages do NOT have any identification (see the
$     comments for type 2 and 3 below).
$ 
$ 2. Messages that only appear in the DT error log file ($HOME?.dt/errorlog).
$ 
$     The localization of these messages is OPTIONAL.  These messages are
$     identified by the following:
$ 
$     MESSAGES xx-yy WILL ONLY APPEAR IN THE DT ERRORLOG FILE
$ 
$ 3. Messages that should not be localized.
$ 
$     These messages are identified by the following:
$ 
$     DO NOT TRANSLATE or CHANGE or LOCALIZE MESSAGES xx-yy
$ 
$ ***** END (NOTE FOR MESSAGE CATALOG TRANSLATORS) *****
$ 
$ ********** PROLOGUE ****************
$  Date    Name               Note
$ ======== =================  ===============================================
$ 03/15/94 B. May             Initial rev
$ 
$ *****************************************************************************

$set 1
$ ****** Module: DtTermMain.c 
$ Message 1 is the window menu addition - do not translate f.separator or
$ f.send_msg.  It will be used as the format string for a sprintf() command,
$ so it is necessary to double up on any percent signs ('%') that you
$ want to keep in the string.
$ Message 2 is an error message

1 \
	???????????????             f.separator\n\
	????????????\\?????????\\??????  f.send_msg %d\
	
2 %s: -S ?????????????????????-server ???????????????????????? -serverid ??????????????????????????????????????????????????????\n
3 ????????????????????????

$set 2
$ ****** Module: DtTermSyntax.c 
$ These are the usage messages. 
$ DO NOT TRANSLATE Messages 37 or 41 ("End-of-list")

1 -/+132			80<->132 ??????????????????????????????????????????????????????????????????????????????
2 -/+aw				????????????????????????????????????????????????
3 -bg color			????????????????????????????????????
4 -/+bs				???????????????????????????????????????????????????????????????????????????????????????????????????
5 -display displayname		???????????? X ?????????
6 -e command args		????????????????????????
7 -fb fontset			??????????????????????????????????????????
8 -fg color			????????????????????????????????????
9 -fn fontset			?????????????????????????????????
10 -geometry geom		???????????????????????????(????????????)?????????
11 -help			??????????????????????????????
12 -/+iconic			???????????????????????????????????????????????????
13 -/+j				????????????????????????????????????????????????????????????????????????
14 -/+kshMode			ksh ???????????????????????????????????????????????????
15 -/+l				???????????????????????????????????????
16 -lf filename			???????????????????????????
17 -/+ls			??????????????????????????????????????????????????????????????????
18 -/+map			pty ?????????????????????????????????????????????????????????????????????????????????
19 -/+mb			???????????????????????????????????????????????????????????????
20 -ms color			????????????????????????
21 -n string			??????????????????????????????
22 -name string			????????????????????????????????????????????????????????????????????????????????????
23 -nb distance			??????????????????????????????????????????
24 -/+rw			?????????????????????????????????????????????????????????
25 -/+sb			??????????????????????????????????????????????????????????????????
26 -/+sf			SUN ????????????????????????????????????????????????????????????????????????
27 -sl number[s]		?????????????????????????????????[?????????]
28 -ti name			????????????????????????????????????????????????
29 -title string		???????????????????????????????????????
30 -tm string			????????????????????????????????????????????????
31 -tn name			TERM ???????????????
32 -/+vb			??????????????????????????????????????????????????????
33 -xrm resourcestring		????????????????????????
34 -C				???????????????????????????
35 -Sxxd			"ttyxx" ????????????????????? "d" ???????????????????????????
36 -Sxxx.d			"ttyxxx" ????????????????????? "d" ???????????????????????????
37 End-Of-List
38 -e ???????????????????????????????????????????????????????????????????????????????????????????????????
39 ???????????????????????????????????????????????????????????????????????????????????????
40 ???????????????(+)?????????????????????????????????????????????????????????????????????
41 End-Of-List
47 %s:  ????????????????????????????????????????????????"%s"\r\n\n
48 ????????????:  %s
49 \r\n   
50  [%s]
51 \r\n\n??????????????????"%s -help" ??????????????????????????????\r\n\n
52 ????????????:\n
53 \t%s [-options ...] [-e ???????????? ?????????]\n\n
54 ?????????????????????????????????????????????????????????:\n

$set 3
$ ****** Module: TermFunction.c
$ This is a warning message dialog box
1 ?????????????????????????????????\n?????????????????????[??????] ???????????????????????????

$set 4
$ ****** Module: TermPrim.c
$ This is the title of a dialog box
2 ???????????????????????? - ??????

$set 5
$ ****** Module: TermFunction.c
$ This is a warning message dialog box
1 ?????????????????????????????????\n?????????????????????[??????] ???????????????????????????

$set 6
$ ****** Module: TermView.c
$ DO NOT TRANSLATE Message 1
$ Messages 2 and 3 are titles for dialog boxes.
1 80x24 132x24
4 ???????????????????????? - ????????????????????????
5 ???????????????????????? - ?????????

$set 7
$ ****** Module: TermViewGlobalDialog.c
$ These are the user-visible labels in the Global Options dialog box.
$ #1 is the title. 
$ The rest are resource types and values - look at the dialog box and 
$ documentation for full specs. 
$ 
$ DO NOT TRANSLATE MESSAGE 15
$ 
2 ??????
3 ?????????
4 ?????????
5 ???????????????
6 ?????????????????????
7 ????????????
8 ??????
9 ?????????????????????
10 ????????????
11 ???????????????
12 ??????????????????
13 ????????????(?????????)
14 ???????????????
15 blinkRate
16 ??????????????????
17 ??????
18 ??????
19 ??????????????????????????????????????????
20 ?????????????????????
21 ???????????????
22 ????????????
23 ???????????????????????????
24 ???????????????
25 ??????
26 ??????
27 ???????????????
28 ????????????
29 ???????????????
30 ??????????????????
31 ???????????????????????????
32 ??????
33 ????????????
34 ???????????????????????? - ??????????????????????????????
$set 8
$ ****** Module: TermViewMenu.c
$ These are the menu bar entries and menu pane choices.
$ NOTE TO TRANSLATORS: The Single letter entries are the menu mnemonic
$ for the entry above them (i.e. message 11 "F" is the mnemonic for
$ message 10 "Font Size"). 
$ The items with a "+" in them are the accellerators for an item.
$ The single-character items are the mnemonics for a menu item, where the
$ text of the menu item is specified in the previous message
$ Do not translate messages 24 and 28.
1 ???????????????
2 ????????????????????????(W)
3 W
4 -iso8859-1
5 %d ????????????
6 %.1f ????????????
7 %.1f ????????????
8 %.2f ????????????
9 ???????????????
10 ?????????????????????(F)
11 F

$   Window menu
12 ??????(N)
13 N
14 ??????(P)
15 P
16 ??????(r)...
17 r
18 ?????????(C)
19 C
20 ???????????????(W)
21 W

$   Edit menu
22 ?????????(C)
23 C
$ IBM fixed msg 24 for 41J
$ 24 Ctrl osfInsert
24 Ctrl<Key>osfInsert
25 Ctrl+Insert
26 ????????????(P)
27 P
$ IBM fixed msg 28 for 41J
$ 28 Shift osfInsert
28 Shift<Key>osfInsert
29 Shift+Insert
30 ??????(E)
31 E

$   Option menu

32 ??????????????????(M)
33 M
34 ?????????????????????(S)
35 S
36 ???????????????(G)...
37 G
38 ????????????????????????(T)...
39 T
40 ?????????????????????(S)
41 S
42 ?????????????????????(H)
43 H
44 ????????????(R)
45 R
46 ???????????????(O)
47 O

$ Old Help menu (no longer used for CDE)

48 ??????(O)
49 O
50 ?????????(T)
51 T
52 ??????????????????(R)
53 R
54 ?????????????????????(O)
55 O
56 ?????????????????????(U)
57 U
59 A
60 ?????????(H)
61 H

62 Alt+F4

63 dtterm

$ Current CDE Help menu

64 ??????(v)
65 v
66 ??????(I)
67 I
68 ??????(C)
69 C
70 ?????????(T)
71 T
72 ??????????????????(R)
73 R
74 ???????????????(K)
75 K
76 ?????????????????????(U)
77 U
79 A
80 ?????????(H)
81 H
82 ????????????????????????????????????(A)
83 ????????????????????????????????????(A)

$set 9
$ ****** Module: TermTerminalDialog.c
$ These are the messages for the terminal options dialog
2 ??????
3 ?????????
4 ?????????
5 ?????????????????????
6 ??????
7 ????????????????????????
8 ??????????????????????????????
9 ??????
10 ????????????????????????
11 ???????????????????????????
12 ??????????????????
13 ?????????????????????
14 ?????????????????????
15 ???????????????
16 ?????????????????????
17 ???????????????????????????????????????
18 ????????????
19 ????????????
20 ???????????????
21 132 ??????????????????
22 ?????????????????????
23 ?????????????????????????????????
24 ??????
25 ????????????
26 ???????????????????????? - ??????????????????????????????????????????

$set 10
$ ****** Module: sunDtTermServer.c
$ These are the messages for the ToolTalk error dialog
$ "-NEW"
1 Terminal - Error
$ "-NEW"
2 "Could not connect to ToolTalk:\n%s\nExiting ..."
$ "-NEW"
3 OK
