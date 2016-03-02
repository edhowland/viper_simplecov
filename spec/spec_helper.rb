# spec_helper.rb - helper for Bungaku specs

require_relative 'load_simplecov'
require_relative 'load_path'

require 'minitest/autorun'

SRC_ROOT = File.expand_path(File.dirname(File.expand_path(__FILE__)) + '/..')

