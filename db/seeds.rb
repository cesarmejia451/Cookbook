Recipe.destroy_all

user = User.create(
  {email: "cesarmejia1@yahoo.com", password: "password"}
)

Recipe.create([
  {title: "Raw Eggs", user_id: user.id, ingredients: "Chicken", directions: "Squeeze the chicken", image: "http://swansonhealthcenter.com/wp-content/uploads/2011/07/Egg.jpg", preptime: 1},
  {title: "Empty Sandwich", user_id: user.id, ingredients: "Two slices of bread", directions: "Place slices of bread next to each other.", image: "http://www.phoenixisstrategic.com/wp-content/uploads/2013/05/blog-empty-sandwich.jpg", preptime: 72},
  {title: "Licorice", user_id: user.id, ingredients: "Licorice", directions: "Buy licroice from store.", image: "http://www.seelecttea.com/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/l/i/licorice1.jpg", preptime: 120},
  {title: "Mud Pie", user_id: user.id, ingredients: "Flour, water, mud.", directions: "Mix flour and water, add mud, bake at 350 degrees for 1 hour.", image: "http://cdn-image.myrecipes.com/sites/default/files/styles/300x300/public/image/recipes/sl/05/12/mocha-mud-pie-sl-257949-x.jpg?itok=_ChocANl", preptime: 84},
  {title: "Pizza", user_id: user.id, ingredients: "Flour, water, pepperoni, cheese", directions: "Mix flour and water, add cheese and pepperoni, shape as a heart, bake in oven on self-clean mode.", image: "http://twopizzapals.weebly.com/uploads/2/3/6/0/23602608/1338890_orig.jpg", preptime: 455},
  {title: "Corn on the cob", user_id: user.id, ingredients: "Corn, cob", directions: "Place corn on the cob, grill for 20 minutes, enjoy!", image: "http://www.scientificamerican.com/sciam/cache/file/59C0122F-509C-4FEE-99A67FC20C50CEF1.jpg", preptime: 22}
])
