\name{steps}
\alias{steps}
\title{
  STEPS (beta)
}
\description{
Displays of a graph of lambda values against stability to allow user to choose optimum lambda value.
}
\usage{
steps(dataset)
}
\arguments{
  \item{dataset}{Dataset Object}
}
\author{
AJ Sedgewick, Vineet Raghu, Neha Abraham, Panagiotis Benos
}
\examples{
library(rJava)
mgm_init()
ds <- loadSampleData()
\donttest{steps(ds)}
}

