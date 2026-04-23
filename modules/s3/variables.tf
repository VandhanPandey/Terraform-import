variable "bucket_name"{
    description= "Name of S3 Bucket"
    type = string
}

variable "enable_versioning"{
    description = "Enable Versioning"
    type= bool
    default = true
}

variable "tags"{
    description = "Bucket Tags"
    type= map(string)
    default = {}
}