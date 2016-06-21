# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

number = 1_000_000
number.times do |n|
  Blog.create!(
    subdomain: "blog-#{n}",
    name: "Blog #{n}" ,
    description: "A blog about all things big data #{n}")
end
