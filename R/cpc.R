mgm.cpc <- function(ds, graph){

  alpha <- NULL

  # Check alpha value is valid
  check_alpha <- function(alpha){
    if(alpha < 0 || alpha > 1){
      print("Error: alpha values must be between 0 and 1")
      return(FALSE)
    } else {
      return(TRUE)
    }
  }

  get_alpha <- function(){
    prompt <- paste("Please enter the alpha value you would like to use: ")
    alpha <<- as.numeric(readline(prompt))
    if(!check_alpha(alpha)){
      get_alpha()
    } else {
      return(alpha)
    }
  }

  check_alpha_change <- function(response){
    if(identical(response, "y")){
      get_alpha()
    }
  }

  IndTest <- J("edu/pitt/csb/mgm/IndTestMultinomialAJ")
  CPC <- J("edu/cmu/tetrad/search/Cpc")

  alpha <<- 0.1

  response <- readline(prompt="The default alpha value is 0.1. To change this alpha value, enter 'y': ")
  check_alpha_change(response)

  preferLinear <- TRUE

  linear_response <- readline(prompt="If you prefer to use linear regression, enter 'y': ")
  if(identical(linear_response, 'y')){
    preferLinear <- TRUE
  } else{
    preferLinear <- FALSE
  }


  indt <- new(IndTest, ds, alpha, preferLinear)
  cpc <- new(CPC, indt)

  .jcall(cpc, "V", "setInitialGraph", graph)

  cpc_graph <- .jcall(cpc, "Ledu/cmu/tetrad/graph/Graph;", "search")

  cpc_output <- .jcall(cpc_graph, "Ljava/lang/String;", "toString")

  # Generate random number
  rn <- sample(100000:999999, 1)

  output_filename <- paste("causalMGM_directedgraph_",rn,".txt", sep="")

  # Write string to output file
  lapply(strsplit(cpc_output[1], "\n"), write, output_filename)

  outputfile_path <- paste(getwd(), output_filename, sep="/")
  end_message <- paste("The output has been saved to", outputfile_path)
  print(end_message)

  return(cpc_graph)
}

