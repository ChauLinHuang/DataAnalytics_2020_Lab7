# Iris_pca.R
# 
# Charly Huang
# Nov 3, 2020

rm(list = ls())

data('iris')

head(iris)

# Create another dataset from iris dataset that contains the columns from 1 to 4
irisdata1 <- iris[,1:4]
irisdata1

help('princomp')
principal_components <- princomp(irisdata1, cor = TRUE, score = TRUE)
# cor = a logical value indicating whether the calculation should 
#use the correlation matrix or the covariance matrix.
# (The correlation matrix can only be used if there are no constant variables.)
# score = a logical value indicating whether the score on  
# each principal component should be calculated.

summary(principal_components)

# using the plot() function, we can plot the principal components
plot(principal_components)

# plotting the principal_components using a line in plot() functions
plot(principal_components, type = 'l')

# using the biplot() function we can plot the components
help('biplot')

biplot(principal_components)

