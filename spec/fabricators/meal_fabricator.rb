food_arr = %w{Hamburger Pizza Pierogi Chips Fish Chicken Beef Tomato Soup Cucamber Ham Sandwich Eggs Carrot Cola Pepsi Water Kebab Pasta}

Fabricator(:meal) do
  name { food_arr.sample }
  cost { Faker::Commerce.price }
end