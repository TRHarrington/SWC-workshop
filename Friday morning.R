#Conditional statements#

number <- 37
if (number > 100){# if condition is true
  print ("greater than 100")#perform this function
else                       # if condition is false
  print("less than 100")    # perform alternative action
}
print("finished checking")

#comparison operators:

# greater than >
# less than <
# equal to ==
# not equal to !=
# greater than or equal to >=
# less than or equal to <=

#more than one test

#combine tests



# "or"

if(number1 >= 0 | number2 >= 0){
  print("at least one number is positive")
} else ("both numbers are negative")


#creating and using functions

fahr_to_kelvin <- function(temp){
  kelvin <- ((temp -32) * 5 /9) + 273.15
  return(kelvin)
}

fahr_to_kelvin(32) #freezing point of waTER
fahr_to_kelvin(212)


#Something missing

kelvin_to_celsius(0)

# mixing and match

fahr_to_celsius <- function(temp){
  temp_k <- fahr_to_kelvin(temp)
  temp_c <- kelvin_to_celsius(temp_k)
  return(temp_c)
}
  
  
fahr_to_celsius(0)

celsius_to_fahrenheit(100)


#making reporducible graphics

library(ggplot2)

gap<- read.csv(file = "data/gapminder-FiveYearData.csv")
str(gap)

plot(x = gap$gdpPercap, y = gap$lifeExp) 

# ggplot image

ggplot(data = gap, aes(x = gdpPercap, y = lifeExp)) +
  geom_point()


ggplot(data = gap, aes(x = year, y = lifeExp)) +
  geom_point()

head(gap)

ggplot(data = gap, aes(x = year, y  = lifeExp, by = country))+
  geom_line(aes(color = continent))+
  geom_point(color = "blue")

ggplot(data = gap, aes(x = gdpPercap, y = lifeExp)) +
  scale_x_log10()+
  geom_point(alpha = 0.5)+
  geom_smooth(method = "lm")+
  theme_bw()+
  ggtitle("effects of per capita GDP on life expectancy")+
  xlab("GDP per capita ($)")+
  ylab("Life Expectancy (Yrs)")


ggsave(file = "results/life expectancy.png")

?ggsave

#faceting

ggplot(data = gap, aes(x = gdpPercap, y = lifeExp, color = continent))+
  geom_point()+
  scale_x_log10()+
  geom_smooth(method = "lm")+
  facet_wrap(~year)