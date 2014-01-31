#
# Cookbook Name:: awscli
# Recipe:: default
#
# Copyright 2013, EJ Bensing
#
# All rights reserved - FreeBSD license, blah blah
#

# make sure python and pip are installed
include_recipe "python"

#add the awscli
python_pip "awscli"


# create document root
directory '/home/ubuntu/.aws/' do
  action :create
  recursive true
end

template '/home/ubuntu/.aws/config' do
  source 'aws-config.erb'
end

bash "some_commands" do
    user "root"
    cwd "/tmp"
    code <<-EOT
       echo "complete -C aws_completer aws" >> /home/ubuntu/.bashrc
    EOT
end