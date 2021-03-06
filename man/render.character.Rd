% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/render.character.R
\name{render.character}
\alias{render.character}
\title{Render method for "character" class.}
\usage{
\method{render}{character}(x, ...)
}
\arguments{
\item{x}{an object of class "character".}

\item{...}{additional parameters.}
}
\value{
Rendered character template.
}
\description{
Rendering is the process of replacing the tags in moustaches by text.
}
\examples{

require(magrittr)
require(whisker)
# render character string
my_template <- "Hello {{name}}. How are you doing?"
my_template \%>\% 
  render(name = "Winnie the Pooh")

# render table      
my_template <- c(
     "| x | y |",
     "|---|---|",
     "{{#MY_TABLE}}",
     "| {{X}} | {{Y}} |",
     "{{/MY_TABLE}}")
my_table <- data.frame(X = 1:5, Y = letters[1:5])  
my_table
my_template \%>\% 
render(MY_TABLE = unname(rowSplit(my_table))) \%>\%
cat
  
}
\author{
Dennis Walvoort
}
