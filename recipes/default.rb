#
# Cookbook:: chef_mongo_db_redhat
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.
#

# resource template mongodb.repo used to configure mongodb yum repository
template '/etc/yum.repos.d/mongodb-org-3.6.repo' do
  source 'mongodb.repo.erb'
end

# resource package mongodb-org used to install mongodb service
package 'mongodb-org'

# resource service mongod used to enable and start the service
service 'mongod' do
  supports :status => true, :restart => true, :reload => true
  action [:enable, :start]
end


