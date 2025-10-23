variable  "instances" {
    description = "Type of instance to use"
    default     = {
        mongodb = "t3.micro"
         redis = "t3.micro"
          mysql = "t3.small"
    }
}

variable "zone_id" {
    default     = "Z055617327RIDWXQAKMR0"
  
}

variable "domain_name" {
    default = "sandeepch.space" 
  
}