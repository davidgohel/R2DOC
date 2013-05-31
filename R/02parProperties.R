# TODO: Documentation de parProperties.R
# 
# Author: David GOHEL <david.gohel@lysis-consultants.fr>
# Date: 6 mai 2013
# Version: 0.1
###############################################################################

setClass("parProperties"
		, representation(properties = "character")
)

setMethod("initialize", "parProperties", function(.Object, ... ) {
			args = list(...)
			template = c( "text-align" = "left"
					, "padding-bottom" = "1px"
					, "padding-top" = "1px"
					, "padding-left" = "1px"
					, "padding-right" = "1px"	)
			
			if( any( names( args ) == "text-align" ) ){
				match.arg( args [["text-align"]], choices = c("left", "right", "center", "justify"), several.ok = F )
				template[["text-align"]] = args[["text-align"]]
			}
			
			# width checking
			padding.regmatches = regexpr( "padding\\-(bottom|top|left|right)", names( args ) )
			if( any( padding.regmatches ) ){
				xx = sapply( args [padding.regmatches>0], function( x ) { regexpr("^[0-9\\.]+px" , x )> 0 } )
				if( !all( xx ) ) stop("padding must be expressed in px." )
				template[ names( args )[padding.regmatches>0] ] = args [padding.regmatches>0]
			}
			
			
			.Object@properties = unlist(template)
			.Object
		})


setMethod("as.character", "parProperties", function(x) {
			paste( "", names( x@properties ), ":", x@properties, ";", sep = "" , collapse = "" )
		}
) 

setMethod("show", "parProperties",
		function(object){
			cat("par properties{\n")
			cat( paste( indent(1), names( object@properties ), ":", object@properties, ";", sep = "" , collapse = "\n" ) )
			cat("\n}\n")
		})

parProperties = function( text.align = "left", padding.bottom = 1
		, padding.top = 1, padding.left = 1, padding.right = 1, padding ){
	
	if( !missing( padding ) ){
		if( is.numeric( padding ) ) {
			if( as.integer( padding ) < 0 || !is.finite( as.integer( padding ) ) ) stop("invalid padding : ", padding )
			padding.bottom = padding.top = padding.right = padding.left = as.integer( padding )
		} else {
			stop("padding must be a integer value ( >=0 ).")
		}
	}
	
	if( is.numeric( padding.bottom ) ) {
		if( as.integer( padding.bottom ) < 0 || !is.finite( as.integer( padding.bottom ) ) ) stop("invalid padding.bottom : ", padding.bottom )
		padding.bottom = paste( as.integer( padding.bottom ), "px", sep = "" )
	} 

	if( is.numeric( padding.top ) ) {
		if( as.integer( padding.top ) < 0 || !is.finite( as.integer( padding.top ) ) ) stop("invalid padding.top : ", padding.top )
		padding.top = paste( as.integer( padding.top ), "px", sep = "" )
	} 
	
	if( is.numeric( padding.right ) ) {
		if( as.integer( padding.right ) < 0 || !is.finite( as.integer( padding.right ) ) ) stop("invalid padding.right : ", padding.right )
		padding.right = paste( as.integer( padding.right ), "px", sep = "" )
	} 
	
	if( is.numeric( padding.left ) ) {
		if( as.integer( padding.left ) < 0 || !is.finite( as.integer( padding.left ) ) ) stop("invalid padding.left : ", padding.left )
		padding.left = paste( as.integer( padding.left ), "px", sep = "" )
	} 
	
	new ("parProperties"
			, "text-align" = text.align, "padding-bottom" = padding.bottom
			, "padding-top" = padding.top, "padding-right" = padding.right
			, "padding-left" = padding.left )
}

