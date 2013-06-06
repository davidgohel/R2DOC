\name{cellProperties}
\alias{cellProperties}
\title{
create a \code{cellProperties} object.
}

\description{
Create a \code{\linkS4class{cellProperties} object} without using \code{new("cellProperties", ...)}.
}

\usage{
cellProperties( border.bottom.color = "black"
		, border.bottom.style = "solid", border.bottom.width = 1, border.left.color = "black"
		, border.left.style = "solid", border.left.width = 1, border.top.color = "black"
		, border.top.style = "solid", border.top.width = 1, border.right.color = "black"
		, border.right.style = "solid", border.right.width = 1, vertical.align = "middle"
		, padding.bottom = 2, padding.top = 2, padding.left = 3, padding.right = 3
		, padding, border.width, border.style, border.color ) 
}

\arguments{
  \item{border.bottom.color}{border bottom color.}
  \item{border.bottom.style}{border bottom style.}
  \item{border.bottom.width}{border bottom width.}
  
  \item{border.top.color}{border top color.}
  \item{border.top.style}{border top style.}
  \item{border.top.width}{border top width.}
  
  \item{border.left.color}{border left color.}
  \item{border.left.style}{border left style.}
  \item{border.left.width}{border left width.}
  
  \item{border.right.color}{border right color.}
  \item{border.right.style}{border right style.}
  \item{border.right.width}{border right width.}

  \item{vertical.align}{cell content vertical alignment. Expected value is one of c("top", "bottom", "middle").}

  \item{padding.bottom}{cell bottom padding.}
  \item{padding.top}{cell top padding.}
  \item{padding.left}{cell left padding.}
  \item{padding.right}{cell right padding.}

  \item{padding}{cell paddings. Expected value must be >=0 (no unit). It sets all paddings to the same value.}
  \item{border.width}{cell borders width. Expected value must be >=0 (no unit). It sets all borders widths to the same value.}
  \item{border.style}{cell borders style. See details for expected value. It sets all borders styles to the same value.}
  \item{border.color}{cell borders color. It sets all borders colors to the same value.}

}

\details{
\strong{Color arguments} (border.*.color, border.color): \code{character} 
	single value ; expected value is a valid color.\cr
\strong{Border width arguments} (border.*.width, border.width): \code{integer} 
	single value representing border width in px unit, value must be >=0.\cr
\strong{Border style arguments} (border.*.style, border.style): \code{character} 
	single value representing border style, expected value is one of 
		c( "none", "hidden", "dotted", "dashed", "solid", "double", "inset", "outset" ).\cr
\strong{Padding arguments} (padding.*, padding): \code{integer} 
	single value representing text padding of cell in px unit, value must be >=0.\cr
\strong{Vertical align arguments} (vertical.align): \code{character} 
	single value representing text vertical alignment of cell, expected value is one of 
		c("top", "bottom", "middle").\cr
 
padding is a shortcut that provide its value to the 4 padding.* parameters.\cr
border.width is a shortcut that provide its value to the 4 border.*.width parameters.\cr
border.style is a shortcut that provide its value to the 4 border.*.style parameters.\cr
border.color is a shortcut that provide its value to the 4 border.*.color parameters.
}

\value{
an \linkS4class{cellProperties} object
}


\seealso{
\code{\link{tableProperties}}, 
\code{\linkS4class{tableProperties} object}\cr
\code{\link{parProperties}}, 
\code{\linkS4class{parProperties} object}\cr
\code{\link{textProperties}}, 
\code{\linkS4class{textProperties} object}\cr
\code{\linkS4class{cellProperties} object}
}
\examples{
cellProperties( border.color = "gray" )
}
\keyword{utilities}
