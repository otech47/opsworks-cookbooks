file '~/.ssh/go-romeo.pem' do  
  mode '0400'
  content '...'
end

git '/opt/app' do  
  repository 'https://github.com/otech47/goromeo'
  revision 'production'
end
