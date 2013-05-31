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

	header.cellProperties = cellProperties(padding = 3, border.width = 2)
	default.headerTextProperties = new ("textProperties", "font-size" = "10px", "font-weight" = "bold" )
	
	default.cellProperties = cellProperties(padding = 2, border.width = 1)
	default.textProperties = new ("textProperties", "font-size" = "10px" )
	
	leftPar = new ("parProperties", "text-align" = "left", "padding-left" = "4px", "padding-right" = "4px")
	rightPar = new ("parProperties", "text-align" = "right", "padding-left" = "4px", "padding-right" = "4px")
	centerPar = new ("parProperties", "text-align" = "center", "padding-left" = "4px", "padding-right" = "4px")
	
	table.formats = tableProperties(character.par = leftPar
			, percent.par = rightPar
			, double.par = rightPar
			, integer.par = rightPar
			, groupedheader.par = centerPar
			, groupedheader.text = default.headerTextProperties
			, groupedheader.cell = header.cellProperties
			, header.cell = header.cellProperties
			, header.par = centerPar
			, header.text = default.headerTextProperties
			, double.cell = default.cellProperties
			, integer.cell = default.cellProperties
			, percent.cell = default.cellProperties
			, character.cell = default.cellProperties
			, character.text = default.textProperties
			, double.text = default.textProperties
			, percent.text = default.textProperties
			, integer.text = default.textProperties
		)


	table.formats
}


get.light.formats = function(){
	
	header.cellProperties = new ("cellProperties"
			, "border-left-width" = "0px", "border-right-width" = "0px"
			, "border-bottom-width"="2px", "border-top-width" = "0px"
			, "padding-bottom" = "2px", "padding-top" = "2px", "padding-left" = "2px", "padding-right" = "2px" )
	default.headerTextProperties = new ("textProperties", "font-size" = "10px", "font-weight" = "bold" )
	
	default.cellProperties = new ("cellProperties"
			, "border-left-width" = "0px", "border-right-width" = "0px"
			, "border-bottom-width"="1px", "border-top-width" = "0px"
			, "padding-bottom" = "1px", "padding-top" = "1px", "padding-left" = "1px", "padding-right" = "1px" )
	default.textProperties = new ("textProperties", "font-size" = "10px" )
	
	leftPar = new ("parProperties", "text-align" = "left", "padding-left" = "4px", "padding-right" = "4px")
	rightPar = new ("parProperties", "text-align" = "right", "padding-left" = "4px", "padding-right" = "4px")
	centerPar = new ("parProperties", "text-align" = "center", "padding-left" = "4px", "padding-right" = "4px")
	
	table.formats = new ("tableProperties"
			, character.par = leftPar
			, percent.par = rightPar
			, double.par = rightPar
			, integer.par = rightPar
			, groupedheader.par = centerPar
			, groupedheader.text = default.headerTextProperties
			, groupedheader.cell = header.cellProperties
			, header.cell = header.cellProperties
			, header.par = centerPar
			, header.text = default.headerTextProperties
	)
	table.formats@double.cell = default.cellProperties
	table.formats@integer.cell = default.cellProperties
	table.formats@percent.cell = default.cellProperties
	table.formats@character.cell = default.cellProperties
	table.formats@character.text = default.textProperties
	table.formats@double.text = default.textProperties
	table.formats@percent.text = default.textProperties
	table.formats@integer.text = default.textProperties
	table.formats
}

