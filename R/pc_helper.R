# Check alpha value is valid
check_alpha <- function(alpha){
  if(alpha < 0 || alpha > 1){
    print("Error: alpha values must be between 0 and 1")
    return(FALSE)
  } else {
    return(TRUE)
  }
}

get_new_alpha <- function(alpha){
  prompt <- paste("Please enter the alpha value you would like to use: ")
  alpha <- as.numeric(readline(prompt))
  if(!check_alpha(alpha)){
    get_alpha(alpha)
  } else {
    return(alpha)
  }
}

check_alpha_change <- function(response, alpha){
  if(identical(response, "y")){
    get_new_alpha(alpha)
  }
}

get_alpha <- function(alpha){
  response <- readline(prompt="The default alpha value is 0.1. To change this alpha value, enter 'y': ")
  check_alpha_change(response, alpha)
}

check_preferLinear <- function(){
  linear_response <- readline(prompt="If you prefer to use linear regression, enter 'y': ")
  if(identical(linear_response, 'y')){
    preferLinear <- TRUE
  } else{
    preferLinear <- FALSE
  }
  return(preferLinear)
}

get_directed_graph <- function(ds, graph, PC){
  alpha <- 0.1
  alpha <- get_alpha(alpha)
  preferLinear <- check_preferLinear()


  IndTest <- J("edu/pitt/csb/mgm/IndTestMultinomialAJ")
  indt <- new(IndTest, ds, alpha, preferLinear)
  pc <- new(PC, indt)

  .jcall(pc, "V", "setInitialGraph", graph)
  pc_graph <- .jcall(pc, "Ledu/cmu/tetrad/graph/Graph;", "search")
  pc_output <- .jcall(pc_graph, "Ljava/lang/String;", "toString")

  # Generate random number
  rn <- randnum()

  output_filename <- paste("causalMGM_directedgraph_",rn,".txt", sep="")

  # Write string to output file
  lapply(strsplit(pc_output[1], "\n"), write, output_filename)

  outputfile_path <- paste(getwd(), output_filename, sep="/")
  end_message <- paste("The output has been saved to", outputfile_path)
  print(end_message)
}
