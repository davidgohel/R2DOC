# tools functions 
# 
# Author: David GOHEL <david.gohel@lysis-consultants.fr>
# Date: 31 mars 2013
# Version: 0.1
###############################################################################
.onLoad= function(libname, pkgname){
	if( Sys.info()[["sysname"]] == "Darwin" )
		Sys.setenv(NOAWT=1)
	.jpackage( pkgname, lib.loc = libname )
	.jv = .jcall("java/lang/System","S","getProperty","java.version")
	
	if( !is.element( substring( .jv, 1, 4), c( "1.6.", "1.7." ) ) )
		stop("R2DOC does not support java version ", .jv, ". Expected version is 1.6 or 1.7")
	
	invisible()
}

get.default.formats = function(){


	header.cellProperties = cellProperties( border.width = 1, padding = 3 )
	header.textProperties = textProperties( font.size = 10, font.weight = "bold" )
	
	data.cellProperties = cellProperties( border.width = 1, padding = 2 )
	data.textProperties = textProperties( font.size = 10 )
	
	leftPar = parProperties( text.align = "left")
	rightPar = parProperties( text.align = "right")
	centerPar = parProperties( text.align = "center")
	
	my.formats = tableProperties( 
			groupedheader.cell = header.cellProperties
			, groupedheader.par = centerPar
			, groupedheader.text = header.textProperties
			, header.cell = header.cellProperties
			, header.par = centerPar
			, header.text = header.textProperties
			, data.cell = data.cellProperties
			, data.text = data.textProperties
			, double.par = rightPar
			, integer.par = rightPar
			, character.par = leftPar
			, percent.par = rightPar
			, date.par = centerPar 
			, datetime.par = centerPar 
	)
	

	my.formats
}


get.light.formats = function(){
	
	header.cellProperties = cellProperties( border.bottom.width = 1, border.top.width = 0, border.right.width = 0, border.left.width = 0, padding= 3 )
	header.textProperties = textProperties( font.size = 10, font.weight = "bold" )
	
	data.cellProperties = cellProperties(border.bottom.width = 1, border.top.width = 0, border.right.width = 0, border.left.width = 0, border.style="dotted", padding = 2 )
	data.textProperties = textProperties( font.size = 10 )
	
	leftPar = parProperties( text.align = "left")
	rightPar = parProperties( text.align = "right")
	centerPar = parProperties( text.align = "center")
	
	my.formats = tableProperties( 
			groupedheader.cell = header.cellProperties
			, groupedheader.par = centerPar
			, groupedheader.text = header.textProperties
			, header.cell = header.cellProperties
			, header.par = centerPar
			, header.text = header.textProperties
			, data.cell = data.cellProperties
			, data.text = data.textProperties
			, double.par = rightPar
			, integer.par = rightPar
			, character.par = leftPar
			, percent.par = rightPar
			, date.par = centerPar 
			, datetime.par = centerPar 
	)
	
	
	my.formats
}


