Description
===========

Installs and configures Gaffer 0.4.4 (via pip), a set of Python modules and tools to easily maintain and interact with your applications or jobs launched on different machines over HTTP and websockets. By default Gaffer is installed system-wide, but you can target a particular `virtualenv`.

Requirements
============

Platform
--------

* Debian, Ubuntu

Cookbooks
---------

* python

Attributes
==========

* `node["gaffer"]["virtualenv"]` - the virtualenv you want to target Gaffer installation into.  The virtualenv will be created if it doesn't exist.
* `node["gaffer"]["config_path"]` - absolute path in which the gaffer global config file is going to be stored
* `node["gaffer"]["host"]` - default HTTP host binding
* `node["gaffer"]["port"]` - default HTTP port binding
* `node["gaffer"]["webhook"]` - registers the url to a specific event (example: "http://echohttp.com/echo you")

Usage
=====

Simply include the recipe where you want Gaffer installed.

License and Author
==================

Author:: Dario Blanco (<dario@darioblanco.com>)

Copyright:: 2013, Dario Blanco

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
