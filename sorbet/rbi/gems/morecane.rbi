# This file is autogenerated. Do not edit it by hand. Regenerate it with:
#   srb rbi gems

# typed: true
#
# If you would like to make changes to this file, great! Please create the gem's shim here:
#
#   https://github.com/sorbet/sorbet-typed/new/master?filename=lib/morecane/all/morecane.rbi
#
# morecane-0.2.0

module Morecane
end
class Anonymous_Struct_8 < Struct
  def opts; end
  def opts=(_); end
  def self.[](*arg0); end
  def self.inspect; end
  def self.members; end
  def self.new(*arg0); end
end
class Morecane::EncodingCheck < Anonymous_Struct_8
  def file_names; end
  def find_violations(file_name); end
  def self.options; end
  def violations; end
end
class Anonymous_Struct_9 < Struct
  def opts; end
  def opts=(_); end
  def self.[](*arg0); end
  def self.inspect; end
  def self.members; end
  def self.new(*arg0); end
end
class Morecane::MustMatchCheck < Anonymous_Struct_9
  def file_names; end
  def find_violations(file_name); end
  def self.options; end
  def violations; end
end
class Anonymous_Struct_10 < Struct
  def opts; end
  def opts=(_); end
  def self.[](*arg0); end
  def self.inspect; end
  def self.members; end
  def self.new(*arg0); end
end
class Morecane::MustNotMatchCheck < Anonymous_Struct_10
  def file_names; end
  def find_violations(file_name); end
  def self.options; end
  def violations; end
end