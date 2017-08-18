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
\references{
%% ~put references to the literature/web site here ~
}
\author{
  Neha Abraham, Vineet Raghu, Panagiotis Benos
}

\examples{
mgm_init()
ds <- loadSampleData()
graph <- mgm(ds)
mgm.cpc(ds, graph)
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }% use one of  RShowDoc("KEYWORDS")
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
