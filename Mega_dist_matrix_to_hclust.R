
address <- "address to your distance matrix from MegaX"
file_name <- 'file_name.csv'

address_file_name <- paste(address, file_name, sep = '')
dist_mat <- read.csv(address_file_name)

names <- dist_mat[,1]
dist_mat_2 <- dist_mat[, 2:ncol(dist_mat)]
colnames(dist_mat_2) <- names
rownames(dist_mat_2) <- names

dist_m <- data.matrix(dist_mat_2)

hclust_input <- as.dist(dist_m, diag = FALSE, upper = FALSE)
plot(hclust(hclust_input))
