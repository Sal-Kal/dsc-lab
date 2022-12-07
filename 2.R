data(iris)
str(iris)
# Installing Packages
install.packages("arules")
install.packages("arulesViz")

# Loading package
library(arules)
library(arulesViz)

# Fitting model
# Training Apriori on the dataset

associa_rules = apriori(data = iris,
                        parameter = list(support = 0.004,
                                         confidence = 0.2))

# Plot
itemFrequencyPlot(iris,topN=20,type="absolute")

# Visualising the results
inspect(sort(associa_rules, by = 'lift')[1:10])
plot(associa_rules, method = "graph",
     measure = "confidence", shading = "lift")

