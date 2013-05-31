\name{tableProperties-class}
\Rdversion{1.1}
\docType{class}
\alias{tableProperties-class}

\title{Class tableProperties}
\description{
A tableProperties object is a representation of formatting properties of a R2DOC table.
}
\section{Objects from the Class}{
Objects can be created by calls of the form \code{\link{tableProperties}(...)}.
}
\section{Slots}{
  \describe{

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

  }
  slots can be accessed directly but usage of \code{tableProperties} is strongly recommended as validation code has not been implemented yet.
}

\details{
\preformatted{
    -------------------------------------------
      GROUPED HEADER 1  |   GROUPED HEADER 1  |
    -------------------------------------------
    HEADER 1 | HEADER 2 | HEADER 3 | HEADER 4 |
    -------------------------------------------
    data[1,1]| data[1,2]| data[1,3]| data[1,2]|
    data[2,1]| data[2,2]| data[2,3]| data[2,2]|
          ...|       ...|       ...|       ...|
    -------------------------------------------
}


	\itemize{
	\item \code{grouped headers}:{big column labels}
	}
}

\seealso{
\code{\link{parProperties}}, 
\code{\linkS4class{parProperties}}
\code{\link{textProperties}}, 
\code{\linkS4class{textProperties}}
\code{\link{cellProperties}}, 
\code{\linkS4class{cellProperties}}
}
\examples{
tableProperties(header.text = textProperties(font.weight="bold"), header.par = parProperties( text.align = "center" ))
}
\keyword{classes}
