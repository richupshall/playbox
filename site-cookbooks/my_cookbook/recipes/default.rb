#
# Cookbook Name:: my_cookbook
# Recipe:: default
#
# Copyright (c) 2015 The Authors, All Rights Reserved.

chef_gem 'ipaddress'
require 'ipaddress'
ip = "192.168.0.1/24"
mask = IPAddress.netmask(ip)

capistrano_deploy_dirs do
  deploy_to "/srv"
end