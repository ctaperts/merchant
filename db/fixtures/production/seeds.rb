
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
  ## Products ##
  ##############


Product.seed(:id, 
{ id: 1, category_id: 2, name: "Artichokes", brand_id: 1, quantity: 0, price: 0 },
{ id: 2, category_id: 2, name: "Asparagus", brand_id: 1, quantity: 0, price: 0 },
{ id: 3, category_id: 2, name: "Avocado", brand_id: 1, quantity: 0, price: 0 },
{ id: 4, category_id: 2, name: "Broccoli", brand_id: 1, quantity: 0, price: 0 },
{ id: 5, category_id: 2, name: "Brussels", brand_id: 1, quantity: 0, price: 0 },
{ id: 6, category_id: 2, name: "Cabbage", brand_id: 1, quantity: 0, price: 0 },
{ id: 7, category_id: 2, name: "Celery", brand_id: 1, quantity: 0, price: 0 },
{ id: 8, category_id: 2, name: "Collard Greens", brand_id: 1, quantity: 0, price: 0 },
{ id: 9, category_id: 2, name: "Cucumber", brand_id: 1, quantity: 0, price: 0 },
{ id: 10, category_id: 2, name: "Endive", brand_id: 1, quantity: 0, price: 0 },
{ id: 11, category_id: 2, name: "Kale", brand_id: 1, quantity: 0, price: 0 },
{ id: 12, category_id: 2, name: "Lettuce", brand_id: 1, quantity: 0, price: 0 },
{ id: 13, category_id: 2, name: "Okra", brand_id: 1, quantity: 0, price: 0 },
{ id: 14, category_id: 2, name: "Peas", brand_id: 1, quantity: 0, price: 0 },
{ id: 15, category_id: 2, name: "Scallions", brand_id: 1, quantity: 0, price: 0 },
{ id: 16, category_id: 2, name: "Spinach", brand_id: 1, quantity: 0, price: 0 },
{ id: 17, category_id: 2, name: "Watercress", brand_id: 1, quantity: 0, price: 0 },
{ id: 18, category_id: 1, name: "Apples", brand_id: 1, quantity: 0, price: 0 },
{ id: 19, category_id: 1, name: "Bananas", brand_id: 1, quantity: 0, price: 0 },
{ id: 20, category_id: 1, name: "Blackberries", brand_id: 1, quantity: 0, price: 0 },
{ id: 21, category_id: 1, name: "Blue Berries", brand_id: 1, quantity: 0, price: 0 },
{ id: 22, category_id: 1, name: "Cranberries", brand_id: 1, quantity: 0, price: 0 },
{ id: 23, category_id: 1, name: "Coconuts", brand_id: 1, quantity: 0, price: 0 },
{ id: 24, category_id: 1, name: "Grapefruit", brand_id: 1, quantity: 0, price: 0 },
{ id: 25, category_id: 1, name: "Guava", brand_id: 1, quantity: 0, price: 0 },
{ id: 26, category_id: 1, name: "Honeydew", brand_id: 1, quantity: 0, price: 0 },
{ id: 27, category_id: 1, name: "Kiwi", brand_id: 1, quantity: 0, price: 0 },
{ id: 28, category_id: 1, name: "Lemons", brand_id: 1, quantity: 0, price: 0 },
{ id: 29, category_id: 1, name: "Limes", brand_id: 1, quantity: 0, price: 0 },
{ id: 30, category_id: 1, name: "Mango", brand_id: 1, quantity: 0, price: 0 },
{ id: 31, category_id: 1, name: "Peaches", brand_id: 1, quantity: 0, price: 0 },
{ id: 32, category_id: 1, name: "Pears", brand_id: 1, quantity: 0, price: 0 },
{ id: 33, category_id: 1, name: "Pineapples", brand_id: 1, quantity: 0, price: 0 },
{ id: 34, category_id: 1, name: "Plums", brand_id: 1, quantity: 0, price: 0 },
{ id: 35, category_id: 1, name: "Raspberries", brand_id: 1, quantity: 0, price: 0 },
{ id: 36, category_id: 1, name: "Strawberries", brand_id: 1, quantity: 0, price: 0 },
{ id: 37, category_id: 1, name: "Tangerines", brand_id: 1, quantity: 0, price: 0 },
{ id: 38, category_id: 1, name: "cantaloupe", brand_id: 1, quantity: 0, price: 0 },
{ id: 39, category_id: 1, name: "cherries", brand_id: 1, quantity: 0, price: 0 },
{ id: 40, category_id: 3, name: "grapefruit", brand_id: 1, quantity: 0, price: 0 },
{ id: 41, category_id: 3, name: "orange", brand_id: 1, quantity: 0, price: 0 },
{ id: 42, category_id: 3, name: "lime", brand_id: 1, quantity: 0, price: 0 },
{ id: 43, category_id: 3, name: "lemon", brand_id: 1, quantity: 0, price: 0 },
{ id: 44, category_id: 3, name: "pineapple", brand_id: 1, quantity: 0, price: 0 },
{ id: 45, category_id: 3, name: "strawberry", brand_id: 1, quantity: 0, price: 0 },
{ id: 46, category_id: 3, name: "lemonade", brand_id: 1, quantity: 0, price: 0 },
{ id: 47, category_id: 3, name: "tomato", brand_id: 1, quantity: 0, price: 0 },
{ id: 48, category_id: 6, name: "Beets", brand_id: 1, quantity: 0, price: 0 },
{ id: 49, category_id: 6, name: "Beans", brand_id: 1, quantity: 0, price: 0 },
{ id: 50, category_id: 6, name: "Carrots", brand_id: 1, quantity: 0, price: 0 },
{ id: 51, category_id: 6, name: "Corn", brand_id: 1, quantity: 0, price: 0 },
{ id: 52, category_id: 6, name: "Eggplant", brand_id: 1, quantity: 0, price: 0 },
{ id: 53, category_id: 6, name: "Mushrooms", brand_id: 1, quantity: 0, price: 0 },
{ id: 54, category_id: 6, name: "Onions", brand_id: 1, quantity: 0, price: 0 },
{ id: 55, category_id: 6, name: "Peppers", brand_id: 1, quantity: 0, price: 0 },
{ id: 56, category_id: 6, name: "Potatoes", brand_id: 1, quantity: 0, price: 0 },
{ id: 57, category_id: 6, name: "Shallots", brand_id: 1, quantity: 0, price: 0 },
{ id: 58, category_id: 6, name: "Squash", brand_id: 1, quantity: 0, price: 0 },
{ id: 59, category_id: 6, name: "Radish", brand_id: 1, quantity: 0, price: 0 },
{ id: 60, category_id: 6, name: "Tomatoes", brand_id: 1, quantity: 0, price: 0 },
{ id: 61, category_id: 6, name: "Turnips", brand_id: 1, quantity: 0, price: 0 },
{ id: 62, category_id: 6, name: "Yuca", brand_id: 1, quantity: 0, price: 0 },
{ id: 63, category_id: 4, name: "Butter", brand_id: 1, quantity: 0, price: 0 },
{ id: 64, category_id: 4, name: "Yogurt", brand_id: 1, quantity: 0, price: 0 },
{ id: 65, category_id: 4, name: "Muenster", brand_id: 1, quantity: 0, price: 0 },
{ id: 66, category_id: 4, name: "Swiss", brand_id: 1, quantity: 0, price: 0 },
{ id: 67, category_id: 4, name: "Colby", brand_id: 1, quantity: 0, price: 0 },
{ id: 68, category_id: 4, name: "Cheddar", brand_id: 1, quantity: 0, price: 0 },
{ id: 69, category_id: 4, name: "Parmesan", brand_id: 1, quantity: 0, price: 0 },
{ id: 70, category_id: 4, name: "Oaxaca", brand_id: 1, quantity: 0, price: 0 },
{ id: 71, category_id: 4, name: "Mozzarella", brand_id: 1, quantity: 0, price: 0 },
{ id: 72, category_id: 4, name: "Pepper Jack", brand_id: 1, quantity: 0, price: 0 },
{ id: 73, category_id: 4, name: "Provolone", brand_id: 1, quantity: 0, price: 0 },
{ id: 74, category_id: 4, name: "American", brand_id: 1, quantity: 0, price: 0 },
{ id: 75, category_id: 4, name: "Ricotta", brand_id: 1, quantity: 0, price: 0 },
{ id: 76, category_id: 4, name: "Sour Cream", brand_id: 1, quantity: 0, price: 0 },
{ id: 77, category_id: 4, name: "Heavy Whipping Cream", brand_id: 1, quantity: 0, price: 0 },
{ id: 78, category_id: 5, name: "basil", brand_id: 1, quantity: 0, price: 0 },
{ id: 79, category_id: 5, name: "bay leaves", brand_id: 1, quantity: 0, price: 0 },
{ id: 80, category_id: 5, name: "cilantro", brand_id: 1, quantity: 0, price: 0 },
{ id: 81, category_id: 5, name: "oregano", brand_id: 1, quantity: 0, price: 0 },
{ id: 82, category_id: 5, name: "parsley", brand_id: 1, quantity: 0, price: 0 },
{ id: 83, category_id: 5, name: "rosemary", brand_id: 1, quantity: 0, price: 0 },
{ id: 84, category_id: 5, name: "ranch dressing", brand_id: 1, quantity: 0, price: 0 },
{ id: 85, category_id: 5, name: "tartar sauce", brand_id: 1, quantity: 0, price: 0 },
{ id: 86, category_id: 5, name: "tarragon", brand_id: 1, quantity: 0, price: 0 },
{ id: 87, category_id: 5, name: "thyme", brand_id: 1, quantity: 0, price: 0 },
{ id: 88, category_id: 5, name: "pickle relish", brand_id: 1, quantity: 0, price: 0 },
{ id: 89, category_id: 5, name: "ketchup", brand_id: 1, quantity: 0, price: 0 },
{ id: 90, category_id: 5, name: "honey mustard dressing", brand_id: 1, quantity: 0, price: 0 },
{ id: 91, category_id: 5, name: "salsa medium", brand_id: 1, quantity: 0, price: 0 },
{ id: 92, category_id: 5, name: "Italian dressing", brand_id: 1, quantity: 0, price: 0 },
{ id: 93, category_id: 5, name: "bread crumbs", brand_id: 1, quantity: 0, price: 0 },
{ id: 94, category_id: 5, name: "marinara sauce", brand_id: 1, quantity: 0, price: 0 },
{ id: 95, category_id: 5, name: "pepper", brand_id: 1, quantity: 0, price: 0 },
{ id: 96, category_id: 5, name: "olive oil", brand_id: 1, quantity: 0, price: 0 },
{ id: 97, category_id: 5, name: "soybean oil", brand_id: 1, quantity: 0, price: 0 },
{ id: 98, category_id: 5, name: "Assorted vinegars", brand_id: 1, quantity: 0, price: 0 },
)




