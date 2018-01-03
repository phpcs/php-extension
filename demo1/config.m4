dnl $Id$
dnl config.m4 for extension bruce

dnl Comments in this file start with the string 'dnl'.
dnl Remove where necessary. This file will not work
dnl without editing.

dnl If your extension references something external, use with:

dnl PHP_ARG_WITH(bruce, for bruce support,
dnl Make sure that the comment is aligned:
dnl [  --with-bruce             Include bruce support])

dnl Otherwise use enable:

PHP_ARG_ENABLE(bruce, whether to enable bruce support,
Make sure that the comment is aligned:
[  --enable-bruce           Enable bruce support])

if test "$PHP_BRUCE" != "no"; then
  dnl Write more examples of tests here...

  dnl # --with-bruce -> check with-path
  dnl SEARCH_PATH="/usr/local /usr"     # you might want to change this
  dnl SEARCH_FOR="/include/bruce.h"  # you most likely want to change this
  dnl if test -r $PHP_BRUCE/$SEARCH_FOR; then # path given as parameter
  dnl   BRUCE_DIR=$PHP_BRUCE
  dnl else # search default path list
  dnl   AC_MSG_CHECKING([for bruce files in default path])
  dnl   for i in $SEARCH_PATH ; do
  dnl     if test -r $i/$SEARCH_FOR; then
  dnl       BRUCE_DIR=$i
  dnl       AC_MSG_RESULT(found in $i)
  dnl     fi
  dnl   done
  dnl fi
  dnl
  dnl if test -z "$BRUCE_DIR"; then
  dnl   AC_MSG_RESULT([not found])
  dnl   AC_MSG_ERROR([Please reinstall the bruce distribution])
  dnl fi

  dnl # --with-bruce -> add include path
  dnl PHP_ADD_INCLUDE($BRUCE_DIR/include)

  dnl # --with-bruce -> check for lib and symbol presence
  dnl LIBNAME=bruce # you may want to change this
  dnl LIBSYMBOL=bruce # you most likely want to change this 

  dnl PHP_CHECK_LIBRARY($LIBNAME,$LIBSYMBOL,
  dnl [
  dnl   PHP_ADD_LIBRARY_WITH_PATH($LIBNAME, $BRUCE_DIR/$PHP_LIBDIR, BRUCE_SHARED_LIBADD)
  dnl   AC_DEFINE(HAVE_BRUCELIB,1,[ ])
  dnl ],[
  dnl   AC_MSG_ERROR([wrong bruce lib version or lib not found])
  dnl ],[
  dnl   -L$BRUCE_DIR/$PHP_LIBDIR -lm
  dnl ])
  dnl
  PHP_SUBST(BRUCE_SHARED_LIBADD)

  PHP_NEW_EXTENSION(bruce, bruce.c, $ext_shared,, -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1)
fi
