$ 
$   COMPONENT_NAME: desktop
$ 
$   FUNCTIONS: mnemonic
$		name
$ 
$   ORIGINS: 27,118,119,120,121
$ 
$   This module contains IBM CONFIDENTIAL code. -- (IBM
$   Confidential Restricted when combined with the aggregated
$   modules for this product)
$   OBJECT CODE ONLY SOURCE MATERIALS
$ 
$   (C) COPYRIGHT International Business Machines Corp. 1995
$   All Rights Reserved
$   US Government Users Restricted Rights - Use, duplication or
$   disclosure restricted by GSA ADP Schedule Contract with IBM Corp.
$ 
$ *************************************<+>*************************************
$ *****************************************************************************
$ **
$ **  File:        dthelp.msg
$ **
$ **  Project:     CDE 1.0 Help
$ **
$ **  Description:
$ **  -----------
$ **  This file is the source for the message catalog for DtHelp 
$ **
$ **
$ *****************************************************************************
$ **
$ **     (c) Copyright 1990 Hewlett-Packard Company
$ **         All Rights reserved
$ **
$ **
$ **     There are two types of messages in this file:
$ **
$ **     1) Messages that appear in dialogs or are displayed to the user.
$ **        These messages are the default and they should ALL BE LOCALIZED.
$ **        Note that these messages do NOT have any identification.
$ **
$ **     2) Messages that should not be localized.
$ **        These messages are marked with DO NOT TRANSLATE THESE MESSAGES.
$ **
$ *****************************************************************************
$ **
$ **
$ **  ------------------------- MODIFICATION RECORD --------------------------
$ *   Major Mods, 3/26/92 in preperation for the NLS package release on the 
$ *               27th.  (Mike Wilson).
$ *
$ *   Major Mods, 6/10/94 in prep for Cde Message Catalog Freeze
$ *
$ **  ----------------------- MODIFICATION RECORD END ------------------------
$ *****************************************************************************
$ *************************************<+>*************************************

$set 2
$ *****  Module: HelpDialog.c  and a few from HelpQuickD.c *****
$ 
$ These Messages appear in the pulldown menus for Cde Help General Help
$ dialog widget.
$ 
$ They come in pairs where the first is the menu name (e.g. 1 Print...) and the
$ second is the mnemonic (e.g. 2 P).  
$ 
$ Messages 1 through 6 are the pulldown menus for the File menu.
1 ??????(P)...
2 P
3 ?????????(C)
4 C
5 ?????????????????????(W)...
6 W
$ Messages 7 through 8 are the pulldown menus for the Edit menu.
7 ?????????(C)
8 C 
$ Messages 9 through 10 are the pulldown menus for the Search menu.
9 ??????(I)...
10 I
$ Messages 11 through 16 are the pulldown menus for the Navigate menu.
11 ????????????????????????(T)
12 T
13 ?????????????????????(B)
14 B
15 ????????????(H)...
16 H
$ Messages 17 through 28 are the pulldown menus for the Help menu.
17 ??????(v) - ?????????????????????
18 v
19 ??????(C)
20 C
21 ?????????(T)
22 T
23 ??????????????????(R)
24 R
25 ????????????????????????????????????(M)
26 M
27 ?????????????????????(A)
28 A
$ 
$ Messages 29 through 36 are the menu labels and mnemonics for for the 
$ Help Dialog.
29 ????????????(F)
30 F
31 ??????(S)
32 S
33 ???????????????(N)
34 N
35 ?????????(H)
36 H
37 ??????(E)
38 E
$ 
$ 
$ >>>>> Skip #39 through #49
$ 
$ Messages 50 through 55 are used to display formatting errors within the
$ help dialog and quick help dialog widgets.
$ 
50 ?????????????????????????????????????????????????????????
51 ???????????????????????????????????????????????????????????????
52 ????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????
53 ????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????
54 ???????????????????????????????????????????????????????????????
55 ????????????????????? ID:
$ 
$ Messages 56 and 67 are displayed when a hypertext link type is selected but
$ not supported within the current application.
$ 
56 ??????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????
57 ??????????????????????????????????????????????????????????????????????????????????????????????????????????????????
$ 
$ Messages 58 through 62  are used when bad or null help volumes or 
$ locationId's are used.
$ 
58 ??????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????\n
59 ?????? ID ??????????????????????????????
60 ?????????????????????????????????????????????????????????
61 ???????????????????????????:
62 ?????? ID:
$ 
$ >>>>> Skip #63 through #69
$ 
$ 
$ Message 70 is used when a null value for DtNtopicTitle is used.
$ 
70 ??????????????????????????????????????????
$ 
$ End Message set 2
$ New messages added after early msg cat freeze; not in order
80 ????????????????????????????????????????????????



$set 3
$ ****  Module: History.c ****
$ These messages are used as labels for the History Dialog.
1 ????????? - ???????????????????????????
2 ?????????????????????????????????:
3 ?????????
4 ?????????
5 ????????????????????????
6 ???????????????????????????
7 ???????????????????????????
8 ??????????????????????????????:
9 ??????????????????????????????:
10 ?????????????????????????????????:
11 ?????????????????????????????????:


$set 4
$ *****  Module: Print.c  *****
$ These messages are used as labels for the Print Dialog.
$ 1: dialog title
1 ????????? - ??????
$ 10-12: standard printer dialog labels
10 ????????????:
11 ????????????:
12 ?????????????????????????????????:
$ 20-25: paper size label and sizes
20 ???????????????:
21 ????????? 8.5 x 11 in
22 ???????????? 8.5 x 14 in
23 ????????????????????? 7.25 x 10.5 in
24 A4 210 x 297 mm
25 B5 182 x 257 mm
$ 30-33: help volume-specific printing options
30 ????????????????????????
31 ?????????????????????
32 ??????????????????????????????????????????
33 ???????????????
34 ????????????????????????????????????

$ 40-42: buttons at bottom of dialog
40 ??????
41 ?????????
42 ?????????

$ These messages are used to describe the kind of content to be printed
$ 50 "Help Volume: "
50 ???????????????????????????: 
51 ???????????????????????????
52 ????????????????????????

$ 53 "Manual Page: "
53 ???????????????????????????: 
54 ???????????????????????????

$ Don't translate message 60 unless it is not an empty string
$ This is the default value that goes in the Printer field
$ 60 " "
$quote "
60 ""
$quote

$ Don't translate message 61
$ This is the default value that goes in the Copies field
61 1


$set 5 
$ *****  Module: GlobSearch.c  *****
$ Message 1 is the label used to label the dialog
1 ????????? - ????????????
2 ??????
3 ????????????????????????
$ DO NOT TRANSLATE MESSAGE 4; it is no longer used
$ " (%s)"
4  (%s)
5 ??????????????????
6 ??????
7 ????????????????????????...
8 ??????
9 ???????????????
10 ??????????????????:
11 ????????????
12 ???????????????
13 ???????????????
14 ???????????????
15 ?????????
16 ?????????
17 ????????????????????????????????????... %d ??????????????????????????????
18 ???????????????... ????????????????????????: %d
19 ???????????????????????????????????????
20 ?????????
21 ?????????????????? "%s"
22 ?????????????????????????????????????????????
23 ????????????????????????????????????????????????????????????
$ Do NOT translate messages 25-31
$quote "
$ " "
25 " "
26 "+"
27 "-"
$ "  +"
28 "  +"
$ "  -"
29 "  -"
$ 30 "       "
30 "       "
$ 31 "         "
31 "         "
$quote
$ DO translate messages 32 and above
$ kind of topic messages
32 ???????????????????????????
33 ????????????????????????
34 ???????????????????????????
35 ???????????????????????????
$ specialized title of Search Volume Selection dialog
40 ????????? - ???????????????????????????
$ additional messages (late addition caused this ordering)
50 ?????????????????????????????????????????????[??????????????????] ???????????????????????????
51 ????????????????????????????????????????????????????????????????????????????????????
$ additional messages (later addition caused this ordering)
$ These messages are the braces that go around the current volume name
$ in the index search dialog.  They are kept in the message catalog
$ in case they need to be localized.
60 (
61 )


$set 6
$ *****  Module: HelpAccess.c  *****
$ These messages are used for the Help on Help dialog in Cde Help widgets.
1 ?????????????????????
2 ?????? ...
3 ?????????
4 ???????????????????????????????????? [?????????????????????] ?????????????????????
5 ?????????????????????
6 ????????? ...


$set 7
$ *****  Module: Main.c & Util.c & (dthelpview CDE 1.0  *****
$ These messages are used by the dthelpview program.  They need to be 
$ localized for dthelpview, however, they are not directly used by libDtHelp
$ Messages 1 through 7 are command line usage response messages.
$ Do NOT translate the option name (e.g. -helpVolume).  DO translate
$ the argument descriptor name (e.g. <Help Volume File>)
1 ????????????: %s...\n
2 \t-helpVolume <??????????????????????????????????????????>\n
3 \t-locationId  <ID>\n
5 \t-file  <ASCII ???????????????????????????>\n
6 \t-man\n
7 \t-manPage <Unix ???????????????????????????>\n\n\n
$ man page dialog
11 ???????????????????????????
12 ???????????????????????????:
13 ????????????????????????????????????
$ button labels
16 ??????
17 ?????????
18 ?????????????????????
19 ?????? ...
$ title of helpview window
20 ????????????????????????


$set 8
$ *****  Module: HelpUtil.c  *****
$ Message 1 is the label used in the definition link dialog box 
$ (e.g. Quick help close button)
2 ?????????
3 ???????????????: ???????????????????????????????????????\nDtHelpReturnSelectedWidget ??????????????????????????????\n
4 ???????????????: ?????????????????????????????????????????????\nDtHelpReturnSelectedWidget() ??????????????????????????????\n
5 ?????????????????????
$ Messages 10 and up were added after message catalogs were taken
$ for translation.  They are not in any order or chosen location.
10 ??????
11 ????????????
12 ????????????????????????????????????????????????????????????????????????????????????\n\
?????? '%s' ?????????????????????????????????
13 ??????????????????????????????????????????????????????????????????????????????\n\
???????????????????????????????????????????????????????????????????????????????????????\n\
??????????????????????????????????????? %s ?????????
14 ??????????????????????????????root?????????????????????????????????????????????????????????????????????\n\
"%s" ????????????????????????????????? ($HOME) ???root????????????????????????????????????????????? \n\
????????????????????????????????????????????????????????????????????????????????????\n\n\
????????????: "%s"\n\n\
???: ??????????????????????????????\n\
"su root" ??????????????? "su - root" ??????????????????????????????


$set 9
$ *****  Module: PathArea.c  *****
$ These messages are used in the general Help Dialog Widget.
$ Message 1 is the label used to label Topic Tree Area  
1 ???????????????: 
$ Messages 2 though 5 are used in the Button Box area of our general 
$ help dialog.
2 ?????????????????????
3 ????????????...
4 ??????...
5 ??????????????????


$set 10 
$ *****  Module: VolSelect.c  *****
$ Message 1 is the default label used to label the volume selection dialog.
1 ????????? - ?????????????????????
2 ???????????????????????????
3 1 ????????????????????????????????????????????????
4 ?????????
5 ?????????


$set 11
$ *****  Module: HelpQuickD.c  *****
$ These messages are used as labels for the quick help dialog.
1 ?????????
2 ?????? ...
3 ?????????????????????
4 ?????? ...
5 ????????? ...

$set 99
$    DO NOT TRANSLATE THESE MESSAGES
$    DO NOT CHANGE THESE MESSAGES
$    DO NOT LOCALIZE THESE MESSAGES
$    These messages are used for the version information.
$quote "
1 "@(#)version_goes_here"
2 "\n@(#)Message catalog source $XConsortium: DtHelp.msg /main/5 1996/10/16 03:12:26 cde-hit $"

