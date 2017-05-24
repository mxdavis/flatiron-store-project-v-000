rspec ./spec/features/store_home_feature_spec.rb:54 # Feature Test: Store Headers not
 logged in has a sign in link
rspec ./spec/features/store_home_feature_spec.rb:59 # Feature Test: Store Headers not
 logged in has a sign up link
rspec ./spec/features/store_home_feature_spec.rb:72 # Feature Test: Store Headers log
ged in tells the user who they are signed in as
rspec ./spec/features/store_home_feature_spec.rb:77 # Feature Test: Store Headers log
ged in has a sign out link
rspec ./spec/features/store_home_feature_spec.rb:82 # Feature Test: Store Headers log
ged in lets users sign out
rspec ./spec/models/cart_spec.rb:20 # Cart can calculate its total
rspec ./spec/models/cart_spec.rb:11 # Cart items has many line_items built through in
stance method
rspec ./spec/models/cart_spec.rb:15 # Cart items has many items through line_items
rspec ./spec/models/cart_spec.rb:27 # Cart#add_item creates a new unsaved line_item f
or new item
rspec ./spec/models/cart_spec.rb:33 # Cart#add_item creates an appropriate line_item
rspec ./spec/models/cart_spec.rb:41 # Cart#add_item updates existing line_item instea
d of making new when adding same item
rspec ./spec/models/category_spec.rb:5 # Category has many items
rspec ./spec/models/item_spec.rb:9 # Item belongs to a category
rspec ./spec/models/item_spec.rb:20 # Item with line_items has many line_items consol
idated by line_item quantity
rspec ./spec/models/item_spec.rb:31 # Item.available_items only returns items with in
ventory
rspec ./spec/models/line_item_spec.rb:10 # LineItem belongs to a cart
rspec ./spec/models/line_item_spec.rb:14 # LineItem belongs to an item
rspec ./spec/models/line_item_spec.rb:18 # LineItem has a quantity, default 1
rspec ./spec/models/user_spec.rb:8 # User has many carts
rspec ./spec/models/user_spec.rb:13 # User has a current_cart