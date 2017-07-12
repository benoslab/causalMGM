\name{mgm.pc_stable}
\alias{mgm.pc_stable}
\title{
MGM PC Stable}
\description{
Implements the PC-stable search algorithm () algorithm and returns the directed graph. Also outputs the graph to a .txt file
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
https://arxiv.org/abs/1704.02621
}
\author{
AJ Sedgewick, Neha Abraham, Panagiotis Benos
}
\examples{
mgm_init()
ds <- loadData()
graph <- mgm(ds)
mgm.pc_stable(ds, graph)
}
