#
# Author:: Dario Blanco (<dario@darioblanco.com>)
# Cookbook Name:: gaffer
# Attribute:: default
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

default["gaffer"]["virtualenv"] = nil

default["gaffer"]["config_path"] = "/etc/gaffer.ini"

default["gaffer"]["host"] = "127.0.0.1"
default["gaffer"]["port"] = 5000

default["gaffer"]["webhook"] = nil