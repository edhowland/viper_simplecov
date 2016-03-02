# path_subtract_spec.rb - specs for path_subtract

require_relative 'spec_helper'
describe 'path_subtract /a/b/c/d/e.rb /a/b/c == ./d/e.rb' do
  subject { path_subtract '/a/b/c/d/e.rb', '/a/b/c' }

  specify { subject.must_equal './d/e.rb' }
end
