execute 'npm prune' do  
  cwd '/opt/app'
end

execute 'npm install' do  
  cwd '/opt/app'
end
