# TODO: Documentation de get.random.id.R
# 
# Author: David GOHEL <david.gohel@lysis-consultants.fr>
# Date: 3 mai 2013
# Version: 0.1
###############################################################################

get.random.id <- function( len = 12 ) {
	return( paste( sample( c( rep(0:9, each = 2),LETTERS,letters),len,replace=TRUE),collapse=''))
}


