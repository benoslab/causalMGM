steps <- function(dataset){

  STEPS <- J("edu/pitt/csb/mgm/STEPS")
  instability_col_names <- c("C-C", "C-D", "D-D", "All Edges")

  get_lambda <- function(prompt){
    lambda_val <- as.numeric(readline(prompt))
    if(!check_lambda(lambda_val)){
      print("Invalid lambda value, please try again: ")
      get_lambda(prompt)
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

  writeLines("Please provide a range of lambdas to test.")
  lambda_min <- get_lambda("Please enter the starting lambda value: ")
  lambda_max <- get_lambda("Please enter the ending lambda value: ")
  lambda_num <- as.numeric(readline("Please enter the number of lambda values to test: "))
  lambda_arr <- seq(lambda_min, lambda_max, length.out=lambda_num)
  lam <- .jarray(lambda_arr)

  gamma <- as.numeric(readline("Please enter a gamma value: "))
  numSub <- as.integer(as.numeric(readline("Please enter the number of subsamples to use: ")))

  steps <- new(STEPS, dataset, lam, gamma, numSub)
  steps_results <- .jcall(steps, "[[D", "runStepsArray")
  steps_list <- lapply(steps_results, as.list)
  steps_matrix <- structure(c(unlist(steps_list)), .Dim=c(length(lambda_arr), 4), .Dimnames = list(lambda_arr, instability_col_names))

  matplot(lambda_arr, steps_matrix, type="l", lty=1, xlab="Lambda", ylab="Instability")
  legend('topleft', legend=colnames(steps_matrix), col=1:5, lty=1)

  return(steps_matrix)

}
