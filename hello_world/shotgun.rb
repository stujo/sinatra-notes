puts "Shotgunning! #{self}"



before_fork do
  puts "Before Fork"
end

after_fork do
  puts "After Fork"
end


