\name{loadData}
\alias{loadData}
\title{
Loads dataset into a DataSet object
}
\description{
Prompts user for file containing dataset and creates a DataSet object
}
\usage{
loadData(data_table, file=FALSE)
}
\arguments{
  \item{data_table}{One-way R table}
  \item{file}{Boolean value, set to true to use dataset from file, false to use data_table }
}
\value{
  \item{ds}{DataSet object}
}
\author{
Neha Abraham, Panagiotis Benos
}
\note{
Should be called after mgm_init()
File containing dataset must be a .txt tab-delimited file. The first row must contain the names of the variables and the remaining rows must contain the values of the variables.
}
\examples{
library(rJava)
mgm_init()
\dontrun{ds <- loadData(file=TRUE) # to load dataset from file}
\dontrun{ds <- loadData(data_table) # to load dataset from table}
}
