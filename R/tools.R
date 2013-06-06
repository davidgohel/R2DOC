# tools functions 
# 
# Author: David GOHEL <david.gohel@lysis-consultants.fr>
# Date: 31 mars 2013
# Version: 0.1
###############################################################################
.onLoad= function(libname, pkgname){
	
	.jpackage( pkgname, lib.loc = libname )
	invisible()
}

get.default.formats = function(){

#	header.cellProperties = cellProperties(padding = 3, border.width = 2)
#	default.headerTextProperties = new ("textProperties", "font-size" = "10px", "font-weight" = "bold" )
#	
#	default.cellProperties = cellProperties(padding = 2, border.width = 1)
#	default.textProperties = new ("textProperties", "font-size" = "10px" )
#	
#	leftPar = new ("parProperties", "text-align" = "left", "padding-left" = "4px", "padding-right" = "4px")
#	rightPar = new ("parProperties", "text-align" = "right", "padding-left" = "4px", "padding-right" = "4px")
#	centerPar = new ("parProperties", "text-align" = "center", "padding-left" = "4px", "padding-right" = "4px")
#	
#	table.formats = tableProperties(character.par = leftPar
#			, percent.par = rightPar
#			, double.par = rightPar
#			, integer.par = rightPar
#			, groupedheader.par = centerPar
#			, groupedheader.text = default.headerTextProperties
#			, groupedheader.cell = header.cellProperties
#			, header.cell = header.cellProperties
#			, header.par = centerPar
#			, header.text = default.headerTextProperties
#			, double.cell = default.cellProperties
#			, integer.cell = default.cellProperties
#			, percent.cell = default.cellProperties
#			, character.cell = default.cellProperties
#			, character.text = default.textProperties
#			, double.text = default.textProperties
#			, percent.text = default.textProperties
#			, integer.text = default.textProperties
#		)
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
			, double.cell = data.cellProperties
			, double.par = rightPar
			, double.text = data.textProperties
			, integer.cell = data.cellProperties
			, integer.par = rightPar
			, integer.text = data.textProperties
			, character.cell = data.cellProperties
			, character.par = leftPar
			, character.text = data.textProperties
			, percent.cell = data.cellProperties
			, percent.par = rightPar
			, percent.text = data.textProperties
			, date.cell = data.cellProperties
			, date.par = centerPar 
			, date.text = data.textProperties
			, datetime.cell = data.cellProperties
			, datetime.par = centerPar 
			, datetime.text = data.textProperties
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
			, double.cell = data.cellProperties
			, double.par = rightPar
			, double.text = data.textProperties
			, integer.cell = data.cellProperties
			, integer.par = rightPar
			, integer.text = data.textProperties
			, character.cell = data.cellProperties
			, character.par = leftPar
			, character.text = data.textProperties
			, percent.cell = data.cellProperties
			, percent.par = rightPar
			, percent.text = data.textProperties
			, date.cell = data.cellProperties
			, date.par = centerPar 
			, date.text = data.textProperties
			, datetime.cell = data.cellProperties
			, datetime.par = centerPar 
			, datetime.text = data.textProperties
	)
	
	
	my.formats
}


