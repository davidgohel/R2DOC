# TODO: Documentation de textProperties.R
# 
# Author: David GOHEL <david.gohel@lysis-consultants.fr>
# Date: 6 mai 2013
# Version: 0.1
###############################################################################

setClass("textProperties"
		, representation(properties = "character")
)

setMethod("initialize", "textProperties", function(.Object, ... ) {
			args = list(...)
			
			template = c( "color" = "black"
							, "font-size" = "12px"
							, "font-weight" = "normal" 
							, "font-style" = "normal"
							, "font-family" = "Arial"
						)
			
			
			if( any( names( args ) == "font-size" ) ){
				if( regexpr("^[0-9\\.]+px" , args [["font-size"]] ) < 1 )
					stop("font-size must be expressed in px." )
				template[["font-size"]] = args[["font-size"]]
			}
			
			if( any( names( args ) == "font-weight" ) ){
				match.arg( args [["font-weight"]], choices = c("normal", "bold", "bolder", "lighter" , as.character( seq(100, 900, by=100 ) ) ), several.ok = F )
				template[["font-weight"]] = args[["font-weight"]]
			}
			
			if( any( names( args ) == "font-style" ) ){
				match.arg( args [["font-style"]], choices = c("normal", "italic", "oblique" ), several.ok = F )
				template[["font-style"]] = args[["font-style"]]
			}
			
			if( any( names( args ) == "color" ) ){
				if( !is.color( args [["color"]] ) )
					stop("color must be a valid color." )
				template[["color"]] = args[["color"]]
			}
			if( any( names( args ) == "font-family" ) ){
				template[["font-family"]] = args[["font-family"]]
			}
			
			.Object@properties = unlist(template)
			.Object
		})


setMethod("as.character", "textProperties", function(x) {
			paste( "", names( x@properties ), ":", x@properties, ";", sep = "" , collapse = "" )
		}
) 

setMethod("show", "textProperties",
	function(object){
		cat("text properties{\n")
		cat( gsub("px", "", paste( indent(1), names( object@properties ), ":", object@properties, ";", sep = "" , collapse = "\n" ) ) )
		cat("\n}\n")
})

textProperties = function( color = "black", font.size = 10
		, font.weight = "normal", font.style = "normal"
		, font.family = "Arial" ){
	
	if( is.numeric( font.size ) ) {
		if( as.integer( font.size ) < 0 || !is.finite( as.integer( font.size ) ) ) stop("invalid font.size : ", font.size)
		font.size = paste( as.integer( font.size ), "px", sep = "" )
	} 
	
	new ("textProperties"
			, "font-size" = font.size, "font-weight" = font.weight
			, "font-style" = font.style, "font-family" = font.family 
			, "color" = color )
}
