current_dir = ::File.dirname(__FILE__)
log_level                :info
log_location             $stdout
validation_client_name   "chef-validator"
validation_key           ::File.join(current_dir, "chef-validator.pem")
chef_server_url          "https://chefautomate-psconfasia.eastasia.cloudapp.azure.com/organizations/chef"
