# Unix Makefile for slrn                               -*- sh -*-
#-----------------------------------------------------------------------------
# C compiler.  It must understand prototypes.
#-----------------------------------------------------------------------------
CC = gcc
CFLAGS = -g -O2
LDFLAGS = 
CPPFLAGS = 
#-----------------------------------------------------------------------------
# Required Libraries
#-----------------------------------------------------------------------------
SLANG_INC	= 
SLANG_LIB	=  -lslang
#-----------------------------------------------------------------------------
# Optional Libraries
#-----------------------------------------------------------------------------
UUDEVIEW_LIB	=  
UUDEVIEW_INC	= 
CANLOCK_LIB	=  -lcanlock
CANLOCK_INC	= 
SSL_INC		= 
SSL_LIB		= -lgnutls-openssl -lgnutls
ICONV_INC       = 
ICONV_LIB       =  
#-----------------------------------------------------------------------------
# System Libraries
#-----------------------------------------------------------------------------
SYSLIBS =   -ldl

#-----------------------------------------------------------------------------
RPATH		= 

#---------------------------------------------------------------------------
# Installation Directories
#---------------------------------------------------------------------------
prefix = /usr/local
sysconfdir = ${prefix}/etc
exec_prefix = ${prefix}
datarootdir = ${prefix}/share

BINDIR = ${exec_prefix}/bin
DOCDIR = ${prefix}/share/doc/slrn
MANDIR = ${datarootdir}/man
CONFDIR = $(sysconfdir)/slrn
LOCALEDIR = /usr/local/share/locale
SLRN_LIB_DIR = /usr/local/share/slrn
SLRN_SLANG_DIR = $(SLRN_LIB_DIR)/slang

INSTALL_OWNER = # -o root -g root
INSTALL = /usr/bin/install -c $(INSTALL_OWNER)
INSTALL_DATA = ${INSTALL} -m 644 $(INSTALL_OWNER)
MKINSDIR = ../autoconf/mkinsdir.sh

#-----------------------------------------------------------------------------
# Location where object files are placed (Absolute pathnames!!)
#-----------------------------------------------------------------------------
OBJDIR = /mnt/shared/data/code/slrn-pre1.0.4-2/src/$(ARCH)objs
SRCDIR = /mnt/shared/data/code/slrn-pre1.0.4-2/src

# DESTDIR is designed to facilitate making packages.  Normally it is empty
DESTDIR =
DEST_BINDIR = $(DESTDIR)$(BINDIR)
DEST_DOCDIR = $(DESTDIR)$(DOCDIR)
DEST_MANDIR = $(DESTDIR)$(MANDIR)
DEST_CONFDIR = $(DESTDIR)$(CONFDIR)
DEST_SLRN_LIB_DIR = $(DESTDIR)$(SLRN_LIB_DIR)
DEST_SLRN_SLANG_DIR = $(DESTDIR)$(SLRN_SLANG_DIR)
# Directory where macros will be located.

DEFINES = -DSLRN_SLANG_DIR=\"$(SLRN_SLANG_DIR)\" \
 -DSLRN_LIB_DIR=\"$(SLRN_LIB_DIR)\" -DSLRN_CONF_DIR=\"$(CONFDIR)\" \
 -DNLS_LOCALEDIR=\"$(LOCALEDIR)\"

# Files to install in DOC_DIR:
DOCDIR_FILES = `cat ../doc/INSTFILES`
UP_DOC_FILES = COPYRIGHT COPYING README changes.txt
MAN_FILES = ../doc/slrn.1 
SLANG_FILES = `cat ../macros/INSTFILES`
SLRNPULL_DOCS = ../slrnpull/*
CONF_FILES = #../lib/slrn.conf (Note: uncomment DEST_CONFDIR setting if non-empty)

#----------------------------------------------------------------------------
# Nothing below here should require changing.
#----------------------------------------------------------------------------
SHELL = /bin/sh
OBJS =  $(OBJDIR)/art.o $(OBJDIR)/art_misc.o $(OBJDIR)/art_sort.o $(OBJDIR)/charset.o $(OBJDIR)/decode.o $(OBJDIR)/editscore.o $(OBJDIR)/group.o $(OBJDIR)/grplens.o $(OBJDIR)/hash.o $(OBJDIR)/hdrutils.o $(OBJDIR)/help.o $(OBJDIR)/hooks.o $(OBJDIR)/interp.o $(OBJDIR)/menu.o $(OBJDIR)/mime.o $(OBJDIR)/misc.o $(OBJDIR)/post.o $(OBJDIR)/print.o $(OBJDIR)/ranges.o $(OBJDIR)/score.o $(OBJDIR)/server.o $(OBJDIR)/slrn.o $(OBJDIR)/slrndir.o $(OBJDIR)/snprintf.o $(OBJDIR)/sortdate.o $(OBJDIR)/startup.o $(OBJDIR)/strutil.o $(OBJDIR)/ttymsg.o $(OBJDIR)/util.o $(OBJDIR)/version.o $(OBJDIR)/vfile.o $(OBJDIR)/xover.o $(OBJDIR)/parse2822.o
OFILES =  art.o art_misc.o art_sort.o charset.o decode.o editscore.o group.o grplens.o hash.o hdrutils.o help.o hooks.o interp.o menu.o mime.o misc.o post.o print.o ranges.o score.o server.o slrn.o slrndir.o snprintf.o sortdate.o startup.o strutil.o ttymsg.o util.o version.o vfile.o xover.o parse2822.o

EXEC = slrn
OTHER_EXECS = 
CONFIG_H = config.h
INCS = $(SLANG_INC) $(CANLOCK_INC) $(ICONV_INC) $(UUDEVIEW_INC) $(SSL_INC) $(MISCINCLUDES)
ALL_CFLAGS = $(CFLAGS) -Dunix $(CPPFLAGS) $(INCS) $(DEFINES)
EXECLIBS = $(SLANG_LIB) $(UUDEVIEW_LIB) $(CANLOCK_LIB) $(SSL_LIB) $(ICONV_LIB) $(SYSLIBS)
DOT_O_DEPS = slrnfeat.h config.h
server_O_DEP = clientlib.c spool.c nntp.c sltcp.c nntplib.c
chmap_O_DEP = chmap.h charmaps.h
chkslang_O_DEP = config.h Makefile
version_O_DEP = version.h

slrnpull_O_DEP = score.c xover.c hash.c version.h $(CONFIG_H)
slrnpull_DEPS = $(OBJDIR)/util.o $(OBJDIR)/strutil.o $(OBJDIR)/sortdate.o \
 $(OBJDIR)/sltcp.o $(OBJDIR)/nntplib.o $(OBJDIR)/slrndir.o $(OBJDIR)/ranges.o \
 $(OBJDIR)/vfile.o

slrnpull_LIBS = $(slrnpull_DEPS)

UUDECODE_OBJS = $(OBJDIR)/strutil.o $(OBJDIR)/ttymsg.o \
  $(OBJDIR)/slrndir.o $(OBJDIR)/snprintf.o

UPDATE_VERSION_SCRIPT = $(HOME)/bin/update_changes_version

#
COMPILE_CMD = $(CC) -c $(ALL_CFLAGS)
#
all: $(EXEC) $(OTHER_EXECS)
$(EXEC): $(OBJDIR) $(CONFIG_H) slangversion $(OBJDIR)/$(EXEC)
	@echo $(EXEC) created in $(OBJDIR)
$(OBJDIR)/$(EXEC): $(OBJS)
	cd $(OBJDIR); $(CC) $(OFILES) -o $(EXEC) $(LDFLAGS) $(RPATH) $(EXECLIBS)
#
$(OBJDIR):
	-mkdir $(OBJDIR)
#
$(CONFIG_H) : $(SRCDIR)/sysconf.h
	/bin/cp $(SRCDIR)/sysconf.h $(CONFIG_H)
	touch $(CONFIG_H)
#
slangversion: $(OBJDIR)/chkslang
	$(OBJDIR)/chkslang $(EXEC) 20203
#
$(OBJDIR)/chkslang: $(OBJDIR)/chkslang.o
	$(CC) $(OBJDIR)/chkslang.o $(LDFLAGS) -o $(OBJDIR)/chkslang $(RPATH) $(EXECLIBS)
version.h: $(SRCDIR)/../changes.txt
	if [ -x $(UPDATE_VERSION_SCRIPT) ]; then \
	  $(UPDATE_VERSION_SCRIPT) $(SRCDIR)/../changes.txt $(SRCDIR)/version.h; \
	fi
#
uudecode: decode.c $(UUDECODE_OBJS)
	$(CC) $(ALL_CFLAGS) -DSTANDALONE $(LDFLAGS) -o uudecode decode.c $(UUDECODE_OBJS) $(EXECLIBS)
	touch decode.c
clean:
	/bin/rm -f $(OBJDIR)/* *~
	cd ../po; $(MAKE) clean
distclean: clean
	/bin/rm -rf $(OBJDIR) Makefile sysconf.h config.h slrnfeat.h
	cd ../po; $(MAKE) distclean
installdirs:
	$(MKINSDIR) $(DEST_BINDIR)
	$(MKINSDIR) $(DEST_DOCDIR)
	$(MKINSDIR) $(DEST_DOCDIR)/slrnpull
	$(MKINSDIR) $(DEST_MANDIR)/man1
	$(MKINSDIR) $(DEST_SLRN_LIB_DIR)
	$(MKINSDIR) $(DEST_SLRN_SLANG_DIR)
#	$(MKINSDIR) $(DEST_CONFDIR)
installdocs:
	@for i in $(MAN_FILES); \
	do \
		echo $(INSTALL_DATA) $$i $(DEST_MANDIR)/man1/; \
		$(INSTALL_DATA) $$i $(DEST_MANDIR)/man1/; \
		if [ "$$?" != "0" ]; then \
		  exit 1; \
		fi; \
	done
	@for i in $(UP_DOC_FILES); \
	do \
		echo $(INSTALL_DATA) ../$$i $(DEST_DOCDIR); \
		$(INSTALL_DATA) ../$$i $(DEST_DOCDIR); \
		if [ "$$?" != "0" ]; then \
		  exit 1; \
		fi; \
	done
	@for i in $(DOCDIR_FILES); \
	do \
		echo $(INSTALL_DATA) ../doc/$$i $(DEST_DOCDIR); \
		$(INSTALL_DATA) ../doc/$$i $(DEST_DOCDIR); \
		if [ "$$?" != "0" ]; then \
		  exit 1; \
		fi; \
	done
	@for i in $(SLRNPULL_DOCS); \
	do \
		echo $(INSTALL_DATA) ../doc/slrnpull/$$i $(DEST_DOCDIR)/slrnpull; \
		$(INSTALL_DATA) ../doc/slrnpull/$$i $(DEST_DOCDIR)/slrnpull; \
		if [ "$$?" != "0" ]; then \
		  exit 1; \
		fi; \
	done
installslang:
	@files=$(CONF_FILES); \
	for i in $$files; \
	do \
		echo $(INSTALL_DATA) $$i $(DEST_CONFDIR); \
		$(INSTALL_DATA) $$i $(DEST_CONFDIR); \
		if [ "$$?" != "0" ]; then \
		  exit 1; \
		fi; \
	done
	@for i in $(SLANG_FILES); \
	do \
		echo $(INSTALL_DATA) ../macros/$$i $(DEST_SLRN_SLANG_DIR); \
		$(INSTALL_DATA) ../macros/$$i $(DEST_SLRN_SLANG_DIR); \
		if [ "$$?" != "0" ]; then \
		  exit 1; \
		fi; \
	done
installlocales:
	-cd ../po; $(MAKE) DESTDIR=$(DESTDIR) LOCALEDIR=$(LOCALEDIR) install 
installbin:
	$(INSTALL) -m 755 -s $(OBJDIR)/slrn $(DEST_BINDIR)
	-$(INSTALL) -m 755 -s $(OBJDIR)/slrnpull $(DEST_BINDIR)
install: all installdirs installbin installdocs installslang installlocales

# The symlinks target is for my own private use.  It simply creates the object
# directory as a symbolic link to a local disk instead of an NFS mounted one.
symlinks:
	-/bin/rm -f $(ARCH)objs
	mkdir -p $(HOME)/sys/$(ARCH)/objs/slrn/src
	ln -s $(HOME)/sys/$(ARCH)/objs/slrn/src $(ARCH)objs
#---------------------------------------------------------------------------
# Rules (automatically generated)
#---------------------------------------------------------------------------

$(OBJDIR)/art.o : $(SRCDIR)/art.c $(DOT_O_DEPS) $(OBJ_O_DEPS) $(art_O_DEP)
	cd $(OBJDIR) && $(COMPILE_CMD) $(art_C_FLAGS) $(SRCDIR)/art.c

$(OBJDIR)/art_misc.o : $(SRCDIR)/art_misc.c $(DOT_O_DEPS) $(OBJ_O_DEPS) $(art_misc_O_DEP)
	cd $(OBJDIR) && $(COMPILE_CMD) $(art_misc_C_FLAGS) $(SRCDIR)/art_misc.c

$(OBJDIR)/art_sort.o : $(SRCDIR)/art_sort.c $(DOT_O_DEPS) $(OBJ_O_DEPS) $(art_sort_O_DEP)
	cd $(OBJDIR) && $(COMPILE_CMD) $(art_sort_C_FLAGS) $(SRCDIR)/art_sort.c

$(OBJDIR)/charset.o : $(SRCDIR)/charset.c $(DOT_O_DEPS) $(OBJ_O_DEPS) $(charset_O_DEP)
	cd $(OBJDIR) && $(COMPILE_CMD) $(charset_C_FLAGS) $(SRCDIR)/charset.c

$(OBJDIR)/decode.o : $(SRCDIR)/decode.c $(DOT_O_DEPS) $(OBJ_O_DEPS) $(decode_O_DEP)
	cd $(OBJDIR) && $(COMPILE_CMD) $(decode_C_FLAGS) $(SRCDIR)/decode.c

$(OBJDIR)/editscore.o : $(SRCDIR)/editscore.c $(DOT_O_DEPS) $(OBJ_O_DEPS) $(editscore_O_DEP)
	cd $(OBJDIR) && $(COMPILE_CMD) $(editscore_C_FLAGS) $(SRCDIR)/editscore.c

$(OBJDIR)/group.o : $(SRCDIR)/group.c $(DOT_O_DEPS) $(OBJ_O_DEPS) $(group_O_DEP)
	cd $(OBJDIR) && $(COMPILE_CMD) $(group_C_FLAGS) $(SRCDIR)/group.c

$(OBJDIR)/grplens.o : $(SRCDIR)/grplens.c $(DOT_O_DEPS) $(OBJ_O_DEPS) $(grplens_O_DEP)
	cd $(OBJDIR) && $(COMPILE_CMD) $(grplens_C_FLAGS) $(SRCDIR)/grplens.c

$(OBJDIR)/hash.o : $(SRCDIR)/hash.c $(DOT_O_DEPS) $(OBJ_O_DEPS) $(hash_O_DEP)
	cd $(OBJDIR) && $(COMPILE_CMD) $(hash_C_FLAGS) $(SRCDIR)/hash.c

$(OBJDIR)/hdrutils.o : $(SRCDIR)/hdrutils.c $(DOT_O_DEPS) $(OBJ_O_DEPS) $(hdrutils_O_DEP)
	cd $(OBJDIR) && $(COMPILE_CMD) $(hdrutils_C_FLAGS) $(SRCDIR)/hdrutils.c

$(OBJDIR)/help.o : $(SRCDIR)/help.c $(DOT_O_DEPS) $(OBJ_O_DEPS) $(help_O_DEP)
	cd $(OBJDIR) && $(COMPILE_CMD) $(help_C_FLAGS) $(SRCDIR)/help.c

$(OBJDIR)/hooks.o : $(SRCDIR)/hooks.c $(DOT_O_DEPS) $(OBJ_O_DEPS) $(hooks_O_DEP)
	cd $(OBJDIR) && $(COMPILE_CMD) $(hooks_C_FLAGS) $(SRCDIR)/hooks.c

$(OBJDIR)/interp.o : $(SRCDIR)/interp.c $(DOT_O_DEPS) $(OBJ_O_DEPS) $(interp_O_DEP)
	cd $(OBJDIR) && $(COMPILE_CMD) $(interp_C_FLAGS) $(SRCDIR)/interp.c

$(OBJDIR)/menu.o : $(SRCDIR)/menu.c $(DOT_O_DEPS) $(OBJ_O_DEPS) $(menu_O_DEP)
	cd $(OBJDIR) && $(COMPILE_CMD) $(menu_C_FLAGS) $(SRCDIR)/menu.c

$(OBJDIR)/mime.o : $(SRCDIR)/mime.c $(DOT_O_DEPS) $(OBJ_O_DEPS) $(mime_O_DEP)
	cd $(OBJDIR) && $(COMPILE_CMD) $(mime_C_FLAGS) $(SRCDIR)/mime.c

$(OBJDIR)/misc.o : $(SRCDIR)/misc.c $(DOT_O_DEPS) $(OBJ_O_DEPS) $(misc_O_DEP)
	cd $(OBJDIR) && $(COMPILE_CMD) $(misc_C_FLAGS) $(SRCDIR)/misc.c

$(OBJDIR)/post.o : $(SRCDIR)/post.c $(DOT_O_DEPS) $(OBJ_O_DEPS) $(post_O_DEP)
	cd $(OBJDIR) && $(COMPILE_CMD) $(post_C_FLAGS) $(SRCDIR)/post.c

$(OBJDIR)/print.o : $(SRCDIR)/print.c $(DOT_O_DEPS) $(OBJ_O_DEPS) $(print_O_DEP)
	cd $(OBJDIR) && $(COMPILE_CMD) $(print_C_FLAGS) $(SRCDIR)/print.c

$(OBJDIR)/ranges.o : $(SRCDIR)/ranges.c $(DOT_O_DEPS) $(OBJ_O_DEPS) $(ranges_O_DEP)
	cd $(OBJDIR) && $(COMPILE_CMD) $(ranges_C_FLAGS) $(SRCDIR)/ranges.c

$(OBJDIR)/score.o : $(SRCDIR)/score.c $(DOT_O_DEPS) $(OBJ_O_DEPS) $(score_O_DEP)
	cd $(OBJDIR) && $(COMPILE_CMD) $(score_C_FLAGS) $(SRCDIR)/score.c

$(OBJDIR)/server.o : $(SRCDIR)/server.c $(DOT_O_DEPS) $(OBJ_O_DEPS) $(server_O_DEP)
	cd $(OBJDIR) && $(COMPILE_CMD) $(server_C_FLAGS) $(SRCDIR)/server.c

$(OBJDIR)/slrn.o : $(SRCDIR)/slrn.c $(DOT_O_DEPS) $(OBJ_O_DEPS) $(slrn_O_DEP)
	cd $(OBJDIR) && $(COMPILE_CMD) $(slrn_C_FLAGS) $(SRCDIR)/slrn.c

$(OBJDIR)/slrndir.o : $(SRCDIR)/slrndir.c $(DOT_O_DEPS) $(OBJ_O_DEPS) $(slrndir_O_DEP)
	cd $(OBJDIR) && $(COMPILE_CMD) $(slrndir_C_FLAGS) $(SRCDIR)/slrndir.c

$(OBJDIR)/snprintf.o : $(SRCDIR)/snprintf.c $(DOT_O_DEPS) $(OBJ_O_DEPS) $(snprintf_O_DEP)
	cd $(OBJDIR) && $(COMPILE_CMD) $(snprintf_C_FLAGS) $(SRCDIR)/snprintf.c

$(OBJDIR)/sortdate.o : $(SRCDIR)/sortdate.c $(DOT_O_DEPS) $(OBJ_O_DEPS) $(sortdate_O_DEP)
	cd $(OBJDIR) && $(COMPILE_CMD) $(sortdate_C_FLAGS) $(SRCDIR)/sortdate.c

$(OBJDIR)/startup.o : $(SRCDIR)/startup.c $(DOT_O_DEPS) $(OBJ_O_DEPS) $(startup_O_DEP)
	cd $(OBJDIR) && $(COMPILE_CMD) $(startup_C_FLAGS) $(SRCDIR)/startup.c

$(OBJDIR)/strutil.o : $(SRCDIR)/strutil.c $(DOT_O_DEPS) $(OBJ_O_DEPS) $(strutil_O_DEP)
	cd $(OBJDIR) && $(COMPILE_CMD) $(strutil_C_FLAGS) $(SRCDIR)/strutil.c

$(OBJDIR)/ttymsg.o : $(SRCDIR)/ttymsg.c $(DOT_O_DEPS) $(OBJ_O_DEPS) $(ttymsg_O_DEP)
	cd $(OBJDIR) && $(COMPILE_CMD) $(ttymsg_C_FLAGS) $(SRCDIR)/ttymsg.c

$(OBJDIR)/util.o : $(SRCDIR)/util.c $(DOT_O_DEPS) $(OBJ_O_DEPS) $(util_O_DEP)
	cd $(OBJDIR) && $(COMPILE_CMD) $(util_C_FLAGS) $(SRCDIR)/util.c

$(OBJDIR)/version.o : $(SRCDIR)/version.c $(DOT_O_DEPS) $(OBJ_O_DEPS) $(version_O_DEP)
	cd $(OBJDIR) && $(COMPILE_CMD) $(version_C_FLAGS) $(SRCDIR)/version.c

$(OBJDIR)/vfile.o : $(SRCDIR)/vfile.c $(DOT_O_DEPS) $(OBJ_O_DEPS) $(vfile_O_DEP)
	cd $(OBJDIR) && $(COMPILE_CMD) $(vfile_C_FLAGS) $(SRCDIR)/vfile.c

$(OBJDIR)/xover.o : $(SRCDIR)/xover.c $(DOT_O_DEPS) $(OBJ_O_DEPS) $(xover_O_DEP)
	cd $(OBJDIR) && $(COMPILE_CMD) $(xover_C_FLAGS) $(SRCDIR)/xover.c

$(OBJDIR)/parse2822.o : $(SRCDIR)/parse2822.c $(DOT_O_DEPS) $(OBJ_O_DEPS) $(parse2822_O_DEP)
	cd $(OBJDIR) && $(COMPILE_CMD) $(parse2822_C_FLAGS) $(SRCDIR)/parse2822.c

$(OBJDIR)/chkslang.o : $(SRCDIR)/chkslang.c $(DOT_O_DEPS) $(OBJ_O_DEPS) $(chkslang_O_DEP)
	cd $(OBJDIR) && $(COMPILE_CMD) $(chkslang_C_FLAGS) $(SRCDIR)/chkslang.c

$(OBJDIR)/sltcp.o : $(SRCDIR)/sltcp.c $(DOT_O_DEPS) $(OBJ_O_DEPS) $(sltcp_O_DEP)
	cd $(OBJDIR) && $(COMPILE_CMD) $(sltcp_C_FLAGS) $(SRCDIR)/sltcp.c

$(OBJDIR)/nntplib.o : $(SRCDIR)/nntplib.c $(DOT_O_DEPS) $(OBJ_O_DEPS) $(nntplib_O_DEP)
	cd $(OBJDIR) && $(COMPILE_CMD) $(nntplib_C_FLAGS) $(SRCDIR)/nntplib.c

slrnpull : $(OBJDIR)/slrnpull
	@echo slrnpull created in $(OBJDIR)
$(OBJDIR)/slrnpull : $(OBJDIR)/slrnpull.o $(slrnpull_DEPS) $(EXECDEPS)
	$(CC) -o $(OBJDIR)/slrnpull $(LDFLAGS) $(OBJDIR)/slrnpull.o $(slrnpull_LIBS) $(EXECLIBS)
$(OBJDIR)/slrnpull.o : $(SRCDIR)/slrnpull.c $(DOT_O_DEPS) $(slrnpull_O_DEP)
	cd $(OBJDIR) && $(COMPILE_CMD) $(slrnpull_INC) $(EXECINC) $(SRCDIR)/slrnpull.c

