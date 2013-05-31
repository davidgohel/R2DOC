# TODO: Documentation de text2html.R
# 
# Author: David GOHEL <david.gohel@lysis-consultants.fr>
# Date: 19 mai 2013
# Version: 0.1
###############################################################################

text2html = function( x ) {
	obj = .jnew("com/tecnick/htmlutils/htmlentities/HTMLEntities" )
	x = .jcall( obj, "S", "htmlentities", x )
	x = .jcall( obj, "S", "htmlAngleBrackets", x )
	x = .jcall( obj, "S", "htmlQuotes", x )
	
	x
}

