\name{addPlot}
\alias{addPlot}

\title{
add plots into documents
}

\description{
Add plots into document objects (from R2DOCX or R2WDOC packages).
}

\usage{
addPlot(doc, fun, legend
		, width = 7, height = 6
		, pointsize = 12
		)
}

\arguments{
  \item{doc}{a document object from class \code{Docx} or \code{Wdoc}.}
  \item{fun}{plot function.}
  \item{legend}{character string, legend to add below graphics.}
  \item{width}{plot width in inches.}
  \item{height}{plot height in inches.}

}
\details{
This function work with base R graphics. Plot parameters are specified with 
the \code{...} argument. However, the most convenient usage is to wrap 
the plot code into a function whose parameters will be specified as '...'.

If you want to add ggplot2 or lattice plot, use 
\code{print} function.
}

\value{
\code{doc} object with added plots.
}


\author{
David Gohel
}
\note{
Used device is \link{png}.
}
\seealso{
\code{\link{addParagraph}},
\code{\link{addTable}}
}


\keyword{utilities}
\keyword{methods}
