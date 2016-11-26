node.default['nodejs']['install_method'] = 'binary'  
node.default['nodejs']['version'] = '5.10.0'  
node.default['nodejs']['binary']['checksum']['linux_x64'] = '...'

include_recipe 'nodejs'
