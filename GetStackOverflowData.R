#install.packages("httr", dependencies = TRUE)
#install.packages("xml2", dependencies = TRUE)


#install.packages("urltools", dependencies = TRUE)
#install.packages("jsonlite", dependencies = TRUE)


#install.packages("anytime", dependencies = TRUE)

source("FunctionsStackOverflowApi.R")


get_stackOverFlowData = function(query_string, my_filename) {
  print(paste("Querying:", query_string))
  pagesize = 50
  my_articles = get_stackoverflow_data(query_string, pagesize)
  #remove source code and othe stuff from the body of the asnwer. It is called abstract to make it compatible with Scopus data
  abstract = my_articles$Abstract
  abstract = gsub("<code.*/code>", "", abstract)
  abstract = gsub("<code.*<truncated>", "", abstract)
  abstract = gsub("<.*?>", "", abstract)
  abstract = gsub("//.*\n", " ", abstract)
  abstract = gsub("\\{\n.*\\}\n", " ", abstract)
  abstract = gsub("[\r\n]", " ", abstract)
  abstract = gsub("\"", "", abstract)
  abstract = gsub("[0-9]", "", abstract)

  #Add cleaned abstracts as a new column. 
  #We could also replace the existing but debugging is easier if we keep both. 
  my_articles$Abstract_clean = tolower(abstract)
  my_articles$Title = tolower(my_articles$Title)

  #Date is character covert to Date object
  my_articles$Date = as.Date(my_articles$Date)
  my_articles$CR_Date = as.Date(my_articles$CR_Date)
  my_articles$LA_Date = as.Date(my_articles$LA_Date)

  #Fixed filename: data/my_STO_<xxx>_data.RData
  my_file = "."
  my_file = paste(my_file, "/data/my_STO_", sep="", collapse=" ")
  my_file = paste(my_file, my_filename, sep="", collapse=" ")
  my_file = paste(my_file, "_data.RData", sep="", collapse=" ")
  
  save(my_articles, file=my_file)

  return(my_file)
}

query_string <- "aws-lambda"
my_filename <- query_string
get_stackOverFlowData(query_string, my_filename)

query_string <- "google-cloud-functions"
my_filename <- query_string
get_stackOverFlowData(query_string, my_filename)


query_string <- "azure-functions"
my_filename <- query_string
get_stackOverFlowData(query_string, my_filename)

query_string <- "serverless"
my_filename <- query_string
get_stackOverFlowData(query_string, my_filename)




