require 'pry'

def roll_call_dwarves(array)
  array.each_with_index do |dwarf, index|
    puts "#{index+1}. #{dwarf}"
  end
end

def summon_captain_planet(array)
  array.collect do |call|
    call.capitalize << "!"
  end
end

def long_planeteer_calls(array)
  array.any? do |long|
    long.length > 4
  end
end

def find_the_cheese(array)
  cheese_types = ["cheddar", "gouda", "camembert"]

  # I found the & operator in my struggle and wanted to see if the tests would pass with it
  # turns out they did so im keeping it in here
  # incl = array & cheese_types
  # return incl[0]

  cheese_types.find do |cheese|
    array.include?(cheese)
  end
end
