\name{textProperties}
\alias{textProperties}
\title{
create a \code{textProperties} object.
}
\description{
Create a \code{\linkS4class{textProperties}} object without using \code{new("textProperties", ...)}.
}
\usage{textProperties(color = "black", font.size = 10
		, font.weight = "normal", font.style = "normal"
		, font.family = "Arial" ) 
}

\arguments{
  \item{color}{font color}
  \item{font.size}{font size in px unit.}
  \item{font.weight}{font weight. Expected value is "normal" or "bold".}
  \item{font.style}{font style. Expected value is "normal" or "italic".}
  \item{font.family}{font family name. Values are names of available fonts.}
}

\value{
an \linkS4class{textProperties} object
}

\seealso{
\code{\link{tableProperties}}, 
\code{\link{cellProperties}}, 
\code{\link{parProperties}}, 
}
\examples{
textProperties(color = "#F45A8A", font.size = 12
		, font.weight = "bold", font.family = "Courier New" )
}
\keyword{utilities}
