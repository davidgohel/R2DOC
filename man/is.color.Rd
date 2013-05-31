\name{is.color}
\alias{is.color}
\title{
is.color
}
\description{
Check validity of a color 
}
\usage{
is.color( x ) 
}

\arguments{
  \item{x}{a \code{character} vector representing a color (eg "#00FFFF" or "red").}
}

\value{
return \code{TRUE} if x is a valid color.
}

\seealso{
\code{\link{tableProperties}}, 
\code{\link{cellProperties}}, 
\code{\link{parProperties}}, 
\code{\link{textProperties}}, 
}
\examples{
is.color( x = "#F45A8A" )
}
\keyword{utilities}
