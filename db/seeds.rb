# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Article.destroy_all
Author.destroy_all
Magazine.destroy_all

a1 = Author.create( name: "Edgar Allen Poe", age: 45 )
a2 = Author.create( name: "Robert Frost", age: 45 )
a3 = Author.create( name: "Hunter S. Thompson", age: 61)

m1 = Magazine.create( name: "Sports Illustrated", category: "Sports")
m2 = Magazine.create( name: "Max PC", category: "Technology")
m3 = Magazine.create( name: "Rolling Stone", category: "Lifestyle")

Article.create(title: "How to Code", author: a1, magazine: m2 )
Article.create(title: "League Review", author: a2, magazine: m1 )
Article.create(title: "Python Illustrated", author: a2, magazine: m2 )
Article.create(title: "Fear and Loathing in Las Vegas", author: a3, magazine: m3 )
Article.create(title: "Can you delete me", author: a3, magazine: m3 )
