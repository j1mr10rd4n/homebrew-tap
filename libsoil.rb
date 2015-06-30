# libsoil formula
# copied from https://github.com/Nyoho/homebrew-libsoil

require 'formula'

class Libsoil < Formula
  homepage 'https://github.com/smibarber/libSOIL'
  url 'https://codeload.github.com/smibarber/libSOIL/zip/master'
  version '1.07'
  sha1 'a42baf594c02bdeeffed9fda4f0666bf3bd1725a'

  def patches
    DATA
  end

  def install
    system "make lib"
    system "make install"
  end
end

__END__
diff --git a/Makefile b/Makefile
index 6844aa6..630a698 100755
--- a/Makefile
+++ b/Makefile
@@ -1,7 +1,7 @@
 MAKE = make
 CC = gcc
-INSTALL_FILE = install -p -o root -g admin -m 644
-INSTALL_DIR = install -o root -g admin -d
+INSTALL_FILE = install -p -m 644
+INSTALL_DIR = install -d
 LN = ln -s
 RM = rm -fv
 CFLAGS += -c -O2 -Wall
@@ -17,8 +17,9 @@ HFILES = SOIL.h image_DXT.h image_helper.h \
   stbi_DDS_aug.h stbi_DDS_aug_c.h stb_image_aug.h
 AFILE = libSOIL.a
 DYLIBFILE = libSOIL.dylib
-INCLUDEDIR = opt/local/include/SOIL
-LIBDIR = opt/local/lib
+DESTDIR = /$HOMEBREW_PREFIX
+INCLUDEDIR = include/SOIL
+LIBDIR = lib
 
 all: $(OFILES) lib
 
@@ -30,7 +31,7 @@ lib: $(OFILES)
    ar -cvq $(LIBNAME).a $(OFILES)
    # create shared library
    gcc -dynamiclib -o $(DYLIBFILE) $(OFILES) $(LDFLAGS)\
-       -install_name $(DESTDIR)/$(LIBDIR)/$(DYLIBFILE)
+       -install_name /$HOMEBREW_PREFIX/libsoil/1.07/$(DYLIBFILE)
 
 install:
    $(INSTALL_DIR) $(DESTDIR)/$(INCLUDEDIR)
