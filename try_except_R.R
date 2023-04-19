log_calculator <- function(x){
  tryCatch(
    expr = {
      message(log(x))
      message("Successfully executed the log(x) call.")
    },
    error = function(e){
      message('Caught an error!')
      print(e)
    },
    warning = function(w){
      message('Caught an warning!')
      print(w)
    },
    finally = {
      message('All done, quitting.')
    }
  )    
}



log_calculator <- function(x){
  tryCatch(
    expr = {
      message(log(x))
      message("Successfully executed the log(x) call.")
    },
    error = function(e){
      message('Caught an error!')
      print(e)
    },
    warning = function(w){
      message('Caught an warning!')
      print(w)
    },
    finally = {
      message('All done, quitting.')
    }
  )    
}


log_calculator("dkdd")




