
  ##############
  ##  Brand  ###
  ##############

Brand.seed do |s|
  s.id = 1
  s.name = "Generic"
end

  ##############
  ## Category ##
  ##############

Category.seed do |s|
  s.id = 1
  s.name = "Fruits"
end

Category.seed do |s|
  s.id = 2
  s.name = "Greens"
end

Category.seed do |s|
  s.id = 3
  s.name = "Juices"
end

Category.seed do |s|
  s.id = 4
  s.name = "Dairy & Cheese"
end

Category.seed do |s|
  s.id = 5
  s.name = "Seasons & Dressings"
end

Category.seed do |s|
  s.id = 6
  s.name = "Produce"
end

  ##############
  ## Product  ##
  ##############


Product.seed do |s|
  s.id = 1
  s.name = "Strawberry"
  s.description = "Strawberry"
  s.price = 0
  s.quantity = 0
  s.brand_id = 2
  s.category_id = 1
end

Product.seed do |s|
  s.id = 2
  s.name = "Apple"
  s.description = "Apple"
  s.price = 0
  s.quantity = 0
  s.brand_id = 2
  s.category_id = 1
end



