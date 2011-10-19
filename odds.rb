def factorial(n)
  n == 0 ? 1 : n * factorial(n - 1)
end

def probability(n, k)
  (factorial(60) * factorial(20) * factorial(n) * factorial(80 - n)).quo(factorial(80) * factorial(k) * factorial(20 - k) * factorial(n - k) * factorial(60 - n + k))
end

puts "Enter selections made on Keno: "
selections = gets.to_i

puts " n - Probability - Odds Against to 1"
(0..selections).each do |i|
  p = probability(selections, i)
  puts "%2d - %0.8f%% - %17.4f" % [i, p, 1.0 / p]
end

