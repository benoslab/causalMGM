# Returns the undirected graph
mgm <- function(ds) {

  cc <- NULL
  cd <- NULL
  dd <- NULL

  check_value_change <- function(response){
    if(identical(response, "y")){
      change_lambdas()
    }
  }

  change_lambdas <- function(){
    # Prompt user for lambda values
    cc <<- get_lambda("continuous-continuous")
    cd <<- get_lambda("continuous-discrete")
    dd <<- get_lambda("discrete-discrete")
  }

  # Prompt user for lambda value
  get_lambda <- function(lambda_type){
    prompt <- paste("Please enter the", lambda_type, "lambda value: ")
    lambda_val <- as.numeric(readline(prompt))
    if(!check_lambda(lambda_val)){
      get_lambda(lambda_type)
    } else {
      return(lambda_val)
    }
  }

  # Check lambda value is valid
  check_lambda <- function(lambda_val){
    if(lambda_val < 0 || lambda_val > 1){
      print("Error: lambda values must be between 0 and 1")
      return(FALSE)
    } else {
      return(TRUE)
    }
  }


  cc <<- 0.3
  cd <<- 0.3
  dd <<- 0.3

  writeLines("These are the default lambda values:\n continuous-continuous: 0.3\n continuous-discrete: 0.3\n discrete-discrete: 0.3")
  response <- readline(prompt="To change the values, enter 'y': ")
  check_value_change(response)

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
  rn <- randnum()

  output_filename <- paste("causalMGM_undirectedgraph_",rn,".txt", sep="")

  # Write string to output file
  lapply(strsplit(mgm_output[1], "\n"), write, output_filename)

  outputfile_path <- paste(getwd(), output_filename, sep="/")
  end_message <- paste("The output has been saved to", outputfile_path)
  print(end_message)

  return(mgm_graph)
}

