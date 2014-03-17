gdURL  <- "http://tiny.cc/gapminder"
gDat  <- read.delim(gdURL)
gDat <- read.delim("gapminderDataFiveYear.txt")

#useful for checking data structure
str(gDat) # object type, # observations, # of variables
head(gDat)
tail(gDat)
names(gDat) #field names
dim() # extent of something
nrow #how many rows
ncol #how many columns
head(rownames(gDat))
length(gDat) # returns 6, because there are 6 objects glued together in a list
summary(gDat)

#exploring variables  in data set
summary(gDat$lifeExp)
hist(gDat$lifeExp)
levels(gDat$country)
nlevels(gDat$country) #how many there are

subset(gDat, subset = country =="Cambodia")
#robust and readable code
subset(gDat, subset = country %in% c("Cambodia", "Afghanistan"))
subset(gDat, subset = year == 1952, select = c(year, country))
#within subset fxn, subset argument pulls desired row value, select pulls desired countires

## get data with for which life expectancy less than 32 years
## assign to object
## how many rows? how many observations per continent?
lessthan32  <- subset(gDat, subset = lifeExp <32)
dim(lessthan32)
lessthan32
summary(lessthan32$continent)

# graphics good check of data
plot(lifeExp ~ year, gDat, subset = country == "Rwanda")
lm(lifeExp ~ year, gDat, subset = country == "Rwanda")

mean(gDat$lifeExp)

#fix
with(subset, gDat, country=="Cambodia"), cor(lifeExp, gdpPercapp)

x  <- 3*4
is.vector(x)
length(x)
x[1]
x[2]
x[0]
x[5] <- 10
x
x^2

# vectors appear in strange places
round(rnorm(3, mean = c(0, 100, 10000)), 2)
