# global data get once

Pop <- readRDS("data/pop.rds")

# To avoid problems with changing datafile names from worldbank, I have will read a prepared RDS file.
# the code for getting the data is commented out and given at the end of this file (commented out)

# Download worldbank population since 1950 dataset from https://data.worldbank.org/indicator/SP.POP.TOTL?end=2016&start=1960&view=chart

# URL <- "http://api.worldbank.org/v2/en/indicator/SP.POP.TOTL?downloadformat=csv"
# FILE <- "data/pop.zip"
# mainfile <- "data/API_SP.POP.TOTL_DS2_en_csv_v2_9908626.csv"

# if (!file.exists(FILE)) {
#  download.file(URL, FILE,mode="wb")
#  unzip(FILE,exdir="./data")
#}


# MyData <- read.csv(mainfile, header=TRUE, skip = 4, sep=",", stringsAsFactors = FALSE)

# library(tidyr)
# Gather year population columns into two columns year and population.
# MyData <- gather(MyData,"year","population",5:62)

# Strip front X of years and make numerical
# MyData$Year <- as.numeric(substring(MyData$year, 2))

# Keep relevant columns
# Pop <- MyData[,c(1,2,7,8)]

# save as RDS 
# saveRDS(Pop,"data/pop.rds")