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
File used to load data from must be a .txt tab-delimited file. The first row must contain the names of the variables and the remaining rows must contain values of the variables.
}
\examples{
mgm_init()
ds <- loadData()
}
