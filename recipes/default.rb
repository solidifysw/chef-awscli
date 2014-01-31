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
directory '/home/vagrant/.aws/' do
  action :create
  recursive true
end

template '/home/vagrant/.aws/config' do
  source 'aws-config.erb'
end
