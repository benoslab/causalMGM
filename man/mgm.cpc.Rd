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
\dontrun{mgm_init()}
\dontrun{ds <- loadSampleData()}
\dontrun{graph <- mgm(ds)}
\dontrun{mgm.cpc(ds, graph)}
}
