#
# Cookbook Name:: ryan
# Recipe:: default
#
# Copyright 2015, Ryan Moore
#

package "tree"

# some other configs
cookbook_file ".bashrc" do
  path "/home/vagrant/.bashrc"
  action :create
  mode "0644"
end

cookbook_file ".bash_aliases" do
  path "/home/vagrant/.bash_aliases"
  action :create
  mode "0644"
end

cookbook_file ".profile" do
  path "/home/vagrant/.profile"
  action :create
  mode "0644"
end

execute "mkdir -p /home/vagrant/scripts"

cookbook_file "tests" do
  path "/home/vagrant/scripts/tests"
  action :create
  mode "0755"
end

execute ". /home/vagrant/.profile"
