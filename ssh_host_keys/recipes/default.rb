
instance = search('aws_opsworks_instance').first
p "ssh_host_rsa_key_private"
p instance['ssh_host_rsa_key_private']
p "ssh_host_rsa_key_public"
p instance['ssh_host_rsa_key_public']
p "ssh_host_dsa_key_private"
p instance['ssh_host_dsa_key_private']
p "ssh_host_dsa_key_public"
p instance['ssh_host_dsa_key_public']
write_host_key(:path => '/etc/ssh/ssh_host_rsa_key', :content => instance['ssh_host_rsa_key_private'], :mode => 0600)
write_host_key(:path => '/etc/ssh/ssh_host_rsa_key.pub', :content => instance['ssh_host_rsa_key_public'], :mode => 0644)
write_host_key(:path => '/etc/ssh/ssh_host_dsa_key', :content => instance['ssh_host_dsa_key_private'], :mode => 0600)
write_host_key(:path => '/etc/ssh/ssh_host_dsa_key.pub', :content => instance['ssh_host_dsa_key_public'], :mode => 0644)
