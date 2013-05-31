\name{parProperties-class}
\Rdversion{1.1}
\docType{class}
\alias{parProperties-class}

\title{Class parProperties}
\description{
A parProperties object is a representation of formating properties of a paragraph.
}
\section{Objects from the Class}{
Objects can be created by calls of the form \code{\link{parProperties}(...)}.
}

\note{
The following properties are implemented\cr
\enumerate{
	\item{text-align}
	\item{padding-bottom}
	\item{padding-top}
	\item{padding-right}
	\item{padding-left}
}

}

\seealso{
\code{\link{cellProperties}}, 
\code{\linkS4class{cellProperties}}
\code{\link{textProperties}}, 
\code{\linkS4class{textProperties}}
}
\examples{
parProperties(text.align = "center")
}
\keyword{classes}
