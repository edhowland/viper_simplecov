# viper_simplecov.rb - Initialization for viper_simplecov Viper package

require_relative 'viper_simplecov/version'
require_relative 'tools'

# Install the load_cov, cov and cov_report commands:
Viper::Session[:commands][:load_cov] = ->(_b, *args) { load_cov args[0]; say "Coverage repor #{args[0]} loaded" } 
Viper::Session[:commands][:cov] = ->(b, *_args) { sc = ScratchBuffer.new; sc.name = "Coverage report for #{b.name}"; cov(sc, b.name); $buffer_ring.unshift sc; sc.beg; say sc.name; say sc.line }
Viper::Session[:commands][:cov_report] = ->(_b, *_args) { cov_report; say $buffer_ring[0].name.to_s }
Viper::Session[:commands][:cov_file] = ->(b, *args) { cov_file b }
