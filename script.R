library(data.table)
ip <- as.data.table(installed.packages())
ip[Priority == "base", Package]
ip[Priority != "base", Package]
ip[is.na(Priority), Package]
ip[, .N, by = c("LibPath", "Priority")]

##
