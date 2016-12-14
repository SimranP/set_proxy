#
# Cookbook Name:: set_proxy
# Recipe:: windows_node
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

env 'http_proxy' do
  value 'http://192.168.100.2:8080'
end

env 'https_proxy' do
  value 'https://192.168.100.2:8080'
end