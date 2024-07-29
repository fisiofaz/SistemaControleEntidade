# RDS encryption configuration
aws rds modify-db-instance --db-instance-identifier mydbinstance --storage-encrypted --kms-key-id my-kms-key-id
