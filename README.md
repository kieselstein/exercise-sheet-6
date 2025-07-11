A collection of simple functions to automatically calculate and enrich mean, standard deviation and percentiles in a data set.

Installation:
remotes::install_github("kieselstein/exercise-sheet-6")

Example in R:

# example dataset 
cars <- mtcars

# calculate mean and standard deviation
res_mean_sd <- calc_mean_sd(cars$mpg)
print(res_mean_sd)

# calculate percentile
res_add_percentile <- add_percentile(cars, "mpg")
head(res_add_percentile)
