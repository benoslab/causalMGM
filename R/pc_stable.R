# Returns the directed graph
mgm.pc_stable <- function(ds, graph){

  alpha <<- 0.1

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
  PcStable <- J("edu/cmu/tetrad/search/PcStable")

  response <- readline(prompt="The default alpha value is 0.1. To change this alpha value, enter 'y': ")
  check_alpha_change(response)

  indt <- new(IndTest, ds, alpha)
  pcs <- new(PcStable, indt)

  .jcall(pcs, "V", "setInitialGraph", graph)

  pcs_graph <- .jcall(pcs, "Ledu/cmu/tetrad/graph/Graph;", "search")

  pcs_output <- .jcall(pcs_graph, "Ljava/lang/String;", "toString")

  output_filename <- paste("causalMGM_directedgraph_",rn,".txt", sep="")

  # Write string to output file
  lapply(strsplit(pcs_output[1], "\n"), write, output_filename)

  outputfile_path <- paste(getwd(), output_filename, sep="/")
  end_message <- paste("The output has been saved to", outputfile_path)
  print(end_message)

  return(pcs_graph)
}

