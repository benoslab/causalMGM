\name{mgm}
\alias{mgm}
\title{
Mixed Graphical Model
}
\description{
Returns the undirected graph of a mixed data set of continuous and discrete variables. This is an improved version of the Lee & Hastie algorithm (JMLR, 2012).  The improvements include the use of three sparsity parameters, depending on the edge type (continuous-continuous, continuous-discrete, discrete-discrete) and a subsampling method to find the optimal sparsities. It also outputs the graph to a .txt file
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
AJ Sedgewick, I Shi, RM Donovan, PV Benos, "Learning mixed graphical models with separate sparsity parameters and stability-based model selection", 2016, BM Bioinformatics 17(Suppl 5):S175 DOI: 10.1186/s12859-016-1039-0
https://bmcbioinformatics.biomedcentral.com/articles/10.1186/s12859-016-1039-0
}
\author{
AJ Sedgewick, Neha Abraham, Panagiotis Benos
}
\examples{
library(rJava)
\dontrun{mgm_init()}
\dontrun{ds <- loadData()}
\dontrun{mgm_graph <- mgm(ds)}
}
