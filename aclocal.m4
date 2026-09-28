# generated automatically by aclocal 1.18.1 -*- Autoconf -*-

# Copyright (C) 1996-2025 Free Software Foundation, Inc.

# This file is free software; the Free Software Foundation
# gives unlimited permission to copy and/or distribute it,
# with or without modifications, as long as this notice is preserved.

# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY, to the extent permitted by law; without
# even the implied warranty of MERCHANTABILITY or FITNESS FOR A
# PARTICULAR PURPOSE.

m4_ifndef([AC_CONFIG_MACRO_DIRS], [m4_defun([_AM_CONFIG_MACRO_DIRS], [])m4_defun([AC_CONFIG_MACRO_DIRS], [_AM_CONFIG_MACRO_DIRS($@)])])

dnl IT_PROG_INTLTOOL([MINIMUM-VERSION], [no-xml])
# serial 42 IT_PROG_INTLTOOL
AC_DEFUN([IT_PROG_INTLTOOL], [
AC_PREREQ([2.50])dnl
AC_REQUIRE([AM_NLS])dnl

case "$am__api_version" in
    1.[01234])
	AC_MSG_ERROR([Automake 1.5 or newer is required to use intltool])
    ;;
    *)
    ;;
esac

INTLTOOL_REQUIRED_VERSION_AS_INT=`echo $1 | awk -F. '{ print $ 1 * 1000 + $ 2 * 100 + $ 3; }'`
INTLTOOL_APPLIED_VERSION=`intltool-update --version | head -1 | cut -d" " -f3`
INTLTOOL_APPLIED_VERSION_AS_INT=`echo $INTLTOOL_APPLIED_VERSION | awk -F. '{ print $ 1 * 1000 + $ 2 * 100 + $ 3; }'`
if test -n "$1"; then
    AC_MSG_CHECKING([for intltool >= $1])
    AC_MSG_RESULT([$INTLTOOL_APPLIED_VERSION found])
    test "$INTLTOOL_APPLIED_VERSION_AS_INT" -ge "$INTLTOOL_REQUIRED_VERSION_AS_INT" ||
	AC_MSG_ERROR([Your intltool is too old.  You need intltool $1 or later.])
fi

AC_PATH_PROG(INTLTOOL_UPDATE, [intltool-update])
AC_PATH_PROG(INTLTOOL_MERGE, [intltool-merge])
AC_PATH_PROG(INTLTOOL_EXTRACT, [intltool-extract])
if test -z "$INTLTOOL_UPDATE" -o -z "$INTLTOOL_MERGE" -o -z "$INTLTOOL_EXTRACT"; then
    AC_MSG_ERROR([The intltool scripts were not found. Please install intltool.])
fi

if test -z "$AM_DEFAULT_VERBOSITY"; then
  AM_DEFAULT_VERBOSITY=1
fi
AC_SUBST([AM_DEFAULT_VERBOSITY])

INTLTOOL_V_MERGE='$(INTLTOOL__v_MERGE_$(V))'
INTLTOOL__v_MERGE_='$(INTLTOOL__v_MERGE_$(AM_DEFAULT_VERBOSITY))'
INTLTOOL__v_MERGE_0='@echo "  ITMRG " [$]@;'
AC_SUBST(INTLTOOL_V_MERGE)
AC_SUBST(INTLTOOL__v_MERGE_)
AC_SUBST(INTLTOOL__v_MERGE_0)

INTLTOOL_V_MERGE_OPTIONS='$(intltool__v_merge_options_$(V))'
intltool__v_merge_options_='$(intltool__v_merge_options_$(AM_DEFAULT_VERBOSITY))'
intltool__v_merge_options_0='-q'
AC_SUBST(INTLTOOL_V_MERGE_OPTIONS)
AC_SUBST(intltool__v_merge_options_)
AC_SUBST(intltool__v_merge_options_0)

  INTLTOOL_DESKTOP_RULE='%.desktop:   %.desktop.in   $(INTLTOOL_MERGE) $(wildcard $(top_srcdir)/po/*.po) ; $(INTLTOOL_V_MERGE)LC_ALL=C $(INTLTOOL_MERGE) $(INTLTOOL_V_MERGE_OPTIONS) -d -u -c $(top_builddir)/po/.intltool-merge-cache $(top_srcdir)/po $< [$]@' 
INTLTOOL_DIRECTORY_RULE='%.directory: %.directory.in $(INTLTOOL_MERGE) $(wildcard $(top_srcdir)/po/*.po) ; $(INTLTOOL_V_MERGE)LC_ALL=C $(INTLTOOL_MERGE) $(INTLTOOL_V_MERGE_OPTIONS) -d -u -c $(top_builddir)/po/.intltool-merge-cache $(top_srcdir)/po $< [$]@' 
     INTLTOOL_KEYS_RULE='%.keys:      %.keys.in      $(INTLTOOL_MERGE) $(wildcard $(top_srcdir)/po/*.po) ; $(INTLTOOL_V_MERGE)LC_ALL=C $(INTLTOOL_MERGE) $(INTLTOOL_V_MERGE_OPTIONS) -k -u -c $(top_builddir)/po/.intltool-merge-cache $(top_srcdir)/po $< [$]@' 
     INTLTOOL_PROP_RULE='%.prop:      %.prop.in      $(INTLTOOL_MERGE) $(wildcard $(top_srcdir)/po/*.po) ; $(INTLTOOL_V_MERGE)LC_ALL=C $(INTLTOOL_MERGE) $(INTLTOOL_V_MERGE_OPTIONS) -d -u -c $(top_builddir)/po/.intltool-merge-cache $(top_srcdir)/po $< [$]@' 
      INTLTOOL_OAF_RULE='%.oaf:       %.oaf.in       $(INTLTOOL_MERGE) $(wildcard $(top_srcdir)/po/*.po) ; $(INTLTOOL_V_MERGE)LC_ALL=C $(INTLTOOL_MERGE) $(INTLTOOL_V_MERGE_OPTIONS) -o -p $(top_srcdir)/po $< [$]@'
     INTLTOOL_PONG_RULE='%.pong:      %.pong.in      $(INTLTOOL_MERGE) $(wildcard $(top_srcdir)/po/*.po) ; $(INTLTOOL_V_MERGE)LC_ALL=C $(INTLTOOL_MERGE) $(INTLTOOL_V_MERGE_OPTIONS) -x -u -c $(top_builddir)/po/.intltool-merge-cache $(top_srcdir)/po $< [$]@' 
   INTLTOOL_SERVER_RULE='%.server:    %.server.in    $(INTLTOOL_MERGE) $(wildcard $(top_srcdir)/po/*.po) ; $(INTLTOOL_V_MERGE)LC_ALL=C $(INTLTOOL_MERGE) $(INTLTOOL_V_MERGE_OPTIONS) -o -u -c $(top_builddir)/po/.intltool-merge-cache $(top_srcdir)/po $< [$]@' 
    INTLTOOL_SHEET_RULE='%.sheet:     %.sheet.in     $(INTLTOOL_MERGE) $(wildcard $(top_srcdir)/po/*.po) ; $(INTLTOOL_V_MERGE)LC_ALL=C $(INTLTOOL_MERGE) $(INTLTOOL_V_MERGE_OPTIONS) -x -u -c $(top_builddir)/po/.intltool-merge-cache $(top_srcdir)/po $< [$]@' 
INTLTOOL_SOUNDLIST_RULE='%.soundlist: %.soundlist.in $(INTLTOOL_MERGE) $(wildcard $(top_srcdir)/po/*.po) ; $(INTLTOOL_V_MERGE)LC_ALL=C $(INTLTOOL_MERGE) $(INTLTOOL_V_MERGE_OPTIONS) -d -u -c $(top_builddir)/po/.intltool-merge-cache $(top_srcdir)/po $< [$]@' 
       INTLTOOL_UI_RULE='%.ui:        %.ui.in        $(INTLTOOL_MERGE) $(wildcard $(top_srcdir)/po/*.po) ; $(INTLTOOL_V_MERGE)LC_ALL=C $(INTLTOOL_MERGE) $(INTLTOOL_V_MERGE_OPTIONS) -x -u -c $(top_builddir)/po/.intltool-merge-cache $(top_srcdir)/po $< [$]@' 
      INTLTOOL_XML_RULE='%.xml:       %.xml.in       $(INTLTOOL_MERGE) $(wildcard $(top_srcdir)/po/*.po) ; $(INTLTOOL_V_MERGE)LC_ALL=C $(INTLTOOL_MERGE) $(INTLTOOL_V_MERGE_OPTIONS) -x -u -c $(top_builddir)/po/.intltool-merge-cache $(top_srcdir)/po $< [$]@' 
if test "$INTLTOOL_APPLIED_VERSION_AS_INT" -ge 5000; then
      INTLTOOL_XML_NOMERGE_RULE='%.xml:       %.xml.in       $(INTLTOOL_MERGE) ; $(INTLTOOL_V_MERGE)LC_ALL=C $(INTLTOOL_MERGE) $(INTLTOOL_V_MERGE_OPTIONS) -x -u --no-translations $< [$]@'
else
      INTLTOOL_XML_NOMERGE_RULE='%.xml:       %.xml.in       $(INTLTOOL_MERGE) ; $(INTLTOOL_V_MERGE)_it_tmp_dir=tmp.intltool.[$][$]RANDOM && mkdir [$][$]_it_tmp_dir && LC_ALL=C $(INTLTOOL_MERGE) $(INTLTOOL_V_MERGE_OPTIONS) -x -u [$][$]_it_tmp_dir $< [$]@ && rmdir [$][$]_it_tmp_dir'
fi
      INTLTOOL_XAM_RULE='%.xam:       %.xml.in       $(INTLTOOL_MERGE) $(wildcard $(top_srcdir)/po/*.po) ; $(INTLTOOL_V_MERGE)LC_ALL=C $(INTLTOOL_MERGE) $(INTLTOOL_V_MERGE_OPTIONS) -x -u -c $(top_builddir)/po/.intltool-merge-cache $(top_srcdir)/po $< [$]@' 
      INTLTOOL_KBD_RULE='%.kbd:       %.kbd.in       $(INTLTOOL_MERGE) $(wildcard $(top_srcdir)/po/*.po) ; $(INTLTOOL_V_MERGE)LC_ALL=C $(INTLTOOL_MERGE) $(INTLTOOL_V_MERGE_OPTIONS) -x -u -m -c $(top_builddir)/po/.intltool-merge-cache $(top_srcdir)/po $< [$]@' 
    INTLTOOL_CAVES_RULE='%.caves:     %.caves.in     $(INTLTOOL_MERGE) $(wildcard $(top_srcdir)/po/*.po) ; $(INTLTOOL_V_MERGE)LC_ALL=C $(INTLTOOL_MERGE) $(INTLTOOL_V_MERGE_OPTIONS) -d -u -c $(top_builddir)/po/.intltool-merge-cache $(top_srcdir)/po $< [$]@' 
  INTLTOOL_SCHEMAS_RULE='%.schemas:   %.schemas.in   $(INTLTOOL_MERGE) $(wildcard $(top_srcdir)/po/*.po) ; $(INTLTOOL_V_MERGE)LC_ALL=C $(INTLTOOL_MERGE) $(INTLTOOL_V_MERGE_OPTIONS) -s -u -c $(top_builddir)/po/.intltool-merge-cache $(top_srcdir)/po $< [$]@' 
    INTLTOOL_THEME_RULE='%.theme:     %.theme.in     $(INTLTOOL_MERGE) $(wildcard $(top_srcdir)/po/*.po) ; $(INTLTOOL_V_MERGE)LC_ALL=C $(INTLTOOL_MERGE) $(INTLTOOL_V_MERGE_OPTIONS) -d -u -c $(top_builddir)/po/.intltool-merge-cache $(top_srcdir)/po $< [$]@' 
    INTLTOOL_SERVICE_RULE='%.service: %.service.in   $(INTLTOOL_MERGE) $(wildcard $(top_srcdir)/po/*.po) ; $(INTLTOOL_V_MERGE)LC_ALL=C $(INTLTOOL_MERGE) $(INTLTOOL_V_MERGE_OPTIONS) -d -u -c $(top_builddir)/po/.intltool-merge-cache $(top_srcdir)/po $< [$]@'
   INTLTOOL_POLICY_RULE='%.policy:    %.policy.in    $(INTLTOOL_MERGE) $(wildcard $(top_srcdir)/po/*.po) ; $(INTLTOOL_V_MERGE)LC_ALL=C $(INTLTOOL_MERGE) $(INTLTOOL_V_MERGE_OPTIONS) -x -u -c $(top_builddir)/po/.intltool-merge-cache $(top_srcdir)/po $< [$]@'

_IT_SUBST(INTLTOOL_DESKTOP_RULE)
_IT_SUBST(INTLTOOL_DIRECTORY_RULE)
_IT_SUBST(INTLTOOL_KEYS_RULE)
_IT_SUBST(INTLTOOL_PROP_RULE)
_IT_SUBST(INTLTOOL_OAF_RULE)
_IT_SUBST(INTLTOOL_PONG_RULE)
_IT_SUBST(INTLTOOL_SERVER_RULE)
_IT_SUBST(INTLTOOL_SHEET_RULE)
_IT_SUBST(INTLTOOL_SOUNDLIST_RULE)
_IT_SUBST(INTLTOOL_UI_RULE)
_IT_SUBST(INTLTOOL_XAM_RULE)
_IT_SUBST(INTLTOOL_KBD_RULE)
_IT_SUBST(INTLTOOL_XML_RULE)
_IT_SUBST(INTLTOOL_XML_NOMERGE_RULE)
_IT_SUBST(INTLTOOL_CAVES_RULE)
_IT_SUBST(INTLTOOL_SCHEMAS_RULE)
_IT_SUBST(INTLTOOL_THEME_RULE)
_IT_SUBST(INTLTOOL_SERVICE_RULE)
_IT_SUBST(INTLTOOL_POLICY_RULE)

# Check the gettext tools to make sure they are GNU
AC_PATH_PROG(XGETTEXT, xgettext)
AC_PATH_PROG(MSGMERGE, msgmerge)
AC_PATH_PROG(MSGFMT, msgfmt)
AC_PATH_PROG(GMSGFMT, gmsgfmt, $MSGFMT)
if test -z "$XGETTEXT" -o -z "$MSGMERGE" -o -z "$MSGFMT"; then
    AC_MSG_ERROR([GNU gettext tools not found; required for intltool])
fi
xgversion="`$XGETTEXT --version|grep '(GNU ' 2> /dev/null`"
mmversion="`$MSGMERGE --version|grep '(GNU ' 2> /dev/null`"
mfversion="`$MSGFMT --version|grep '(GNU ' 2> /dev/null`"
if test -z "$xgversion" -o -z "$mmversion" -o -z "$mfversion"; then
    AC_MSG_ERROR([GNU gettext tools not found; required for intltool])
fi

# Substitute ALL_LINGUAS so we can use it in po/Makefile
AC_SUBST(ALL_LINGUAS)

IT_PO_SUBDIR([po])

])


# IT_PO_SUBDIR(DIRNAME)
# ---------------------
# All po subdirs have to be declared with this macro; the subdir "po" is
# declared by IT_PROG_INTLTOOL.
#
AC_DEFUN([IT_PO_SUBDIR],
[AC_PREREQ([2.53])dnl We use ac_top_srcdir inside AC_CONFIG_COMMANDS.
dnl
dnl The following CONFIG_COMMANDS should be executed at the very end
dnl of config.status.
AC_CONFIG_COMMANDS_PRE([
  AC_CONFIG_COMMANDS([$1/stamp-it], [
    if [ ! grep "^# INTLTOOL_MAKEFILE$" "$1/Makefile.in" > /dev/null ]; then
       AC_MSG_ERROR([$1/Makefile.in.in was not created by intltoolize.])
    fi
    rm -f "$1/stamp-it" "$1/stamp-it.tmp" "$1/POTFILES" "$1/Makefile.tmp"
    >"$1/stamp-it.tmp"
    [sed '/^#/d
	 s/^[[].*] *//
	 /^[ 	]*$/d
	'"s|^|	$ac_top_srcdir/|" \
      "$srcdir/$1/POTFILES.in" | sed '$!s/$/ \\/' >"$1/POTFILES"
    ]
    [sed '/^POTFILES =/,/[^\\]$/ {
		/^POTFILES =/!d
		r $1/POTFILES
	  }
	 ' "$1/Makefile.in" >"$1/Makefile"]
    rm -f "$1/Makefile.tmp"
    mv "$1/stamp-it.tmp" "$1/stamp-it"
  ])
])dnl
])

# _IT_SUBST(VARIABLE)
# -------------------
# Abstract macro to do either _AM_SUBST_NOTMAKE or AC_SUBST
#
AC_DEFUN([_IT_SUBST],
[
AC_SUBST([$1])
m4_ifdef([_AM_SUBST_NOTMAKE], [_AM_SUBST_NOTMAKE([$1])])
]
)

# deprecated macros
AU_ALIAS([AC_PROG_INTLTOOL], [IT_PROG_INTLTOOL])
# A hint is needed for aclocal from Automake <= 1.9.4:
# AC_DEFUN([AC_PROG_INTLTOOL], ...)


# nls.m4
# serial 7 (gettext-1.0)
dnl Copyright (C) 1995-2026 Free Software Foundation, Inc.
dnl This file is free software; the Free Software Foundation
dnl gives unlimited permission to copy and/or distribute it,
dnl with or without modifications, as long as this notice is preserved.
dnl This file is offered as-is, without any warranty.
dnl
dnl This file can be used in projects which are not available under
dnl the GNU General Public License or the GNU Lesser General Public
dnl License but which still want to provide support for the GNU gettext
dnl functionality.
dnl Please note that the actual code of the GNU gettext library is covered
dnl by the GNU Lesser General Public License, and the rest of the GNU
dnl gettext package is covered by the GNU General Public License.
dnl They are *not* in the public domain.

dnl From Ulrich Drepper, Bruno Haible.

AC_PREREQ([2.50])

AC_DEFUN([AM_NLS],
[
  AC_MSG_CHECKING([whether NLS is requested])
  dnl Default is enabled NLS
  AC_ARG_ENABLE([nls],
    [  --disable-nls           do not use Native Language Support],
    USE_NLS=$enableval, USE_NLS=yes)
  AC_MSG_RESULT([$USE_NLS])
  AC_SUBST([USE_NLS])
])

# Copyright (C) 2006-2025 Free Software Foundation, Inc.
#
# This file is free software; the Free Software Foundation
# gives unlimited permission to copy and/or distribute it,
# with or without modifications, as long as this notice is preserved.

# _AM_SUBST_NOTMAKE(VARIABLE)
# ---------------------------
# Prevent Automake from outputting VARIABLE = @VARIABLE@ in Makefile.in.
# This macro is traced by Automake.
AC_DEFUN([_AM_SUBST_NOTMAKE])

# AM_SUBST_NOTMAKE(VARIABLE)
# --------------------------
# Public sister of _AM_SUBST_NOTMAKE.
AC_DEFUN([AM_SUBST_NOTMAKE], [_AM_SUBST_NOTMAKE($@)])

