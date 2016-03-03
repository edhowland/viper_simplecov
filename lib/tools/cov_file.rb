# cov_file.rb - method cov_file - opens path in current line of buffer

# TODO: class documentation
class ParseErrorCovFile < RuntimeError
    def initialize 
    super 'No file to open on current line'
  end
end

def cov_file buffer
  line = buffer.line.chomp
  parts = line.split(':')
  raise ParseErrorCovFile.new unless parts.length == 2
  perform!("o #{parts[0]}") { buffer }
  perform!('cov') { $buffer_ring.first }
end

