# Returns the directed graph
pc_stable <- function(graph){

  IndTestDSep <- J("edu/cmu/tetrad/search/IndTestDSep")
  PcStable <- J("edu/cmu/tetrad/search/PcStable")

  indt <- new(IndTestDSep, graph)
  pcs <- new(PcStable, indt)

  .jcall(pcs, "V", "setInitialGraph", graph)

  pcs_graph <- .jcall(pcs, "Ledu/cmu/tetrad/graph/Graph;", "search")

  pcs_output <- .jcall(pcs_graph, "Ljava/lang/String;", "toString")

  output_filename <- paste("tmp/causalMGM_directedgraph_",rn,".txt", sep="")

  # Write string to output file
  lapply(strsplit(pcs_output[1], "\n"), write, output_filename)

  end_message <- paste("The output has been saved to", output_filename)
  print(end_message)

  return(pcs_graph)
}

