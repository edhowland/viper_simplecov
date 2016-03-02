# path_subtract.rb - method path_subtract

def path_subtract full_p, rel_p
  full_a = full_p.split '/'
  rel_a = rel_p.split '/'
  diff_a = full_a - rel_a
  './' + diff_a.join('/')
end

