
library(aws.s3)

readRenviron(".env")

#bucketlist()

b <- get_bucket(bucket = "gs-backup")


obj <- get_object("docker-volumes-backup-2022-03-23_19-49-00.tar.gz", "gs-backup", file = "test.tar.gz")
obj2 <- get_object("docker-volumes-backup-2022-03-23_18-29-00.tar.gz", "gs-backup")

f <- "docker-volumes-backup-2022-03-23_20-38-00.tar.gz"
save_object(f, "gs-backup", file = f, overwrite = TRUE)

