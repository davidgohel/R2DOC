setClass("tableProperties"
		, representation(
			  header.text = "textProperties"
			, header.par = "parProperties"
			, header.cell = "cellProperties"

			, groupedheader.text = "textProperties"
			, groupedheader.par = "parProperties"
			, groupedheader.cell = "cellProperties"

			, double.text = "textProperties"
			, double.par = "parProperties"
			, double.cell = "cellProperties"

			, integer.text = "textProperties"
			, integer.par = "parProperties"
			, integer.cell = "cellProperties"

			, percent.text = "textProperties"
			, percent.par = "parProperties"
			, percent.cell = "cellProperties"

			, character.text = "textProperties"
			, character.par = "parProperties"
			, character.cell = "cellProperties"

			, date.text = "textProperties"
			, date.par = "parProperties"
			, date.cell = "cellProperties"

			, datetime.text = "textProperties"
			, datetime.par = "parProperties"
			, datetime.cell = "cellProperties"

			, percent.addsymbol = "character"

			, integer.digit = "integer"
			, fraction.double.digit = "integer"
			, fraction.percent.digit = "integer"
	) 
)

setMethod("initialize", "tableProperties", function(.Object, ... ) {
#	args = list(...)
	
	default.cellProperties = new ("cellProperties")
	default.parProperties = new ("parProperties")
	default.textProperties = new ("textProperties")

	
	.Object@header.text = default.textProperties
	.Object@header.par = default.parProperties
	.Object@header.cell = default.cellProperties
			
	.Object@groupedheader.text = default.textProperties
	.Object@groupedheader.par = default.parProperties
	.Object@groupedheader.cell = default.cellProperties
			
	.Object@double.text = default.textProperties
	.Object@double.par = default.parProperties
	.Object@double.cell = default.cellProperties
			
	.Object@integer.text = default.textProperties
	.Object@integer.par = default.parProperties
	.Object@integer.cell = default.cellProperties
			
	.Object@percent.text = default.textProperties
	.Object@percent.par = default.parProperties
	.Object@percent.cell = default.cellProperties
			
	.Object@character.text = default.textProperties
	.Object@character.par = default.parProperties
	.Object@character.cell = default.cellProperties
			
	.Object@date.text = default.textProperties
	.Object@date.par = default.parProperties
	.Object@date.cell = default.cellProperties
			
	.Object@datetime.text = default.textProperties
	.Object@datetime.par = default.parProperties
	.Object@datetime.cell = default.cellProperties
			
	.Object@percent.addsymbol = "%"
			
	.Object@integer.digit = 2L
	.Object@fraction.double.digit = 2L
	.Object@fraction.percent.digit = 2L

#			styles.regmatches = regexpr( "(header|groupedheader|double|integer|percent|character|date|time|datetime)\\.(text|par|cell)", names( args ) ) > 0
#			if( any( styles.regmatches ) ){
#				for( i in names(args) ){
#					str = paste( ".Object@", i, "=args[[i]]", sep = "" )
#					eval( parse ( text = str ) )
#				}
#			}
#			
#			styles.regmatches = regexpr( "(date|time|datetime)\\.pattern", names( args ) ) > 0
#			if( any( styles.regmatches ) ){
#				for( i in names(args) ){
#					str = paste( ".Object@", i, "=args[[i]]", sep = "" )
#					eval( parse ( text = str ) )
#				}
#			}
#			
#			styles.regmatches = regexpr( "\\.digit$", names( args ) ) > 0
#			if( any( styles.regmatches ) ){
#				for( i in names(args) ){
#					str = paste( ".Object@", i, "=args[[i]]", sep = "" )
#					eval( parse ( text = str ) )
#				}
#			}
			
	.Object
})

setMethod("[[", "tableProperties", function (x, i, j, ...){
			str = paste( "x@", i , sep = "" )
			eval( parse ( text = str ) )
		}
)

setMethod("show", "tableProperties",
		function(object){
			cat("tableProperties properties{\n")


			cat("\theader\n")
			print( object@header.text )
			print( object@header.par )
			print( object@header.cell )
			
			cat("\tgroupedheader\n")
			print( object@groupedheader.text )
			print( object@groupedheader.par )
			print( object@groupedheader.cell )
			
			cat("\tdouble\n")
			print( object@double.text )
			print( object@double.par )
			print( object@double.cell )
			
			cat("\tinteger.text\n")
			print( object@integer.text )
			print( object@integer.par )
			print( object@integer.cell )
			
			cat("\tpercent.text\n")
			print( object@percent.text )
			print( object@percent.par )
			print( object@percent.cell )
			
			cat("\tcharacter.text\n")
			print( object@character.text )
			print( object@character.par )
			print( object@character.cell )
			
			cat("\tdate.text\n")
			print( object@date.text )
			print( object@date.par )
			print( object@date.cell )
			
			cat("\tdatetime.text\n")
			print( object@datetime.text )
			print( object@datetime.par )
			print( object@datetime.cell )
			
			cat("\tpercent.addsymbol\n")
			print( object@percent.addsymbol )
			
			cat("\tinteger.digit\n")
			print( object@integer.digit )
			cat("\tfraction.double.digit\n")
			print( object@fraction.double.digit )
			cat("\tfraction.percent.digit\n")
			print( object@fraction.percent.digit )
			
			
			
			
			cat("\n}\n")
		})

tableProperties = function( 
		header.text = textProperties(font.weight="bold")
		, header.par = parProperties( text.align = "center" )
		, header.cell = cellProperties()
		
		, groupedheader.text = textProperties(font.weight="bold")
		, groupedheader.par = parProperties( text.align = "center" )
		, groupedheader.cell = cellProperties()
		
		, double.text = textProperties()
		, double.par = parProperties( text.align = "right" )
		, double.cell = cellProperties()
		
		, integer.text = textProperties()
		, integer.par = parProperties( text.align = "right" )
		, integer.cell = cellProperties()
		
		, percent.text = textProperties()
		, percent.par = parProperties( text.align = "right" )
		, percent.cell = cellProperties()
		
		, character.text = textProperties()
		, character.par = parProperties( text.align = "left" )
		, character.cell = cellProperties()
		
		, date.text = textProperties(font.style="italic")
		, date.par = parProperties( text.align = "center" )
		, date.cell = cellProperties()
		
		, datetime.text = textProperties(font.style="italic")
		, datetime.par = parProperties( text.align = "center" )
		, datetime.cell = cellProperties()
		
		, percent.addsymbol = "%"
		
		, integer.digit = 2L
		, fraction.double.digit = 2L
		, fraction.percent.digit = 2L
		){
	.Object = new("tableProperties")
	
	.Object@header.text = header.text
	.Object@header.par = header.par
	.Object@header.cell = header.cell
	
	.Object@groupedheader.text = groupedheader.text
	.Object@groupedheader.par = groupedheader.par
	.Object@groupedheader.cell = groupedheader.cell
	
	.Object@double.text = double.text
	.Object@double.par = double.par
	.Object@double.cell = double.cell
	
	.Object@integer.text = integer.text
	.Object@integer.par = integer.par
	.Object@integer.cell = integer.cell
	
	.Object@percent.text = percent.text
	.Object@percent.par = percent.par
	.Object@percent.cell = percent.cell
	
	.Object@character.text = character.text
	.Object@character.par = character.par
	.Object@character.cell = character.cell
	
	.Object@date.text = date.text
	.Object@date.par = date.par
	.Object@date.cell = date.cell
	
	.Object@datetime.text = datetime.text
	.Object@datetime.par = datetime.par
	.Object@datetime.cell = datetime.cell
	
	.Object@percent.addsymbol = percent.addsymbol
	
	.Object@integer.digit = as.integer( integer.digit )
	.Object@fraction.double.digit = as.integer( fraction.double.digit )
	.Object@fraction.percent.digit = as.integer( fraction.percent.digit )
	.Object
}

