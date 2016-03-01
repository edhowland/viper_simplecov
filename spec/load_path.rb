# load_path.rb - extends $LOAD_PATH with Viper paths

# path to viper executable
viper_path = '/home/vagrant/src/viper/bin/viper'
if system("#{viper_path} --ok")
  viper_lib = %x{#{viper_path} --lib-path}.chomp
else
  raise RuntimeError.new('Could not find viper executable')
end

$LOAD_PATH.unshift viper_lib
$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)

require 'viper'
require 'viper_simplecov'
