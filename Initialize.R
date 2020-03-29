
#** CLEAN YOUR ENVIRONMENT
#** You may want to clear your environment variables when starting a session. Saves from plenty of headache. 
rm(list=ls())

library(dotenv) # Parse getwd() + "/.env" -file
library(rscopus)

# Get environment variable and print warning if it's missing
get_env_var <- function(variable) {
  value <- Sys.getenv(variable)
  if (is.null(value) || value == "") {
    print(paste("WARN! Environment variable not set:", variable))
  }
  return(value)
}

#** STACKOVERFLOW API KEY
so_api_key <- get_env_var("SO_API_KEY")
#** SCOPUS API KEY
scopus_api_key <- get_env_var("SCOPUS_API_KEY")

rscopus::set_api_key(scopus_api_key)

#** GETOLDTWEETS-JAVA PATH
#** Set path to the directory for "GetOldTweets-java-master"
getoldtweets_path = paste(getwd(),"/GetOldTweets-java-master", sep="")


