day_of_week = `date +%A`
days_off = %w[Saturday Sunday]
if days_off.include? day_of_week
  puts 'go play'
else
  puts 'get to work'
end
