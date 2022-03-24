
library(aws.s3)

readRenviron(".env")

b <- get_bucket(bucket = "gs-backup")

all(unlist(lapply(b, function(x) delete_object(bucket = "gs-backup", x))))
