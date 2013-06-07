# TODO: Documentation de addTable.check.arg.R
# 
# Author: David GOHEL <david.gohel@lysis-consultants.fr>
# Date: 15 mai 2013
# Version: 0.1
###############################################################################
addTable.check.arg = function( data
	, formats, header.labels, grouped.cols = list(), span.columns = character(0)
	, col.types, col.colors, col.fontcolors, extra.type ) {

	known.types = c("character", "double", "integer", "percent", "date", "datetime")

	if( !missing( extra.type ) ) known.types = c( known.types, extra.type)

	#### data checking
	if( missing( data ) ) stop("data is missing.")
	# check data is a data.frame
	if( !is.data.frame( data ))
		stop("data is not a data.frame.")
	# check data is a data.frame
	if( nrow( data )<1)
		stop("data has 0 row.")
	
	if( !missing( formats ) ){
		if( class( formats ) != "tableProperties" ) 
			stop( "formats is not an object from the class 'tableProperties'." )
	} else stop("formats (object from the class 'tableProperties') is missing.")

	#### check that every colnames has a matching label
	if( !missing( header.labels ) ){
		.is.elt.header.labels = is.element( names( data ), names( header.labels ) )
		if( !all( .is.elt.header.labels ) ){
			stop( "header.labels does not contain labels for variables :", paste( names( data )[!.is.elt.header.labels], collapse = ", " ), "\n" ) 
		}
	} else { # else we set values as names of data
		header.labels = as.list( names( data ) )
		names( header.labels ) = names( data )
	}	
	
	#### check span.first.columns
	if( !is.character( span.columns ) ){
		stop("span.first.columns must be a character vector.")
	} 
	.ie.span.columns = is.element( span.columns , names( data ) )
	if( !all ( .ie.span.columns ) ){
		stop("span.columns contains unknown columns names :", paste( span.columns[!.ie.span.columns], collapse = "," ) )
	}	
	if( nrow( data ) < 2 ) span.columns = character(0)
	else if ( length( span.columns ) > 0 ){
		valid.span.cols = sapply( data[, span.columns, drop = F ], function( x ) all( x[-1]==x[-length( x ) ] ) )
		span.columns = span.columns[valid.span.cols]
	}
	
	if( missing( col.types ) ){
		col.types = lapply( data , function(x) {
					out = class(x)
					if( out == "factor") out = "character"
					if( out == "numeric") out = "double"
					if( out == "logical") out = "character"# TODO: need improvments for that data type 
					if( out == "Date") out = "date"
					if( out == "POSIXct") out = "datetime"
					if( out == "POSIXlt") out = "datetime"
					out
				} )
	} else if ( class(col.types)!="list" ) stop("col.types must be a list.")
	.is.elt.col.types = is.element( names( data ), names( col.types ) )
	if( !all( .is.elt.col.types ) ){
		stop( "col.types does not contain labels for some of the data : ", paste( names( data )[!.is.elt.col.types], collapse = "," ) )
		
	} else {
		.is.elt.types = is.element( unlist( col.types ), known.types )
		if( !all( .is.elt.types ) ){
			stop( "col.types does contain invalid types not in (", paste( known.types, collapse = ", " ) ,") : " 
				, paste( names( col.types )[!.is.elt.types], collapse = ", " ), "\n"
				)
		}
	}

	if( !missing( grouped.cols ) ){
		if( length( grouped.cols ) > 0 ){
			.names.to.match = unlist( grouped.cols )
			.is.elt.grouped.cols = is.element( names( data ), .names.to.match )

			if( !all(.is.elt.grouped.cols) )
				stop("argument 'grouped.cols' does not match with all columns of 'data' : ", paste( names( data )[!.is.elt.grouped.cols], collapse = "," ) )
			
			if( !all( names( data ) == .names.to.match ) )
				stop("argument 'grouped.cols' does not have the correct ordering regarding data columns order.")

		}
	} else grouped.cols = list()
	
	if( !missing( col.colors ) ){
		if( length( col.colors ) > 0 ){
			.is.elt.col.colors = is.element( names( col.colors ), names( data ) )
			
			if( !all( .is.elt.col.colors ) )
				stop("Some elements of 'col.colors' does not match with columns of 'data'."
					, paste( names( col.colors )[!.is.elt.col.colors], collapse = "," ) )
			
			if( !all( sapply( col.colors, length ) == nrow( data ) ) )
				stop("Lengths of 'col.colors' must be equal to nrow(data).")
			
			if( !all( sapply( col.colors, is.character ) ) )
				stop("'col.colors' must be a list of character vector describing valid css colors.")
			
		}
	} else col.colors = list()
	
	if( !missing( col.fontcolors ) ){
		if( length( col.fontcolors ) > 0 ){
			.is.elt.col.fontcolors = is.element( names( col.fontcolors ), names( data ) )
			
			if( !all( .is.elt.col.fontcolors ) )
				stop("Some elements of 'col.fontcolors' does not match with columns of 'data'."
						, paste( names( col.fontcolors )[!.is.elt.col.fontcolors], collapse = "," ) )
			
			if( !all( sapply( col.fontcolors, length ) == nrow( data ) ) )
				stop("Lengths of 'col.fontcolors' must be equal to nrow(data).")
			
			if( !all( sapply( col.fontcolors, is.character ) ) )
				stop("'col.fontcolors' must be a list of character vector describing valid css colors.")
			
		}
	} else col.fontcolors = list()
	
	list( data = data
		, formats = formats
		, header.labels = header.labels
		, grouped.cols = grouped.cols
		, span.columns = span.columns
		, col.types = col.types
		, col.colors = col.colors
		, col.fontcolors = col.fontcolors 
	)
}

