  
  #
  # rename all columns according to values in vector 
  #
  
  columns <- c("col_1_name", "col_2_name", ..., ...)
  colnames(data) <- columns
  
  
  #
  # rename column by name 
  #
  
    colnames(df)[colnames(df) == 'x'] <- 'y'
	
	
  #
  # rename column by index 
  # 
  
  names(df)[1] <- "x" 		# first column 
  names(df)[2] <- "y" 		# second column 