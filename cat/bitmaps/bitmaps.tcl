#!../bin/rtdimage_wish
#
# E.S.O. - VLT project/ ESO Archive
#
# "@(#) $Id: bitmaps.tcl,v 1.1.1.1 2009/03/31 14:11:52 cguirao Exp $"
#
# script to generate C code declaring X bitmaps so that the (binary) application
# doesn't have to be delivered with the bitmap files.
#
# who             when       what
# --------------  ---------  ----------------------------------------
# Allan Brighton  21 Nov 95  Created

puts {
/*
 * E.S.O. - VLT project / ESO Archive
 * "@(#) $Id: bitmaps.tcl,v 1.1.1.1 2009/03/31 14:11:52 cguirao Exp $"
 *
 * Tk Bitmap/Pixmap definitions
 *
 * This file was generated by ../bitmaps/bitmaps.tcl  - DO NO EDIT
 */

#include <tcl.h>
#include <tk.h>

}
puts "void defineCatBitmaps(Tcl_Interp *interp) {"

foreach file [glob -nocomplain *.xbm] {
    set name [file rootname $file]
    puts "    #include \"$file\""
    puts "    Tk_DefineBitmap(interp, Tk_GetUid(\"$name\"), (char*)${name}_bits, ${name}_width, ${name}_height);\n"
}

puts "}"

exit 0
