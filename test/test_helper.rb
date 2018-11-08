$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)
require 'moira'

require 'test/unit'
require_relative 'supports/array_matcher'

class Moira::TestCase < Test::Unit::TestCase
  include ArrayMatcher
end
