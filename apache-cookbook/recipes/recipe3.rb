#
# Cookbook:: apache-cookbook
# Recipe:: recipe3
#
# Copyright:: 2021, The Authors, All Rights Reserved.
#
#
package "httpd" do
  action :install
end

file '/var/www/html/index.html' do
  content "congrats..!!! for chef"
  action :create
end


service 'httpd' do
  action [:enable, :start]
end


file '/basicinfo' do
  content "this is helo
     HOSTNAME: #{node['hostname']}
    IPADDRESS: #{node['ipaddress']}
          CPU: #{node['cpu']['0']['mhz']}
       MEMORY: #{node['memory']['total']}
    PUB_ADDRS: #{node['cloud']['public_ipv4_addrs']}" 
  action :create
end
