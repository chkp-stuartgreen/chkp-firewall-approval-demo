provider "checkpoint" {
  server   = var.smart1_server
  api_key = var.smart1_api_key
  context  = "web_api"
  cloud_mgmt_id = var.smart1_cloud_id
  session_name = "Main policy changes - protected"
  auto_publish_batch_size = 1
}

resource "checkpoint_management_access_rule" "rule1-subnet_a_to_b_icmp" {
  name = "Protected SubnetA-B ping"
  comments = "Protected change"
  
  # Limitedscopelayer1 is a layer that is delgated to a business
  # unit or team.

  # Network is the main policy which requires different permissions
  # and pushes to a protected branch.

  #layer = "LimitedScopeLayer1"
  layer = "Network"
  position = {top = "top"}
  source = ["Any"] 
  service = ["icmp-requests"]
  destination = ["Any"]
  track = {
    type = "Log"
  }
  action = "Accept"
}
