# TODO: Documentation de is.color.R
# 
# Author: David GOHEL <david.gohel@lysis-consultants.fr>
# Date: 6 mai 2013
# Version: 0.1
###############################################################################

is.color <- function(x) {
	sapply(x, function( x ) {
				tryCatch( is.matrix( col2rgb( x ) ), error = function( e ) F )
			})
}

