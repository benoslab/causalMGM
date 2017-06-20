#
#   Build and Reload Package:  'Cmd + Shift + B'
#   Check Package:             'Cmd + Shift + E'
#   Test Package:              'Cmd + Shift + T'

mgm <- function() {

  # Load rJava library
  library(rJava)
  # Initalize JVM
  .jinit()

  # Add tetrad jar
  .jaddClassPath("jars/tetrad.jar")

  # Create MixedUtils object
  MixedUtils <- J("edu/pitt/csb/mgm/MixedUtils")
  mu <- new(MixedUtils)

  # Prompt user for dataset
  fileName <- readline(prompt="Please enter the name of your dataset file: ")
  fileDir <- readline(prompt="Please enter the directory of your dataset file: ")

  # Create DataSet object from file
  ds <- .jcall(mu, "Ledu/cmu/tetrad/data/DataSet;", "loadDataSet", fileDir, fileName)

  # Prompt user for lambda values
  cc <- as.numeric(readline(prompt="Please enter the continuous-continuous lambda value: "))
  cd <- as.numeric(readline(prompt="Please enter the continuous-discrete lambda value: "))
  dd <- as.numeric(readline(prompt="Please enter the discrete-discrete lambda value: "))

  # Create Java array of lambda values
  lb <- c(cc, cd, dd)
  lambda <- .jarray(lb)

  # Create and initialize MGM object
  MGM <- J("edu/pitt/csb/mgm/MGM")
  mgm <- new(MGM, ds, lambda)

  # Create MGM Graph object and convert to String
  mgm_graph <- .jcall(mgm, "Ledu/cmu/tetrad/graph/Graph;", "search")
  mgm_output <- .jcall(mgm_graph, "Ljava/lang/String;", "toString")

  # Generate random number
  rn <- sample(100000:999999, 1)

  output_filename <- paste("tmp/causalMGM_",rn,".txt", sep="")

  # Write string to output file
  lapply(strsplit(mgm_output[1], "\n"), write, output_filename)

  end_message <- paste("The output has been saved to", output_filename)
  print(end_message)
}

