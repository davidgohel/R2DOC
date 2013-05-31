\name{addTable}
\alias{addTable}

\title{
add table into documents
}

\description{
Add plots into document objects (from R2DOCX or R2WDOC packages).
}

\usage{
addTable( x, data, formats
, header.labels, grouped.cols=list()
, span.first.columns = 0
, col.types
, col.colors, col.fontcolors )
}

\arguments{
  \item{x}{a document object from class \code{Docx} or \code{Wdoc}.}
  \item{data}{\code{data.frame} to add}
  \item{formats}{a \code{\linkS4class{tableProperties} object}, specifies styles to use to format the table.}
  \item{header.labels}{a named list whose elements define labels to display in table headers instead of colnames.}
  \item{grouped.cols}{a named list whose elements define which columns are to be grouped in an upper header row (grouped header).}
  \item{span.first.columns}{Specify the number of columns where row merging is to be done.}
  \item{col.types}{Defines the formatting style of columns}
  \item{col.colors}{Defines the background color of cells}
  \item{col.fontcolors}{Defines the font color of cells}


}
\details{
\emph{Elements of table model}
\preformatted{
-------------------------------------------
  GROUPED HEADER 1  |   GROUPED HEADER 1  |
-------------------------------------------
HEADER 1 | HEADER 2 | HEADER 3 | HEADER 4 |
-------------------------------------------
data[1,1]| data[1,2]| data[1,3]| data[1,2]|
data[2,1]| data[2,2]| data[2,3]| data[2,2]|
      ...|       ...|       ...|       ...|
data[n,1]| data[n,2]| data[n,3]| data[n,2]|
-------------------------------------------
}
\itemize{
\item \code{grouped headers}{ : An optional header row that allows to gather headers under a label.}
\item \code{headers}{ : header row where column names labels are printed.}
\item \code{data}{ : data of the table. Used formatting properties depends on the type of the data.}
}

\emph{Formatting properties of table model}


The formatting properties of the table can be customized with the \code{formats}
	argument (an object from class \code{\link{tableProperties}}). A \code{tableProperties} 
	object enable customization of texts, paragraphs, cells of headers and content 
	cells, number formatting.


\emph{Specifying columns types of data}

Argument \code{col.types} specifies data columns types which will be used to format data (integer, percent, character, etc.).

\emph{Specifying labels to display}

Argument \code{header.labels} contains labels to display in the headers row.

Argument \code{grouped.cols} specifies labels and grouping of the grouped headers row. If missing, no grouped header row will be printed.

\emph{Merging content cells vertically}

Argument \code{span.first.columns} specifies if row merging should 
		be done on data values.

\emph{Coloring cells or texts}

Arguments \code{col.colors} and \code{col.fontcolors} specify cell font-colors and background-colors to apply to some columns of data.


}

\value{
\code{doc} object with added table.
}


\author{
David Gohel
}

\seealso{
\code{\link{addParagraph}},
\code{\link{addPlot}}
}


\keyword{utilities}
\keyword{methods}
