\name{parProperties}
\alias{parProperties}
\title{
create a \code{parProperties} object.
}
\description{
Create a \code{\linkS4class{parProperties}} object without using \code{new("parProperties", ...)}.
}
\usage{parProperties(text.align = "left", padding.bottom = 1
		, padding.top = 1, padding.left = 1
		, padding.right = 1, padding) }

\arguments{
  \item{text.align}{text alignment. Expected value is "left" or "right" or "center" or "justify".}
  \item{padding.bottom}{space after paragraph in px unit. Expected value must be >=0}
  \item{padding.top}{space before paragraph in px unit. Expected value must be >=0}
  \item{padding.left}{space on the left of paragraph in px unit. Expected value must be >=0}
  \item{padding.right}{space on the right of paragraph in px unit. Expected value must be >=0}
  \item{padding}{space around paragraph in px unit. Expected value must be >=0. It sets all paddings to the same value.}
}

\details{
padding is a shortcut that provide its value to the 4 padding.* parameters.
}
\value{
an \linkS4class{parProperties} object
}


\seealso{
\code{\link{tableProperties}}, 
\code{\link{cellProperties}}, 
\code{\link{textProperties}}, 
}
\examples{
parProperties(text.align = "center", padding = 3 )
}
\keyword{utilities}
