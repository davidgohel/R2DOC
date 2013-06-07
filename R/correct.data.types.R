# TODO: Documentation de correct.data.types.R
# 
# Author: David GOHEL <david.gohel@lysis-consultants.fr>
# Date: 23 mai 2013
# Version: 0.1
###############################################################################
correct.data.types = function( data, col.types ){
	data.names = names( data )
	for( j in 1:ncol(data) ){
		# factor and Date must be character
		if( is.factor( data[, j] ) ){
			data[, j] = as.character( data[, j] )
		}
		if( col.types[[ data.names[j] ]] == "date" && inherits( data[, j], "Date" ) ){
			data[, j] = format( data[, j], "%Y-%m-%d " )
		}
		if( col.types[[ data.names[j] ]] == "datetime" && inherits( data[, j], "Date" ) ){
			data[, j] = format( data[, j], "%Y-%m-%d at %X" )
		}
		if( col.types[[ data.names[j] ]] == "percent" ){
			data[, j] = as.double( data[, j] )
		}
		if( col.types[[ data.names[j] ]] == "integer" ){
			data[, j] = as.integer( data[, j] )
		}
		if( col.types[[ data.names[j] ]] == "double" ){
			data[, j] = as.double( data[, j] )
		}
		if( col.types[[ data.names[j] ]] == "character" && is.logical(data[, j]) ){
			data[, j] = ifelse( data[, j], "true", "false")
		}
		
		
	}
	data
}
