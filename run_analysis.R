library(reshape2)

#download and unzip the database if it's not there yet
filename <- "dataset.zip"
fileURL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
if(!file.exists("UCI HAR Dataset")){
    download.file(fileURL,filename)
    unzip(filename)
    }

# read activity labels
activity_labels <- read.table("UCI HAR Dataset/activity_labels.txt", stringsAsFactors=FALSE)

# Get wanted feature and clean names
feature <- grep("mean|std",read.table("UCI HAR Dataset/features.txt")[,2])
features.name <- as.character(read.table("UCI HAR Dataset/features.txt")[feature,2])
features.name <- gsub("std","SD",features.name)
features.name <- gsub("mean","Mean",features.name)
features.name <- gsub("[()]","",features.name)

# Read in the training set
all_data <- 
    rbind(
        cbind(
            read.table("UCI HAR Dataset/train/subject_train.txt",stringsAsFactors=FALSE),
            read.table("UCI HAR Dataset/train/y_train.txt",stringsAsFactors=FALSE),
            read.table("UCI HAR Dataset/train/X_train.txt",stringsAsFactors=FALSE)[,feature]
        ),
        cbind(
            read.table("UCI HAR Dataset/test/subject_test.txt",stringsAsFactors=FALSE),
            read.table("UCI HAR Dataset/test/y_test.txt",stringsAsFactors=FALSE),
            read.table("UCI HAR Dataset/test/X_test.txt",stringsAsFactors=FALSE)[,feature]
        )
    )
    
# Change the variable names
names(all_data) <- c("Subject","Activity",features.name)

# Change the activity data to descriptive ones
all_data$Subject <- factor(all_data$Subject)
all_data$Activity <- factor(all_data$Activity,levels = activity_labels[,1],labels = activity_labels[,2])

# melt and cast to output the final tidy data

mdata <- melt(all_data,id = c("Subject","Activity"))
tidy_data <- dcast(mdata,Subject + Activity ~ variable, mean)

write.table(tidy_data,"tidy_data.txt",row.names = FALSE, quote = FALSE)
