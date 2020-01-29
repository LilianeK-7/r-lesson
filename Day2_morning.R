gapminder <- read.csv("data/gapminder_data.csv")
head(gapminder)

#Basic IF-ELSE SYNTAX:
# if (condition) {do something}
# if (condition) {do something} else {do somethng else}
# if (condition) {
#do something
#} else if {other_condition} {
#do other thing
#} else {
#do something else
#}

if (nrow(gapminder) >100) {
  print("it's big!")
}

#NOTE ABOUT DATAFRAME SIZES: nrow(), ncol(), dim()
#NOTE ABOUT DATAFRAME LABELS: rownames(), colnames()


if ("birthRate" %in% colnames(gapminder)) {
  # linear model of birthrate vs pop
  lm(birthmate ~ pop, data=gapminder)
} else if ("avgHeight" %in% colnames(gapminder)) {
  # linear model of average height vs pop
  lm(avgheight ~ pop, data=gapminder)
} else if ("gdpPercap" %in% colnames(gapminder)) {
  #linear model of GDP per capita vs pop
  lm(gdpPercap ~ pop, data=gapminder)
} else {
  #linear model of life expectancy vs pop
  lm(lifeExp ~ pop, data=gapminder)
}

# Use an if() statement to test whether capminder has many records from 2012

if (2012 %in% gapminder$year) {
  print("gapminder has data from 2012, Yay!")
} else {
  print ("no data from 2012, sad!")
}

# FOR LOOP (basic syntax)
#for (var in collection) {do something with variable}

for (i in 1:3) {
  print(gapminder[1:i,])
}

result <- c()
for (i in c(10, 25, 50)) {
  current_result <- mean(gapminder[1:i, "lifeExp"])
  result <- c(result, current_result)
}

new_result <- list()
for (i in 1:3) {
  for (j in c('a', 'b', 'c', 'd')) {
    current_name <- paste(i, j)
    new_result[current_name] <- rnorm(1)
  }
}

# LOOP THROUGH GAPMINDER DATA, BY CONTINENT, PRINT WHETHER MEAN lifeExp < OR > 50
mean()
unique()

for (current_continent in unique(gapminder$continent)) {
 data_subset <- gapminder[ gapminder$continent == current_continent , "lifeExp"]
 mean_life_exp <- mean(data_subset)
 if (mean_life_exp < 50) {
      adjective <- "less than"
      } else if (mean_life_exp > 50) {
        adjective <- "greater than"
        } else {
          adjective <- "equal to"         
}
print(paste("Mean life expectancy in", current_continent, "is", adjective, "50."))
}

#Writng our own functions
fahr_to_kelvin <- function( ____Arguments go here_____) {
  # main content of the function here
}

#Writng our own functions
fahr_to_kelvin <- function( fahr_temperature) {
  # main content of the function here
  kelvin_temperature <- (fahr_temperature - 32) * 5/9 + 273.15
  return(kelvin_temperature)
}

# k to C : substract 273.15
kelvin_to_celsius <- function( kelvin_temp) {
  celsius_temp <- (kelvin_temp - 273.15)
  # with or without parenthesis works fine
  return (celsius_temp)
}


kelvin_to_celsius( fahr_to_kelvin(32) )

# calculate for many temperatures

fahr_to_kelvin(1:10)

# THIS WON'T WORK! OUR FUNCTION  ONLY TAKES 1 ARGUMENT, BUT WE'RE PASSING 3
fahr_to_kelvin(20, 30, 40)

#THIS WILL WORK! WE PASS IN "ONE" ARGUMENT (A VECTOR OF NUMBERS)
#should put teh discrete numbers in a vector!
fahr_to_kelvin(c (20, 30, 40))

calc_gdp <- function( dataframe ) {
  gdp <- dataframe$pop * dataframe$gdpPercap
  return(gdp)
}

all_the_gdps <- calc_gdp(gapminder)
cbind(gapminder, all_the_gdps)

######
# DPLYR
#############
library(dplyr)

install.packages("dplyr")


##### gapminder %>% calc_gdp() like calc_gdp(gapminder)
#### pipe inserts its left-side argumentt (arg.) as the function on its right

gapminder %>% calc_gdp()

gapminder %>% 
  group_by(continent) %>% 
  mutate(GDP = gdpPercap * pop) ->
  gapminder_plus


gapminder_plus %>%
  group_by(continent) %>% 
  summarise( meanGDP = mean(GDP) )

gapminder %>% 
  mutate(GDP = gdpPercap * pop) ->
  gapminder_plus

gapminder_plus %>%
  group_by(continent) %>% 
  summarise( mean(GDP)

gapminder_plus %>%
  select(country, lifeExp) %>%
 head()


gapminder_plus %>%
  filter( year == 2002, continent =="Europe", lifeExp > 78) %>%
  head()

###check group size

gapminder_plus %>%
  group_by(continent) %>%
  count()

### take a random sample from each group
gapminder_plus %>%
  group_by(continent) %>%
  sample_n(2000, replace =TRUE) %>%
  count() ->
  count_of_samples_per_group

#### add a column to gapminder_plus, where it contains the average gdp for that continent in that year

gapminder_plus %>%
  group_by(continent, year) %>%
  mutate (meanGDPofContinentThisYear = mean(GDP)) %>%
  head()

gapminder_plus %>%
  group_by(continent, year) %>%
  mutate (meanGDPofContinentThisYear = mean(GDP)) %>%
  filter (year ==1957, continent =="Americas")

gapminder_plus %>%
  group_by(continent, year) %>%
  mutate (meanGDPofContinentThisYear = mean(GDP)) ->
  gapminder_plus

gapminder_plus %>%
  select( -continent, -lifeExp, -gdpPercap)

### DPLYR PIPELINES WITH GGPLOT!!!!! OMG SO AWESOME!!!

gapminder_plus %>% 
  filter(gdpPercap < 0.5 * mean(gdpPercap)) %>%
  ggplot(mapping=aes(x=year , y=lifeExp, by=country, color=continent)) +
  geom_line()














  