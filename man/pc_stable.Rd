\name{mgm.pc_stable}
\alias{mgm.pc_stable}
\title{
PC Stable}
\description{
Implements the Peter/Clark algorithm and returns the directed graph. Also outputs the graph to a .txt file
}
\usage{
mgm.pc_stable(ds, graph)
}
\arguments{
  \item{ds}{
    DataSet object
}
  \item{graph}{
    Graph object of DataSet
  }
}
\value{
  \item{pcs_graph}{Directed graph}
}
\references{
%% ~put references to the literature/web site here ~
}
\author{
Neha Abraham
}
\examples{
mgm_init()
ds <- loadData()
graph <- mgm(ds)
mgm.pc_stable(ds, graph)
}
