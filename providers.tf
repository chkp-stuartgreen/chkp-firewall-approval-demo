terraform {
  required_providers {
    checkpoint = {
      source = "CheckPointSW/checkpoint"
      version = "2.7.0"
    }
  }
  backend "http" {
    address = "https://gitlab.com/api/v4/projects/57919820/terraform/state/$TF_STATE_NAME"
    lock_address = "https://gitlab.com/api/v4/projects/57919820/terraform/state/$TF_STATE_NAME/lock"
    unlock_address = "https://gitlab.com/api/v4/projects/57919820/terraform/state/$TF_STATE_NAME/lock"
    username= "chkp-stuartgreen"
    password = var.gitlab_access_token
    lock_method = "POST"
    unlock_method = "DELETE"
  }
}