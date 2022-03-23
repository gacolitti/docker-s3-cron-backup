
library(aws.s3)

readRenviron(".env")

bucketlist()

b <- get_bucket(bucket = "gs-backup")

f <- ""
save_object(f, bucket = "gs-backup", file = f, overwrite = TRUE)
