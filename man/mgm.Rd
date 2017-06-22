\name{mgm}
\alias{mgm}
\title{
Mixed Graphical Model
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
mgm(ds)
}
\arguments{
  \item{ds}{
  DataSet object returned from loadData()
}
}
\details{
%%  ~~ If necessary, more details than the description above ~~
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
\note{
%%  ~~further notes~~
}

\examples{
mgm_init()
ds <- loadData()
mgm_graph <- mgm(ds)
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ Mixed Graphical Model }% use one of  RShowDoc("KEYWORDS")
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
