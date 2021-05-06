#
# Cookbook:: test-cookbook
# Recipe:: recipe2
#
# Copyright:: 2021, The Authors, All Rights Reserved.
#
file '/myfile2' do
  content "this is my second project"
  action :create
  owner "root"
  group "root"
end

