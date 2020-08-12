library(ggplot2)
bootstrap.files <- list.files("bootstrap-results", full.names = TRUE)
## use lapply if you saved something other than a single number in each run
results <- sapply(bootstrap.files, readRDS)
hist(results)

ggplot.df <- data.frame(index = 1:length(results), mean = results)
ggplot.hist <-
  ggplot(ggplot.df, aes(mean)) +
  geom_histogram()
ggsave(filename = "bootstrap-histogram-ggplot.pdf",
       plot = ggplot.hist)