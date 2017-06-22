\name{pc_stable}
\alias{pc_stable}
\title{
PC Stable}
\description{
Implements the Peter/Clark algorithm and returns the directed graph
}
\usage{
pcs(ds, graph)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{ds}{
    DataSet object
}
  \item{graph}{
    Graph object of DataSet
  }
}
\details{
%%  ~~ If necessary, more details than the description above ~~
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
\note{
%%  ~~further notes~~
}

\examples{
mgm_init()
ds <- loadData()
graph <- mgm(ds)
pc_stable(ds, graph)
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }% use one of  RShowDoc("KEYWORDS")
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
