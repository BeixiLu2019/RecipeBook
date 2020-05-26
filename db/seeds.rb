puts 'Cleaning user database'
User.destroy_all

puts 'creating Users'
#file = URI.open('https://res.cloudinary.com/dvpcxhofq/image/upload/v1583243051/Philipp_Boston_kdjdty.jpg')
user = User.create!(
  # first_name: "amy",
  # last_name: "lu",
  email: "amy.lu@gmail.com",
  username: "Big Stomach Monster",
  password: "000000",
  # birthday: Date.new(1984,11,29),
  # bio: "Everything under control",
  # interest: "Music"
  )
#user.photo.attach(io: file, filename: 'photo')


puts 'Cleaning dishes database'
Dish.destroy_all

puts 'creating Dishes'
dish = Dish.create!(
  name: "麻婆豆腐/Ma Po Tofu",
  description: 'This mapo tofu recipe is the true blue, authentic real deal—the spicy, tongue-numbing, rice-is-absolutely-not-optional mapo tofu that you get in the restaurants!',
  user_id: User.first.id
  )

dish = Dish.create!(
  name: "红烧肉",
  description: 'This 红烧肉 recipe is the true blue, authentic real deal—the spicy, tongue-numbing, rice-is-absolutely-not-optional mapo tofu that you get in the restaurants!',
  user_id: User.first.id
  )

