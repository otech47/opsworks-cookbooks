description "Upstart Job for the App service"

start on (local-filesystems and net-device-up IFACE!=lo)  
stop on shutdown

setuid root  
chdir /opt/app

env NODE_ENV=production  
env PORT=8080

respawn

exec npm start

template '/etc/init/app.conf' do  
  notifies :stop, 'service[app]', :delayed
  notifies :start, 'service[app]', :delayed
end

service 'app' do  
  provider Chef::Provider::Service::Upstart
  action :start
  subscibes :restart, 'git[/opt/app]', :delayed
  subscibes :restart, 'execute[npm prune]', :delayed
  subscibes :restart, 'execute[npm install]', :delayed
end
