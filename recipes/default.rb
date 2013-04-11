#
# Author:: Dario Blanco (<dario@darioblanco.com>)
# Cookbook Name:: gaffer
# Recipe:: default
#
# Copyright 2013, Dario Blanco
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

include_recipe 'python'

unless node["gaffer"]["virtualenv"].nil?
  python_virtualenv node["gaffer"]["virtualenv"] do
    action :create
  end
end

# Force install pyuv 0.8.3 version directly from the link for avoiding pip autoupdates
python_pip "https://pypi.python.org/packages/source/p/pyuv/pyuv-0.8.3.tar.gz" do
  virtualenv node["gaffer"]["virtualenv"] unless node["gaffer"]["virtualenv"].nil?
  action :install
end

# Install gaffer 0.4.4 (python >= 2.7)
# Don't install dependencies for avoiding package upgrades that break the application
python_pip "gaffer" do
  virtualenv node["gaffer"]["virtualenv"] unless node["gaffer"]["virtualenv"].nil?
  version "0.4.4"
  action :install
  options "--no-deps"
end

# Set global configuration file
template node["gaffer"]["config_path"] do
  source "gaffer.ini.erb"
  mode 0644
end
