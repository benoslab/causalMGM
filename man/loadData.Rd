\name{loadData}
\alias{loadData}
\title{
Loads dataset into a DataSet object
}
\description{
Prompts user for file containing dataset and creates a DataSet object
}
\usage{
loadData()
}
\value{
\item{ds}{DataSet object}
}
\author{
Neha Abraham
}
\note{
Should be called after mgm_init()
}
\examples{
mgm_init()
ds <- loadData()
}
