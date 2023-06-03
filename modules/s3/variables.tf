variable "bucket_name" {
  description = "Name of the S3 bucket"
  type        = string
}

variable "kms_master_key_id" {
  description = "ID of the KMS customer master key (CMK) to use for S3 bucket encryption"
  type        = string
}
