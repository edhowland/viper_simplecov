# load_path.rb - extends $LOAD_PATH with Viper paths

# path to viper executable
raise RuntimeError.new 'File viper_bin_path.rb does not exist. Can be generated via: viper --bin-path-rb >./viper_bin_path.rb' unless File.exist?('./viper_bin_path.rb')
require_relative 'viper_bin_path'
if system("#{viper_bin_path} --ok")
  viper_lib = %x{#{viper_bin_path} --lib-path}.chomp
else
  raise RuntimeError.new('Could not find viper executable')
end

$LOAD_PATH.unshift viper_lib
$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)

require 'viper'
require 'viper_simplecov'
