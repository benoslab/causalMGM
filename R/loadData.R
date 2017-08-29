# Prompt user for dataset file and create global DataSet object
loadData <- function(data_table = NULL, file=FALSE){
  # Create MixedUtils object
  MixedUtils <- J("edu/pitt/csb/mgm/MixedUtils")
  mu <- new(MixedUtils)

  if(file){
    # Prompt user for dataset
    fileDir <- readline(prompt="Please enter the path to the directory containing your dataset file: ")
    fileName <- readline(prompt="Please enter  the name of your dataset file: ")
  } else{
    fileDir <- paste(.libPaths()[1], "causalMGM", "tmp", sep=.Platform$file.sep)
    fileName <- "tmp_testdata.txt"
    filePath <- paste(fileDir, fileName, sep=.Platform$file.sep)
    write.table(data_table, filePath, sep="\t")
  }

  # Create DataSet object from file
  ds <- .jcall(mu, "Ledu/cmu/tetrad/data/DataSet;", "loadDataSet", fileDir, fileName)

  return(ds)
}
