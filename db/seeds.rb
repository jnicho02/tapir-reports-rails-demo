# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Greyhound.create(
  name: 'Gem',
  description: 'A lovely hound with a very sweet nature.',
  photo_uri: 'http://www.foreverhoundstrust.org/wp-content/uploads/2017/01/Glos_Charlie6-325x325.jpg'
)
Greyhound.create(
  name: 'Kizi',
  description: 'Was bounced back from my homes three times. Bonds quickly and will make a very devoted hound.',
  photo_uri: 'http://www.foreverhoundstrust.org/wp-content/uploads/2017/02/image-5.jpeg'
)
Greyhound.create(
  name: 'Katie',
  description: 'Really cute, with a lot of character and personality.',
  photo_uri: 'http://www.foreverhoundstrust.org/wp-content/uploads/2017/02/Farah-046-325x325.jpg'
)
