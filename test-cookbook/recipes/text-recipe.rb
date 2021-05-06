#
# Cookbook:: test-cookbook
# Recipe:: text-recipe
#
# Copyright:: 2021, The Authors, All Rights Reserved.
file '/myfile' do
 content "welcome sourabh" 
 action :create
end


# run linux command in ruby using EOH
execute "reun a script" do
  command <<-EOH
  mkdir /sourabh_dir
  touch /sourabh_file
  EOH
end



#create user in linux 

user "sourabh" do 
  action :create 
end

#create group in linux 
#
group "sourabhdevops" do 
  action :create 
  members 'sourabh'
  append true
end
