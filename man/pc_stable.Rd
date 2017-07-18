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
Andrew J Sedgewick, Joseph D. Ramsey, Peter Spirtes, Clark Glymour, Panayiotis V. Benos, "Mixed Graphical Models for Causal Analysis of Multi-modal Variables", 2017, arXiv:1704.02621
  \url{https://arxiv.org/abs/1704.02621}
}
\author{
AJ Sedgewick, Neha Abraham, Panagiotis Benos
}
\examples{
library(rJava)
mgm_init()
ds <- loadSampleData()
\dontrun{graph <- mgm(ds)}
\dontrun{mgm.pc_stable(ds, graph)}
}
