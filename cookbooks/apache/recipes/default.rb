#
# Cookbook:: apache
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.
#installing apache and starting the service 

if node['platform_family'] == "rhel"
        package = "httpd"
elseif node['platform_family'] == "debain"
        package = "apache2"
end

package 'apache2' do
   package_name package
       action :install
end

service 'apache2' do
  service_name 'httpd'
   action [:start, :enable]
end

