# make a data frame 
cats <- data.frame(coat = c("calico", "black","tabby"),
                   weight = c(2.1, 5.0, 3.2),
                   likes_string = c(1, 0, 1))
write.csv(x = cats, file = "data/feline_data.csv")


cats

cats$coat

cats$weight + 2

cats$weight + cats$coat

class(cats$weight)

class(cats$coat)

str(cats)

str(cats$coat)

cats$coat

# change order of factors

#exploring data frames
#read in data
gap <- read.csv(file = "data/gapminder-FiveYearData.csv")
cats <- read.csv(file = "data/feline_data.csv")
head(gap)
str(gap)

nrow(gap)
ncol(gap)
dim(gap)

colnames(gap)


#Subsetting data
x <- c(5.4, 6.2, 7.1, 4.8, 7.5)

names(x) <- c("a", "b", "c", "d", "e")

x[3]

x[c(1, 3)]


#slices
x[1:4]

x[-2]

x[-(2:4)]

#subset a real data frame gapminder
head(gap[1])

head(gap["pop"])
#right hand for rows , left for columns
head(gap[, 1])

gap[3,]

gap[158, ]


albania <- gap[13:24, 3:6]




head[gap]

afghanistan <- gap[1:12, ] #make data frame for afghanistan only rows 1-12
afghanistan$gdp <- afghanistan$pop * afghanistan$gdpPercap #gdp times population - create new column
write.csv(x = afghanistan, file = "results/afghangdp.csv") #write to csv file and put into Results folder



