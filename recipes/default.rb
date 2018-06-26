#
# Cookbook:: chef_mongo_db_redhat
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.
#
template '/etc/yum.repos.d/mongodb-org-3.6.repo' do
  source 'mongodb.repo.erb'
end

package 'mongodb-org'

service 'mongod' do
  supports :status => true, :restart => true, :reload => true
  action [:enable, :start]
end


