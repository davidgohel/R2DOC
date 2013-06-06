\name{tableProperties}
\alias{tableProperties}
\title{
create a \code{tableProperties} object.
}
\description{
Create a \code{\linkS4class{tableProperties}} object without using \code{new("tableProperties", ...)}.
}
\usage{
tableProperties( header.text = textProperties(font.weight="bold"), header.par = parProperties( text.align = "center" ), header.cell = cellProperties()
, groupedheader.text = textProperties(font.weight="bold"), groupedheader.par = parProperties( text.align = "center" ), groupedheader.cell = cellProperties()
, double.text = textProperties(), double.par = parProperties( text.align = "right" ), double.cell = cellProperties()
, integer.text = textProperties(), integer.par = parProperties( text.align = "right" ), integer.cell = cellProperties()
, percent.text = textProperties(), percent.par = parProperties( text.align = "right" ), percent.cell = cellProperties()
, character.text = textProperties(), character.par = parProperties( text.align = "left" ), character.cell = cellProperties()
, date.text = textProperties(font.style="italic"), date.par = parProperties( text.align = "center" ), date.cell = cellProperties()
, datetime.text = textProperties(font.style="italic"), datetime.par = parProperties( text.align = "center" ), datetime.cell = cellProperties()
, percent.addsymbol = "\%", integer.digit = 2L, fraction.double.digit = 2L, fraction.percent.digit = 2L, data.cell, data.par, data.text
)}

\arguments{
		\item{header.text}{Object from the class \code{textProperties} that represents text formatting properties for column headers}
		\item{header.par}{Object from the class \code{parProperties} that represents paragraph formatting properties for column headers}
		\item{header.cell}{Object from the class \code{cellProperties} that represents cell formatting properties for column headers}
		\item{groupedheader.text}{Object from the class \code{textProperties} that represents text formatting properties for column groupedheaders}
		\item{groupedheader.par}{Object from the class \code{parProperties} that represents paragraph formatting properties for column groupedheaders}
		\item{groupedheader.cell}{Object from the class \code{cellProperties} that represents cell formatting properties for column groupedheaders}
		\item{double.text}{Object from the class \code{textProperties} that represents text formatting properties for columns of type 'double'}
		\item{double.par}{Object from the class \code{parProperties} that represents paragraph formatting properties for columns of type 'double'}
		\item{double.cell}{Object from the class \code{cellProperties} that represents cell formatting properties for columns of type 'double'}
		\item{integer.text}{Object from the class \code{textProperties} that represents text formatting properties for columns of type 'integer'}
		\item{integer.par}{Object from the class \code{parProperties} that represents paragraph formatting properties for columns of type 'integer'}
		\item{integer.cell}{Object from the class \code{cellProperties} that represents cell formatting properties for columns of type 'integer'}
		\item{percent.text}{Object from the class \code{textProperties} that represents text formatting properties for columns of type 'percent'}
		\item{percent.par}{Object from the class \code{parProperties} that represents paragraph formatting properties for columns of type 'percent'}
		\item{percent.cell}{Object from the class \code{cellProperties} that represents cell formatting properties for columns of type 'percent'}
		\item{character.text}{Object from the class \code{textProperties} that represents text formatting properties for columns of type 'character'}
		\item{character.par}{Object from the class \code{parProperties} that represents paragraph formatting properties for columns of type 'character'}
		\item{character.cell}{Object from the class \code{cellProperties} that represents cell formatting properties for columns of type 'character'}
		\item{date.text}{Object from the class \code{textProperties} that represents text formatting properties for columns of type 'date'}
		\item{date.par}{Object from the class \code{parProperties} that represents paragraph formatting properties for columns of type 'date'}
		\item{date.cell}{Object from the class \code{cellProperties} that represents cell formatting properties for columns of type 'date'}
		\item{datetime.text}{Object from the class \code{textProperties} that represents text formatting properties for columns of type 'datetime'}
		\item{datetime.par}{Object from the class \code{parProperties} that represents paragraph formatting properties for columns of type 'datetime'}
		\item{datetime.cell}{Object from the class \code{cellProperties} that represents cell formatting properties for columns of type 'datetime'}
		\item{percent.addsymbol}{Object from the class \code{character} that represents the symbol to add after percent data as been formated (character, default to '')}
		\item{integer.digit}{the minimum number of digits (to the left of the decimal point for data 'percent' and 'double') in formatting numerical data. Allowed values are integer.digit >=0.}
		\item{fraction.double.digit}{the minimum number of digits to the right of the decimal point in formatting 'double' data. Allowed values are fraction.double.digit >=0.}
		\item{fraction.percent.digit}{the minimum number of digits to the right of the decimal point in formatting 'percent' data. Allowed values are fraction.percent.digit >=0.}

		\item{data.cell}{Object from the class \code{cellProperties} that represents cell formatting properties for columns of any type.}
		\item{data.par}{Object from the class \code{parProperties} that represents paragraph formatting properties for columns of any type.}
		\item{data.text}{Object from the class \code{textProperties} that represents text formatting properties for columns of any type.}

}

\seealso{
\code{\link{parProperties}}\cr
\code{\link{textProperties}}\cr
\code{\link{cellProperties}}\cr
\code{\linkS4class{tableProperties} object}
}
\examples{
tableProperties(header.text = textProperties(font.weight="bold")
	, header.par = parProperties( text.align = "center" ))
	
	
# creation of another tableProperties
header.cellProperties = cellProperties( border.left.width = 0, border.right.width = 0
		, border.bottom.width = 1, border.top.width = 0
		, padding = 3 )
data.cellProperties = cellProperties( border.left.width = 0, border.right.width = 0
		, border.bottom.width = 1, border.top.width = 0
		, padding = 2 )
		
header.textProperties = textProperties( font.size = 10, font.weight = "bold" )
data.textProperties = textProperties( font.size = 10 )

leftPar = parProperties( text.align = "left", padding.left = 4, padding.right = 4)
rightPar = parProperties( text.align = "right", padding.left = 4, padding.right = 4)
centerPar = parProperties( text.align = "center", padding.left = 4, padding.right = 4)

my.formats = tableProperties( 
			  character.par = leftPar
			, percent.par = rightPar
			, double.par = rightPar
			, integer.par = rightPar
			, groupedheader.par = centerPar
			, groupedheader.text = header.textProperties
			, groupedheader.cell = header.cellProperties
			, header.cell = header.cellProperties
			, header.par = centerPar
			, header.text = header.textProperties
			, data.cell = data.cellProperties
			, data.text = data.textProperties
)


}
\keyword{utilities}
