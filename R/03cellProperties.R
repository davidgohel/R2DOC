# TODO: Documentation de cell.properties.R
# 
# Author: David GOHEL <david.gohel@lysis-consultants.fr>
# Date: 6 mai 2013
# Version: 0.1
###############################################################################
setClass("cellProperties"
		, representation(properties = "character")
)

setMethod("initialize", "cellProperties", function(.Object, ... ) {
	border.styles = c( "none", "hidden", "dotted", "dashed", "solid", "double", "groove", "ridge", "inset", "outset" )
	vertical.align = c( "top", "middle", "bottom" )
	args = list(...)
	
	template = c( "border-bottom-color" = "black"
			, "border-bottom-style" = "solid"
			, "border-bottom-width" = "1px" 
			, "border-left-color" = "black"
			, "border-left-style" = "solid"
			, "border-left-width" = "1px" 
			, "border-top-color" = "black"
			, "border-top-style" = "solid"
			, "border-top-width" = "1px" 
			, "border-right-color" = "black"
			, "border-right-style" = "solid"
			, "border-right-width" = "1px"
			, "vertical-align" = "middle"
			, "padding-bottom" = "1px"
			, "padding-top" = "1px"
			, "padding-left" = "1px"
			, "padding-right" = "1px"
			, "background-color" = "white"
	)
	
	# styles checking
	styles.regmatches = regexpr( "border\\-(bottom|top|left|right)\\-style", names( args ) )
	if( any( styles.regmatches ) ){
		sapply( args [styles.regmatches>0], match.arg, choices = border.styles, several.ok = F )
	}
	template[ names( args )[styles.regmatches>0] ] = args [styles.regmatches>0]
	
	# width checking
	widths.regmatches = regexpr( "border\\-(bottom|top|left|right)\\-width", names( args ) )
	if( any( widths.regmatches ) ){
		xx = sapply( args [widths.regmatches>0], function( x ) { regexpr("^[0-9\\.]+px" , x )> 0 } )
		if( !all( xx ) ) stop("Border widths must be expressed in px." )
	}
	template[ names( args )[widths.regmatches>0] ] = args [widths.regmatches>0]
	
	# color checking
	colors.regmatches = regexpr( "border\\-(bottom|top|left|right)\\-color", names( args ) )
	if( any( colors.regmatches ) ){
		xx = sapply( args [colors.regmatches>0], is.color )
		if( !all( xx ) ) stop("Border colors must be valid colors." )
	}
	template[ names( args )[colors.regmatches>0] ] = args [colors.regmatches>0]

	# background-color checking
	if( is.element("background-color", names(args) ) ){
		if( !is.color( args [["background-color"]] ) )
			stop("background-color must be a valid color." )
		template[["background-color"]] = args [["background-color"]]
	}

	if( any( names( args ) == "vertical-align" ) ){
		match.arg( args [["vertical-align"]], choices = vertical.align, several.ok = F )
	}
	template[["vertical-align"]] = args[["vertical-align"]]
	
	
	# padding checking
	padding.regmatches = regexpr( "padding\\-(bottom|top|left|right)", names( args ) )
	if( any( padding.regmatches ) ){
		xx = sapply( args [padding.regmatches>0], function( x ) { regexpr("^[0-9\\.]+px" , x )> 0 } )
		if( !all( xx ) ) stop("padding must be expressed in px." )
	}
	template[ names( args )[padding.regmatches>0] ] = args [padding.regmatches>0]
	
	
	.Object@properties = unlist(template)
	.Object
})


setMethod("as.character", "cellProperties", function(x) {
	paste( "", names( x@properties ), ":", x@properties, ";", sep = "" , collapse = "" )
	}
) 


setMethod("show", "cellProperties",
		function(object){
			cat("cell properties{\n")
			# cache misere. TODO: modify type storage
			cat( gsub("px", "", paste( indent(1), names( object@properties ), ":", object@properties, ";", sep = "" , collapse = "\n" ) ) )
			cat("\n}\n")
		})

cellProperties = function( border.bottom.color = "black"
		, border.bottom.style = "solid", border.bottom.width = 1, border.left.color = "black"
		, border.left.style = "solid", border.left.width = 1, border.top.color = "black"
		, border.top.style = "solid", border.top.width = 1, border.right.color = "black"
		, border.right.style = "solid", border.right.width = 1, vertical.align = "middle"
		, padding.bottom = 2, padding.top = 2, padding.left = 3, padding.right = 3
		, background.color = "#FFFFFF"
		, padding, border.width, border.style, border.color
		){
	
	if( !missing( border.width ) ){
		if( is.numeric( border.width ) ) {
			if( as.integer( border.width ) < 0 || !is.finite( as.integer( border.width ) ) ) stop("invalid border.width : ", border.width )
			border.bottom.width = border.top.width = border.right.width = border.left.width = as.integer( border.width )
		} else {
			stop("border.width must be a integer value >= 0")
		}
	}	
	
	if( !missing( border.style ) ){
		if( is.character( border.style ) ) {
			border.bottom.style = border.top.style = border.right.style = border.left.style = border.style
		} else {
			stop("border.style must be a character value.")
		}
	}

	if( !missing( border.color ) ){
		if( is.character( border.color ) ) {
			border.bottom.color = border.top.color = border.right.color = border.left.color = border.color
		} else {
			stop("border.color must be a character value.")
		}
	}
	
	
	if( !missing( padding ) ){
		if( is.numeric( padding ) ) {
			if( as.integer( padding ) < 0 || !is.finite( as.integer( padding ) ) ) stop("invalid padding : ", padding )
			padding.bottom = padding.top = padding.right = padding.left = as.integer( padding )
		} else {
			stop("padding must be a integer value ( >=0 ).")
		}
	}
	if( !is.color( background.color ) )
		stop("background.color must be a valid color." )

	
	
	if( is.numeric( border.bottom.width ) ) {
		if( as.integer( border.bottom.width ) < 0 || !is.finite( as.integer( border.bottom.width ) ) ) stop("invalid border.bottom.width : ", border.bottom.width )
		border.bottom.width = paste( as.integer( border.bottom.width ), "px", sep = "" )
	} 
	
	if( is.numeric( border.top.width ) ) {
		if( as.integer( border.top.width ) < 0 || !is.finite( as.integer( border.top.width ) ) ) stop("invalid border.top.width : ", border.top.width )
		border.top.width = paste( as.integer( border.top.width ), "px", sep = "" )
	} 
	
	if( is.numeric( border.right.width ) ) {
		if( as.integer( border.right.width ) < 0 || !is.finite( as.integer( border.right.width ) ) ) stop("invalid border.right.width : ", border.right.width )
		border.right.width = paste( as.integer( border.right.width ), "px", sep = "" )
	} 
	
	if( is.numeric( border.left.width ) ) {
		if( as.integer( border.left.width ) < 0 || !is.finite( as.integer( border.left.width ) ) ) stop("invalid border.left.width : ", border.left.width )
		border.left.width = paste( as.integer( border.left.width ), "px", sep = "" )
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
	
	new ("cellProperties"
			, "border-bottom-color" = border.bottom.color
			, "border-bottom-style" = border.bottom.style
			, "border-bottom-width" = border.bottom.width
			, "border-left-color" = border.left.color
			, "border-left-style" = border.left.style
			, "border-left-width" = border.left.width
			, "border-top-color" = border.top.color
			, "border-top-style" = border.top.style
			, "border-top-width" = border.top.width 
			, "border-right-color" = border.right.color
			, "border-right-style" = border.right.style
			, "border-right-width" = border.right.width
			, "vertical-align" = vertical.align
			, "padding-bottom" = padding.bottom
			, "padding-top" = padding.top
			, "padding-left" = padding.left
			, "padding-right" = padding.right
			, "background-color" = background.color
		)
}



