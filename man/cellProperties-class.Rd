\name{cellProperties-class}
\Rdversion{1.1}
\docType{class}
\alias{cellProperties-class}

\title{Class cellProperties}
\description{
A cellProperties object is a representation of formating properties of a table cell.
}
\section{Objects from the Class}{
Objects can be created by calls of the form \code{\link{cellProperties}(...)}.
}
\section{Slots}{
  \describe{
  \item{\code{properties}}{named character vector.}
}
}
\note{
Available properties are :\cr
\enumerate{
  \item{\code{border.bottom.color}}{border bottom color.}
  \item{\code{border.bottom.style}}{border bottom style.}
  \item{\code{border.bottom.width}}{border bottom width.}
  
  \item{\code{border.top.color}}{border top color.}
  \item{\code{border.top.style}}{border top style.}
  \item{\code{border.top.width}}{border top width.}
  
  \item{\code{border.left.color}}{border left color.}
  \item{\code{border.left.style}}{border left style.}
  \item{\code{border.left.width}}{border left width.}
  
  \item{\code{border.right.color}}{border right color.}
  \item{\code{border.right.style}}{border right style.}
  \item{\code{border.right.width}}{border right width.}

  \item{\code{padding.bottom}}{cell bottom padding.}
  \item{\code{padding.top}}{cell top padding.}
  \item{\code{padding.left}}{cell left padding.}
  \item{\code{padding.right}}{cell right padding.}
}

}

\seealso{
\code{\link{cellProperties}}, 
\code{\linkS4class{parProperties}}
\code{\link{textProperties}}, 
\code{\linkS4class{textProperties}}
}
\examples{
cellProperties(padding = 2, border.width = 1)
}
\keyword{classes}
