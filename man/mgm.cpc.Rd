\name{mgm.cpc}
\alias{mgm.cpc}
\title{
Conservative PC
}
\description{
  Returns the directed graph using the conservative Peter-Clark algorithm.
}
\usage{
mgm.cpc(ds, graph)
}
\arguments{
  \item{ds}{
    Dataset Object
}
  \item{graph}{
    Undirected graph received by calling the function mgm()
}
}
\value{
  Returns the directed graph
}
\author{
  Neha Abraham, Vineet Raghu, Panagiotis Benos
}

\examples{
library(causalMGM)
mgm_init()
ds <- loadSampleData()
\donttest{graph <- mgm(ds)}
\donttest{mgm.cpc(ds, graph)}
}
