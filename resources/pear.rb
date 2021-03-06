#
# Author:: Seth Chisamore <schisamo@chef.io>
# Cookbook Name:: php
# Resource:: pear_package
#
# Copyright:: 2011-2015, Chef Software, Inc <legal@chef.io>
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

default_action :install
actions :install, :upgrade, :remove, :purge

state_attrs :channel,
            :directives,
            :options,
            :package_name,
            :preferred_state,
            :version,
            :zend_extensions

attribute :package_name, :kind_of => String, :name_attribute => true
attribute :version, :default => nil
attribute :channel, :kind_of => String
attribute :options, :kind_of => String
attribute :directives, :kind_of => Hash, :default => {}
attribute :zend_extensions, :kind_of => Array, :default => []
attribute :preferred_state, :default => 'stable'
