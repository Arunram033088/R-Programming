> harvard <- c(1,1,1,1,3)
> stanford <- c(2,9,3,4,10)
> MIT <- c(3,3,2,2,1)
> cambridge <- c(4,2,6,13,48)
> oxford <- c(5,7,12,9,15)
> columbia <- c(6,13,13,12,4)
> uni_matrix <- rbind (harvard, stanford, MIT, cambridge, oxford, columbia)
> uni_matrix #created a matrix which contains values of universities
> categories <- c("world_rank", "quality_of_education", "influence", "broad_impact" ,"patents")
> colnames(uni_matrix) <- categories
> uni_matrix # added column names for all the values
> tution  <- c(43280, 45000, 45016, 49350, 28450, 55161) # created new vector to add to the matrix
> dim(uni_matrix) #to check the dimension of the matrix
> dim(uni_matrix)[1] == length(tution) #to check the length of the new to be added column with the first row of the matrix
> complete_matrix <- cbind(uni_matrix, tution)
> complete_matrix # added new column tution and created a new matrix
> # added a new column named tution to the matrix
> trial <- complete_matrix[c(1,3,5),6]
> trial <- complete_matrix[c(1,3,5),c(5,6)] #to index a particular row and column from the matrix
> rank_influence <- complete_matrix[c("harvard", "MIT", "columbia"),c("world_rank", "influence")]
> rank_influence #indexed rank and infulence of 3 universities
> complete_matrix["MIT",] #to index a complete row
> complete_matrix[,"patents"] #to index a complete column
> world_rank_rank <- rank(complete_matrix[,"world_rank"])
> quality_of_education_rank <- rank(complete_matrix[,"quality_of_education"])
> influence_rank <- rank(complete_matrix[,"influence"])
> broad_impact_rank <- rank(complete_matrix[,"broad_impact"])
> patents_rank <- rank(complete_matrix[,"patents"])
> tution_rank <- rank(complete_matrix[,"tution"])
> # ranking all the universities in each of the values
> ranks_matrix <- rbind(world_rank_rank, quality_of_education_rank, influence_rank, broad_impact_rank, patents_rank, tution_rank)
> ranks_matrix > #combined the ranks of universities in to a sinlge matrix
> sum(ranks_matrix[,"harvard"])
> sum(ranks_matrix[,"stanford"])
> sum(ranks_matrix[,"MIT"])
> sum(ranks_matrix[,"cambridge"])
> sum(ranks_matrix[,"oxford"])
> sum(ranks_matrix[,"columbia"])
> #based on the results harvard ranks the number one university
