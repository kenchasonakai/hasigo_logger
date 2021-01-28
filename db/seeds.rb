# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "csv"

CSV.foreach('db/municipalities.csv', headers: true) do |row|
  Municipality.create(
    prefecture_no: row['prefecture_no'],
    prefecture_name: row['prefecture_name'],
    muni_cd: row['muni_cd'],
    muni_name: row['muni_name']
  )
end
