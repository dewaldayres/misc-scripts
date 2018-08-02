
#
# loop through all columns in dataframe 
#

for (col in colnames(df))
{
  #
  # print all unique values per column 
  # 
  
  print(unique(df[col]))
}

