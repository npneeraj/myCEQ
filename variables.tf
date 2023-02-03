variable "var_fname" {
    type = string
    description = "Enter a file name"
    default = "MyFiles/file.txt"
  
}

variable "var_content" {
  type = string
  description = "Enter some content"
  default = "This is sample content"

}
# variables types examples: list,map,string,object,set 
variable "az_names" {
  type    = list(string)
  # default = ["us-west-1a"]
}
# use of object
variable "creds" {
    type = object({
        uname = string
        passwd = string
    })
    # sensitive = true
    
}

variable "user" {
    type = string
    description = "Enter Username:"
    default = "dev007"
    # sensitive = true
}

variable "project_name" {
  description = "Name of the project."
  type        = string
  default     = "my-project"
}

variable "environment" {
  description = "Name of the environment."
  type        = string
  default     = "dev"
}


