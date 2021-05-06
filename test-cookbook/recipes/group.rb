#
# Cookbook:: test-cookbook
# Recipe:: group
#
# Copyright:: 2021, The Authors, All Rights Reserved.
#
#

user "purohit" do 
  action :create 
end


group "purohitgroup" do
  action :create 
  members 'purohit'
  append true
end
