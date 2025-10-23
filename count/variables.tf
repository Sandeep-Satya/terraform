variable  "instances" {
    description = "Type of instance to use"
    default     = [ "mongodb", "redis", "mysql" ]
}

variable "zone_id" {
    default     = "Z055617327RIDWXQAKMR0"
  
}

variable "domain_name" {
    default = "sandeepch.space" 
  
}