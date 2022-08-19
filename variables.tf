variable "vpc_cidr" {
  description = "Choose cidr for vpc"
  type        = string
  default     = "30.10.0.0/16"
}

variable "region" {
  description = "Choose region for your stack"
  type        = string
  default     = "ca-central-1"
}
variable "web_amis" {
  description = "Choose region for your stack"
  type        = map
  default     = {
    ca-central-1 = "ami-0dd8276827d127769"
    
  }
}

variable "db01_amis" {
  description = "Choose region for your stack"
  type        = map
  default     = {
    ca-central-1 = "ami-0f78d6d92f689926a"
    
  }
}
variable "mc01_amis" {
  description = "Choose region for your stack"
  type        = map
  default     = {
    ca-central-1 = "ami-0ecedc437a2d194e5"
    
  }
}
variable "rqm01_amis" {
  description = "Choose region for your stack"
  type        = map
  default     = {
    ca-central-1 = "ami-0f78d6d92f689926a"
    
  }
}
variable "app01_amis" {
  description = "Choose region for your stack"
  type        = map
  default     = {
    ca-central-1 = "ami-0f78d6d92f689926a"
    
  }
}

variable "web_ec2_count" {
  description = "Choose number of ec2 instance 1 for web"
  type        = string
  default     = "1"
    
}
variable "web_tags" {
  type = list(string)
  default = [
    "web_amis",
    "app01_amis",
    "rqm01_amis",
    "mc01_amis",
    "db01_amis"
    ]


  }


variable "web_instance_type" {
  description = "Choose instance type for your web"
  type        = string
  default     = "t2.micro"
}

