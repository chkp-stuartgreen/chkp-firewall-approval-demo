provider "checkpoint" {
  server   = var.smart1_server
  api_key = var.smart1_api_key
  context  = "web_api"
  cloud_mgmt_id = var.smart1_cloud_id
  session_name = "Terraform Session"
  auto_publish_batch_size = 1
}

# resource "checkpoint_management_access_rule" "rule1-subnet_a_to_b_icmp" {
#   name = "SubnetA-B ping"
#   comments = "Demo change"
#   layer = "LimitedScopeLayer1"
#   #layer = "Network"
#   position = {top = "top"}
#   source = ["Any"] 
#   service = ["icmp-requests"]
#   destination = ["Any"]
#   track = {
#     type = "Log"
#   }
#   action = "Accept"
# }
