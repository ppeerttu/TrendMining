# Demo Videos
These demonstration videos show step-by-step execution in R and R-studio

Part1 https://vimeo.com/album/5406569

Part2-1 https://vimeo.com/289643133

Part2-2 https://vimeo.com/289643153

Part2-3 https://vimeo.com/289643210

Part3 https://vimeo.com/291125623

Part4-1 https://vimeo.com/292890807

Part4-2 https://vimeo.com/292890926

Part4-3 https://vimeo.com/292890985

Part5-1 https://vimeo.com/292964640

Part5-2 https://vimeo.com/292964930

Part5-3 https://vimeo.com/292965195

# Mini User Guide
If you are a student in Emerging Trends in SE course at University of Oulu please ask more help from course assistant in the exercises. 
In other cases you may email prof. Mika Mäntylä <mika.mantyla@oulu.fi>

Scripts

1. Edit and execute Initialize.R 
   - Set-up environment variables => work directory, path to GetOldTweets-java-master folder, StackOverflow API key & Scopus API key
     - Use [example.env](./example.env) -file to create `.env` file (not tracked by Git)
   - Execute the file line by line (shortcut CTRL+Enter)

   If you are using IT center computers, you can alternatively run ClassRoomSpecificSettings.r to create local directories for libraries, and data, to solve the network drive problems. Remember to change the API keys to the ones you have created for the sources.

2. Input - Pull out data from different sources
   
   2.1. Open file GetScopusData.R and execute line by line fashion. Note in first run you need to uncomment early lines and install packages
Observe different variables in the environment. There is also commented out skeleton for turning this into function. After successful execution you  a data file. 
Please verify that the data file exists. 

   2.2 Do the same for GetStackOverflowData.R and GetTwitterData.R
Function files that fetch the data should not need editing (FunctionsScopusApi.R, FunctionsStackOverflowApi.R, FunctionsTwitterApi.R)

3. Output

   3.1. Start with text mining basics. File DtmAndDendogramClustering.R contains functionality for document clustering.  Execute it line by line fashion for all of your data sets. 
  
   3.2. Investigate Word clouds (Wordcloud.R) and Dissimilarity Clouds (ComparisonCloud.R)
  
   3.3 Plot timelines (Timelines.R) to see how your data behaves over time. You may also do additional statistical plots and test, e.g. does question/title length affect upvotes/retweets/cites
  
   3.4. Search for optimal LDA model (BuildOptimalLdaModel.R)

   3.5. Investigate the trends in the optimal LDA model (AnalyzeOptimalLdaModel.R)

   3.6. Do interactive LDA cluster exploration. Note: you might want to have less clusters (smaller k) than what is mathematically optimal (InteractiveLdaCluster.R). As exploring hundreds of clusters in screen is not very easy. 

Extra Point: The libraries can be installed using install.packages if they are missing.


# History
These scripts were first developed in 2015 for both teaching and research purposes. Versions of these scripts have been used in the course Emerging Trends in Software Engineering (811600S) at the University of Oulu and in the following papers. 

# References

Garousi, V., Mäntylä M. V., "Citations, research topics and active countries in software engineering: A bibliometrics study", Computer Science Review, vol 56, 2016, pp. 56-77, http://mikamantyla.eu/Bibliometrics%20of%20SE%20literature-Dec%2023.pdf

Raulamo-Jurvanen, P., Mäntylä, M. V., Garousi, V., "Citation and Topic Analysis of the ESEM papers", in Proceedings of the 9th  International Symposium on Empirical Software Engineering and Measurement (ESEM) 2015, http://mikamantyla.eu/2015%20Raulama-Jurvanen%20Citation%20and%20Topic%20Analysis%20of%20the%20ESEM%20papers.pdf

Mäntylä M. V, Jørgensen J., Ralph P, Erdogmus H.,  "Guest editorial for special section on success and failure in software engineering,  Empirical Software Engineering,  vol. 22, issue 5, Oct 2017, pp. 2281-2297, https://link.springer.com/article/10.1007/s10664-017-9505-5

Kuutila M, Mäntylä, M. V, Claes, M., Elovainio M. "Reviewing Literature on Time Pressure in Software Engineering and Related Professions" The second International Workshop on Emotion Awareness in Software Engineering ICSE 2017 Workshop (SEmotion) - Buenos Aires, Argentina - May 21, 2017, pp. 1-6, https://arxiv.org/abs/1703.04372 

Mäntylä M. V. , D. Graziotin, and M. Kuutila, “The Evolution of Sentiment Analysis-A Review of Research Topics, Venues, and Top Cited Papers,” Computer Science Review, vol. 27, Feb 2018, Pages 16-32, https://arxiv.org/abs/1612.01556 
