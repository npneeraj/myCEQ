
resource "local_file" "first" {
  filename = var.var_fname
  content  = " first file created by terraform"

}

resource "local_file" "logs" {
    filename = "MyFiles/log.txt"
    content = "${local.configs.project} is created by ${local.user} & ${local.configs.env} environment initialized"
  
}
resource "local_file" "user_creds" {
  filename = "MyFiles/user_credentials.txt"
  content = "User : ${var.creds["uname"]} \n Passwd : ${var.creds["passwd"]}"
  #var.cred[]
  
}
# use of locals and random resources
resource "local_file" "foo" {
  content  = local.content_fr_files
  filename = "MyFiles/${random_id.random-fname.hex}.txt"

}

resource "local_file" "second" {
  filename = "az_list.txt"
  content = var.az_names[0]
  
}

resource "random_id" "random-fname" {
    byte_length = 8

}
# local variables
locals{
    content_fr_files = "Placeholder text"
    user = var.user
    configs = {
        project = var.project_name
        env = var.environment
    }
}