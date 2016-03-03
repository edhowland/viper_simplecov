# path_subtract_spec.rb - specs for path_subtract

require_relative 'spec_helper'
describe 'path_subtract /a/b/c/d/e.rb /a/b/c == ./d/e.rb' do
  subject { path_subtract '/a/b/c/d/e.rb', '/a/b/c' }

  specify { subject.must_equal './d/e.rb' }
end

describe 'relative_to_here' do
  subject { relative_to_here File.expand_path(__FILE__) }

  specify { subject.must_equal './path_subtract_spec.rb' }
end
