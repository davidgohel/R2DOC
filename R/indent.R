# TODO: Documentation de indent.R
# 
# Author: David GOHEL <david.gohel@lysis-consultants.fr>
# Date: 3 mai 2013
# Version: 0.1
###############################################################################

indent = function( x ) {
	if( x > 0 )
		paste( rep("\t" , x), collapse = "" )
	else ""
}

