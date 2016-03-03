# path_shortener_spec.rb - specs for path_shortener

require_relative 'spec_helper'

def local_path file
  './' + File.basename(file)
end

describe 'path_shortener full' do
  subject { path_shortener(File.expand_path(__FILE__)) }

  specify { subject.must_equal local_path(__FILE__) }
end
