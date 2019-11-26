# List of top universities with key metrics
harvard <- c(1,1,1,1,3)
stanford <- c(2,9,3,4,10)
MIT <- c(3,3,2,2,1)
cambridge <- c(4,2,6,13,48)
oxford <- c(5,7,12,9,15)
columbia <- c(6,13,13,12,4)
#Combining the vectors as a matrix named uni_matrix using rbind() function
uni_matrix <- rbind(harvard, stanford, MIT, cambridge, oxford, columbia)
print(uni_matrix)
#creating a new vector named categories which will be assigned as the header for the uni_matrix using colnames() function
categories <- c("world_rank", "quality_of_education", "influence", "broad_impact" ,"patents")
colnames(uni_matrix) <- c(categories)
print(uni_matrix)
#creating a new vector to add the tution fees to the uni_matrix matrix
tution <- c(43280, 45000, 45016, 49350, 28450, 55161)
# Using dim() function to determine the rows and columns are matching
dim(uni_matrix)
dim(uni_matrix)[1] == length(tution)
# Combining uni_matrix and tution fees as complete_matrix matrix
complete_matrix <- cbind(uni_matrix, tution)
print(complete_matrix)
# Indexing matrix by name attributes
oxford_influence <- complete_matrix["oxford","influence"]
cam_stan_patents <- complete_matrix[c("cambridge","stanford"), "patents"]
print(oxford_influence)
print(cam_stan_patents)
oxford_rank <- complete_matrix["oxford",1] #To get the rank of oxford
print(oxford_rank)
influence <- complete_matrix[,"influence"] #To get the influence of all the universities
print(influence)
harv_mit_rank <- complete_matrix[c("harvard","MIT"),c(1)] #To get the rank of harvard and MIT
print(harv_mit_rank)
influence_patents <- complete_matrix[,c("influence","patents")]
print(influence_patents)
# Ranking universities using each category using rank() function
world_rank_rank <- rank(complete_matrix[,"world_rank"])
print(world_rank_rank)
quality_of_education_rank <- rank(complete_matrix[,"quality_of_education"])
print(quality_of_education_rank)
influence_rank <- rank(complete_matrix[,"influence"])
print(influence_rank)
broad_impact_rank <- rank(complete_matrix[,"broad_impact"])
print(broad_impact_rank)
#Combining all the rank vectors to a matrix named ranks_matrix
ranks_matrix <- rbind(world_rank_rank, quality_of_education_rank, influence_rank, broad_impact_rank)
#Calculating sum of ranks for each college
sum(ranks_matrix[,"harvard"])
sum(ranks_matrix[,"stanford"])
sum(ranks_matrix[,"MIT"])
sum(ranks_matrix[,"cambridge"])
sum(ranks_matrix[,"oxford"])
sum(ranks_matrix[,"columbia"])