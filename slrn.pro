TEMPLATE = app
CONFIG += console
CONFIG -= app_bundle
CONFIG -= qt

SOURCES += \
        main.c \
    src/art_misc.c \
    src/art_sort.c \
    src/art.c \
    src/charset.c \
    src/chkslang.c \
    src/clientlib.c \
    src/art.c \
    src/art_misc.c \
    src/art_sort.c \
    src/charset.c \
    src/chkslang.c \
    src/clientlib.c \
    src/decode.c \
    src/editscore.c \
    src/group.c \
    src/grplens.c \
    src/hash.c \
    src/hdrutils.c \
    src/help.c \
    src/hooks.c \
    src/interp.c \
    src/menu.c \
    src/mime.c \
    src/misc.c \
    src/nntp.c \
    src/nntplib.c \
    src/parse2822.c \
    src/post.c \
    src/print.c \
    src/ranges.c \
    src/score.c \
    src/server.c \
    src/slrn.c \
    src/slrndir.c \
    src/slrnpull.c \
    src/sltcp.c \
    src/snprintf.c \
    src/sortdate.c \
    src/spool.c \
    src/startup.c \
    src/strutil.c \
    src/ttymsg.c \
    src/util.c \
    src/version.c \
    src/vfile.c \
    src/vms.c \
    src/vmsmail.c \
    src/xover.c \
    main.c

HEADERS += \
    src/config.hin \
    src/config.h \
    src/common.h \
    src/clientlib.h \
    src/art.h \
    src/art_sort.h \
    src/charset.h \
    src/clientlib.h \
    src/common.h \
    src/config.h \
    src/config.hin \
    src/decode.h \
    src/group.h \
    src/grplens.h \
    src/hash.h \
    src/hdrutils.h \
    src/help.h \
    src/hooks.h \
    src/interp.h \
    src/jdmacros.h \
    src/menu.h \
    src/mime.h \
    src/misc.h \
    src/nntpcodes.h \
    src/nntplib.h \
    src/parse2822.h \
    src/post.h \
    src/print.h \
    src/ranges.h \
    src/score.h \
    src/server.h \
    src/slrn.h \
    src/slrnconf.h \
    src/slrndir.h \
    src/slrnfeat.h \
    src/slrnfeat.hin \
    src/sltcp.h \
    src/snprintf.h \
    src/sortdate.h \
    src/startup.h \
    src/strutil.h \
    src/sysconf.h \
    src/ttymsg.h \
    src/util.h \
    src/version.h \
    src/vfile.h \
    src/vms.h \
    src/vmsmail.h \
    src/xover.h

DISTFILES += \
    src/DESCRIP.MMS \
    src/modules.lis \
    src/VMSMAKE.COM
