MAINTAINERCLEANFILES = Makefile.in

TT_VERSION = "CDE Version @CDE_VERSION_MAJOR@.@CDE_VERSION_MINOR@.@CDE_VERSION_MICRO@@CDE_VERSION_DEV@"
TT_VERSION_DEFINE = -DTT_VERSION_STRING=\"$(TT_VERSION)\"

noinst_SCRIPTS = ttce2xdr
BUILT_SOURCES = ttce2xdr
CLEANFILES = ttce2xdr

AM_CPPFLAGS = $(TT_VERSION_DEFINE)


ttce2xdr: ttce2xdr.cpp
	$(RM) $@
	$(GENCPP) -P -DXCOMM=# $(AM_CPPFLAGS) $< > $@

