\name{mgm}
\alias{mgm}
\title{
Mixed Graphical Model
}
\description{
Returns the undirected graph of a mixed data set. Also outputs the graph to a .txt file
}
\usage{
mgm(ds)
}
\arguments{
  \item{ds}{
  DataSet object returned from loadData()
  }
}

\value{
\item{mgm_graph}{Graph object, undirected graph resulting from MGM}
}
\references{
https://arxiv.org/pdf/1205.5012.pdf
}
\author{
Neha Abraham
}
\examples{
mgm_init()
ds <- loadData()
mgm_graph <- mgm(ds)
}
