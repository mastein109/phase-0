def acc_group(array)
  group_size = 0
  amt_groups = 0
for x in (4..5) do
  if array.size % x >= 3 || array.size % x == 0
    group_size = x
    amt_groups = array.size/x
  else (array.size % 4 < 3) && (array.size % 5 < 3)
      group_size = 4
      num_groups = array.size / 4 + 1
  end
end
  group_hash = Hash.new{|v, k| v[k]=[]}
  group_num = 1
  array.each do |person|
    group_hash[group_num]<< person
    group_num += 1
    if group_num > amt_groups
      group_num = 1
    end
  end
  puts group_hash
end
