require 'pry'

# this method returns an array of hashes, which we'll use in the other methods
def spicy_foods 
  [
    { name: 'Green Curry', cuisine: 'Thai', heat_level: 9 },
    { name: 'Buffalo Wings', cuisine: 'American', heat_level: 3 },
    { name: 'Mapo Tofu', cuisine: 'Sichuan', heat_level: 6 }
  ]
end

def get_names(spicy_foods)
  spicy_foods.map{ |f| f[:name]}
end

def spiciest_foods(spicy_foods)
  so_spice=[]
  spicy_foods.filter do |f|
    if f[:heat_level]>5
      so_spice<<f
    end
  end
end

def print_spicy_foods(spicy_foods)
  spicy_foods.map do |f|
    puts "#{f[:name]} (#{f[:cuisine]}) | Heat Level : #{'🌶' * f[:heat_level]}"
  end
end

def get_spicy_food_by_cuisine(spicy_foods, cuisine)
  spicy_foods.find do |f|
    if f[:cuisine]==cuisine
      f
    end
  end
end

def sort_by_heat(spicy_foods)
  spicy_foods.sort_by do |f|
    f[:heat_level]
  end
end

def print_spiciest_foods(spicy_foods)
  spicy_foods.filter do |f|
    if f[:heat_level]>5
      puts "#{f[:name]} (#{f[:cuisine]}) | Heat Level: #{'🌶' * f[:heat_level]}"
    end
  end
end

def average_heat_level(spicy_foods)
  spice=0
  spicy_foods.each do |f|
    spice+=f[:heat_level]
  end
  spice/spicy_foods.length
end
binding.pry