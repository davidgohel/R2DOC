\name{addParagraph}
\alias{addParagraph}

\title{
add paragraphs into documents
}

\description{
Add paragraphs into document objects (from R2DOCX or R2WDOC packages).
}

\usage{
addParagraph( x, value, ... )
}

\arguments{
  \item{x}{a document object from class \code{Docx} or \code{Wdoc}.}
  \item{value}{is a character string containing text to add.}
}


\details{

\itemize{
\item \code{value} : {text to add, a character vector of length 1.\cr
		Example : \code{value="Hello world"}\cr
		If replacements have to be done, keywords that identify text to be replaced must be contains into square brackets [].\cr
		Example : \code{value="At the [ALPHA] significance level, one [DECISION] the null hypothesis."}\cr
		}

\item \code{replacements} : {a name list, names are keywords (of the \code{value}
		, contained into square brackets) and values are replacements values\cr
		Example : \code{value = "[animal] eats [food]."}\cr\code{, replacements = 
		list( animal = "donkey" , food = "grass" )}\cr
		}

\item \code{replacement.styles} : {a name list, names are keywords (of the \code{value}
		, contained into square brackets) and values are replacements textProperties values\cr
		Example : \code{value = "[animal] eats [food]."}\cr\code{, replacements = 
		list( animal = "donkey" , food = "grass" )}\cr\code{, replacement.styles = 
		list( animal= textProperties(color="red" ) , food= textProperties(color="blue" ) )
		}\cr
		}

}

}



\value{
\code{doc} object with added paragraph.
}


\author{
David Gohel
}

\seealso{
\code{\link{addTable}},
\code{\link{addPlot}}
}


\keyword{utilities}
\keyword{methods}
