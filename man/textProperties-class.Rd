\name{textProperties-class}
\Rdversion{1.1}
\docType{class}
\alias{textProperties-class}

\title{Class textProperties}
\description{
A textProperties object is a representation of formating properties of a text in a paragraph.
}
\section{Objects from the Class}{
Objects can be created by calls of the form \code{\link{textProperties}(...)}.
}

\note{
The following properties are implemented\cr
\enumerate{
	\item{color}
	\item{font-size}
	\item{font-weight}
	\item{font-style}
	\item{font-family}
}

}

\seealso{
\code{\link{cellProperties}}, 
\code{\linkS4class{cellProperties}}
\code{\link{parProperties}}, 
\code{\linkS4class{parProperties}}
}
\examples{
textProperties(color = "red")
}
\keyword{classes}
