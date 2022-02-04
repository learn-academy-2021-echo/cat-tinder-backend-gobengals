# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


cats = [

{
  name: 'Little Man',
  age: 4,
  enjoys: 'Hunting rabbits',
  image: 'https://cdn11.bigcommerce.com/s-6hggcos7y1/images/stencil/1280x1280/products/1957/3541/orangeandwhite__10764.1552406611.jpg?c=2'
},
{
  name: 'Gacy',
  age: 3,
  enjoys: 'Hiding',
  image: 'https://images.unsplash.com/photo-1576818915239-7267678c48d1?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1618&q=80'
},
{
  name: 'Garfield',
  age: 42,
  enjoys: 'lasagna',
  image: 'https://48hills.org/wp-content/uploads/2021/03/Buff-Garfield.jpg'
},
{
  name:'Taylor',
  age: 32,
  enjoys: 'signing',
  image: 'https://deadline.com/wp-content/uploads/2019/12/cats-2-1.jpg?w=681&h=383&crop=1'
}

]

cats.each do |value|
  Cat.create value
  p "creating the cat attributes #{value}"
end
