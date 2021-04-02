require 'set'

def code_review names
  avalableNames = names.to_set
  results = {}
  names.each do |name|
    options = (avalableNames - [name].to_set).to_a
    if (options.length == 0)
      swap = results.values[0]
      results[name] = results[swap]
      results[swap] = avalableNames.to_a[0]
      return results
    end
    pick = options[rand(0..options.length - 1)]
    avalableNames.delete(pick)
    results[name] = pick
  end
  return results
end

programmers = ['Clyde', 'Ryan', 'Ben', 'Jesse', 'Isaac', 'Kyle']

while true do
  counter = 0

  puts "Is anyone absent?"
  programmers.each do |name, index|
    puts counter.to_s + " - "+ name
    counter += 1
  end 

  absent = gets

  if (absent.length == 1)
    break
  end

  programmers.delete_at(absent.to_i)

end


puts code_review programmers