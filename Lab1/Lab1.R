x <- c(0, 1.2, 8/5) # vector - > (1,0.5,1.6)
y <- 1:10 #[1,2,3......10]
z <- rep(10, times = 2) # [10,10]

a <- sample(c(2,5,3), size=4, replace = TRUE) #when size > sizeof(vector), pgnhole

a <- 4
length(y)

a <- 1:4
b <- 123:126
c <- 12:14
d <- 98:101 #both limits included 


d[1 : 3] <- c


a[1:3]<- a[1:3]*c  #take the first three elements of a and multiply it with c(size of 3)

mat <- matrix(1:12, nrow = 3, ncol = 4)
mat

mat <- rbind(mat, c(1,2,3,4)) #append rows 
mat <- cbind(mat, c(1,2,3,4)) #append columns
mat

a <- matrix(1:4, nrow = 2, ncol = 2)
b <- matrix(1:4, nrow = 2, ncol = 2)


data("mtcars") 
summary(mtcars)
hist(mtcars$hp)
#plotting histograms
hist(mtcars$mpg, breaks=10, xlab = "Miles per gallon", main =
       "Historgram of Miles per gallon of cars", xlim = range(10:35
       ))

plot(mtcars$mpg ~ as.factor(mtcars$am), mtcars, xlab = "Trans
mission type", ylab="Miles per gallon", main="Histogram of MP
     G by transmission type")




for(i in 1:4){
  sum_row <- 0
  sum_col <- 0 
for(j in mat[i,]){
  sum_row <- sum_row + j
}
for(j in mat[,i]){
  sum_col <- sum_col + j
}
if(sum_col!=sum_row) print(i)
}



#will print the summary of data but prior to that one needs to import the csv
summary(IRIS)

#install packages from tools- > install packages
library(ggplot2)

#histogram 
hist(IRIS$sepal_length,col = "skyblue", xlab = "Sepal Lenght", main = 
       "Histogram of Sepal Length of Iris Data")

hist(IRIS$species)

#pie chart
pie(table(IRIS$species), main = "Pie Chart of the Iris data set Species", 
    col = c("red", "blue", "green"), radius = 1)

#scatterplot
g <- ggplot(IRIS, aes(x = sepal_length, y = petal_length))
g <- g + geom_point(aes(shape = factor(IRIS$species), colour = factor(IRIS$species)))
g

iris <- IRIS

#density plots for each specific feature
DhistPl <-    ggplot(IRIS, aes(x=petal_length, colour=species, fill=species)) +
  geom_density(alpha=.3) +
  geom_vline(aes(xintercept=mean(petal_length),  colour=species),linetype="dashed",color="grey", size=1)+
  xlab("Petal Length (cm)") +  
  ylab("Density")+
  theme(legend.position="none")
DhistPl

DhistPw <- ggplot(IRIS, aes(x=petal_width, colour=species, fill=species)) +
  geom_density(alpha=.3) +
  geom_vline(aes(xintercept=mean(petal_width),  colour=species),linetype="dashed",color="grey", size=1)+
  xlab("Petal Width (cm)") +  
  ylab("Density")
DhistPw


DhistSw <- ggplot(IRIS, aes(x=sepal_width, colour=species, fill=species)) +
  geom_density(alpha=.3) +
  geom_vline(aes(xintercept=mean(sepal_width),  colour=species), linetype="dashed",color="grey", size=1)+
  xlab("Sepal Width (cm)") +  
  ylab("Density")+
  theme(legend.position="none")


DhistSl <- ggplot(IRIS, aes(x=sepal_length, colour=species, fill=species)) +
  geom_density(alpha=.3) +
  geom_vline(aes(xintercept=mean(sepal_length),  colour=species),linetype="dashed", color="grey", size=1)+
  xlab("Sepal Length (cm)") +  
  ylab("Density")+
  theme(legend.position="none")

library(gridExtra)
# Plot all density visualizations

summary(IRIS)
