require "babymetal/version"
require "babymetal/url"
require "babymetal/su_metal"
require "babymetal/yui_metal"
require "babymetal/moa_metal"
require "babymetal/member"
require "date"

module Babymetal
  def self.shout
    Babymetal::Member.new.shout
  end
end
