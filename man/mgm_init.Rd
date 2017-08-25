\name{mgm_init}
\alias{mgm_init}
\title{Initialize causalMGM}
\description{Loads the rJava library, downloads tetradLite.jar, and initializes the JVM}
\usage{
mgm_init()
}
\references{
https://arxiv.org/abs/1704.02621
https://bmcbioinformatics.biomedcentral.com/articles/10.1186/s12859-016-1039-0

}
\author{
Neha Abraham
}
\note{
Must be the first function called after loading the causalMGM library
}
\examples{
library(rJava)
\dontrun{mgm_init()}
}
