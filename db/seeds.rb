# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
products_menu = Product.create([{name:'tea table',category:'wood - table',specs:'Oak wood',image:'NULL',price:900, seller_id:1},
                             {name:'Coat hanger',category:'wood ',specs:'Oak wood',image:'NULL',price:350,seller_id:1},
{name:'tea table',category:'wood - table',specs:'Mahogini wood',image:'NULL',price:775,seller_id:2},
{name:'clay tea pot',category:'clay - pot',specs:'clay',image:'NULL',price:250,seller_id:2},
{name:'clay vase',category:'clay - vase',specs:'clay',image:'NULL',price:160,seller_id:2},
{name:'straw hat',category:'straw - clothing',specs:'straw',image:'NULL',price:80,seller_id:2}])

Seller.create(email:'joenader510@gmail.com',password:'myjoe456')