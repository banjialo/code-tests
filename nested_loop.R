for(i in 1:3) {                                             # Head of outer loop
  
  for(j in 1:2) {                                           # Head of inner loop
    
    print(paste("This is iteration i =", i, "and j =", j))  # Some output
  }
}



do_something <- function (...){
  print ("hello world")
}

do_something(name, kay, matt, skjdd)

