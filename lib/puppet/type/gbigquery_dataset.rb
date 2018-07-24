# Copyright 2018 Google Inc.
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

# ----------------------------------------------------------------------------
#
#     ***     AUTO GENERATED CODE    ***    AUTO GENERATED CODE     ***
#
# ----------------------------------------------------------------------------
#
#     This file is automatically generated by Magic Modules and manual
#     changes will be clobbered when the file is regenerated.
#
#     Please read more about how to change this file in README.md and
#     CONTRIBUTING.md located at the root of this package.
#
# ----------------------------------------------------------------------------

require 'google/bigquery/property/dataset_access'
require 'google/bigquery/property/dataset_dataset_reference'
require 'google/bigquery/property/dataset_view'
require 'google/bigquery/property/enum'
require 'google/bigquery/property/integer'
require 'google/bigquery/property/namevalues'
require 'google/bigquery/property/string'
require 'puppet'

Puppet::Type.newtype(:gbigquery_dataset) do
  @doc = 'Datasets allow you to organize and control access to your tables.'

  autorequire(:gauth_credential) do
    credential = self[:credential]
    raise "#{ref}: required property 'credential' is missing" if credential.nil?
    [credential]
  end

  ensurable

  newparam :credential do
    desc <<-DESC
      A gauth_credential name to be used to authenticate with Google Cloud
      Platform.
    DESC
  end

  newparam(:project) do
    desc 'A Google Cloud Platform project to manage.'
  end

  newparam(:name, namevar: true) do
    # TODO(nelsona): Make this description to match the key of the object.
    desc 'The name of the Dataset.'
  end

  newproperty(:name, parent: Google::Bigquery::Property::String) do
    desc 'Dataset name'
  end

  newproperty(:access, parent: Google::Bigquery::Property::DatasetAccessArray) do
    desc 'Access controls on the bucket.'
  end

  newproperty(:creation_time, parent: Google::Bigquery::Property::Integer) do
    desc 'The time when this dataset was created, in milliseconds since the epoch. (output only)'
  end

  newproperty(:dataset_reference, parent: Google::Bigquery::Property::DatasetDatasetReferen) do
    desc 'A reference that identifies the dataset.'
  end

  newproperty(:default_table_expiration_ms, parent: Google::Bigquery::Property::Integer) do
    desc 'The default lifetime of all tables in the dataset, in milliseconds'
  end

  newproperty(:description, parent: Google::Bigquery::Property::String) do
    desc 'A user-friendly description of the dataset'
  end

  newproperty(:friendly_name, parent: Google::Bigquery::Property::String) do
    desc 'A descriptive name for the dataset'
  end

  newproperty(:id, parent: Google::Bigquery::Property::String) do
    desc <<-DOC
      The fully-qualified unique name of the dataset in the format projectId:datasetId. The dataset
      name without the project name is given in the datasetId field (output only)
    DOC
  end

  newproperty(:labels, parent: Google::Bigquery::Property::NameValues) do
    desc <<-DOC
      The labels associated with this dataset. You can use these to organize and group your
      datasets
    DOC
  end

  newproperty(:last_modified_time, parent: Google::Bigquery::Property::Integer) do
    desc <<-DOC
      The date when this dataset or any of its tables was last modified, in milliseconds since the
      epoch. (output only)
    DOC
  end

  newproperty(:location, parent: Google::Bigquery::Property::String) do
    desc <<-DOC
      The geographic location where the dataset should reside. Possible values include EU and US.
      The default value is US.
    DOC
    defaultto 'US'
  end
end
