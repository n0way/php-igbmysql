dnl $Id$
dnl config.m4 for extension igbmysql

dnl Comments in this file start with the string 'dnl'.
dnl Remove where necessary. This file will not work
dnl without editing.

dnl If your extension references something external, use with:

dnl PHP_ARG_WITH(igbmysql, for igbmysql support,
dnl Make sure that the comment is aligned:
dnl [  --with-igbmysql             Include igbmysql support])

dnl Otherwise use enable:

dnl PHP_ARG_ENABLE(igbmysql, whether to enable igbmysql support,
dnl Make sure that the comment is aligned:
dnl [  --enable-igbmysql           Enable igbmysql support])

if test "$PHP_IGBMYSQL" != "no"; then
  dnl Write more examples of tests here...

  dnl # --with-igbmysql -> check with-path
  dnl SEARCH_PATH="/usr/local /usr"     # you might want to change this
  dnl SEARCH_FOR="/include/igbmysql.h"  # you most likely want to change this
  dnl if test -r $PHP_IGBMYSQL/$SEARCH_FOR; then # path given as parameter
  dnl   IGBMYSQL_DIR=$PHP_IGBMYSQL
  dnl else # search default path list
  dnl   AC_MSG_CHECKING([for igbmysql files in default path])
  dnl   for i in $SEARCH_PATH ; do
  dnl     if test -r $i/$SEARCH_FOR; then
  dnl       IGBMYSQL_DIR=$i
  dnl       AC_MSG_RESULT(found in $i)
  dnl     fi
  dnl   done
  dnl fi
  dnl
  dnl if test -z "$IGBMYSQL_DIR"; then
  dnl   AC_MSG_RESULT([not found])
  dnl   AC_MSG_ERROR([Please reinstall the igbmysql distribution])
  dnl fi

  dnl # --with-igbmysql -> add include path
  dnl PHP_ADD_INCLUDE($IGBMYSQL_DIR/include)

  dnl # --with-igbmysql -> check for lib and symbol presence
  dnl LIBNAME=igbmysql # you may want to change this
  dnl LIBSYMBOL=igbmysql # you most likely want to change this 

  dnl PHP_CHECK_LIBRARY($LIBNAME,$LIBSYMBOL,
  dnl [
  dnl   PHP_ADD_LIBRARY_WITH_PATH($LIBNAME, $IGBMYSQL_DIR/lib, IGBMYSQL_SHARED_LIBADD)
  dnl   AC_DEFINE(HAVE_IGBMYSQLLIB,1,[ ])
  dnl ],[
  dnl   AC_MSG_ERROR([wrong igbmysql lib version or lib not found])
  dnl ],[
  dnl   -L$IGBMYSQL_DIR/lib -lm
  dnl ])
  dnl
  dnl PHP_SUBST(IGBMYSQL_SHARED_LIBADD)

  PHP_NEW_EXTENSION(igbmysql, igbmysql.c, $ext_shared)
fi
