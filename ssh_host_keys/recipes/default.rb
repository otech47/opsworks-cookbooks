p "ssh_host_rsa_key_private"
p node['ssh_host_rsa_key_private']
p "ssh_host_rsa_key_public"
p node['ssh_host_rsa_key_public']
p "ssh_host_dsa_key_private"
p node['ssh_host_dsa_key_private']
p "ssh_host_dsa_key_public"
p node['ssh_host_dsa_key_public']
write_host_key(:path => '/etc/ssh/ssh_host_rsa_key', :content => node['ssh_host_rsa_key_private'], :mode => 0600)
write_host_key(:path => '/etc/ssh/ssh_host_rsa_key.pub', :content => node['ssh_host_rsa_key_public'], :mode => 0644)
write_host_key(:path => '/etc/ssh/ssh_host_dsa_key', :content => node['ssh_host_dsa_key_private'], :mode => 0600)
write_host_key(:path => '/etc/ssh/ssh_host_dsa_key.pub', :content => node['ssh_host_dsa_key_public'], :mode => 0644)
