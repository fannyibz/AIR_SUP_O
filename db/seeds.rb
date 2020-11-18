require 'faker'

# puts "Deleting all records"
# User.destroy_all
# Service.destroy_all

# puts "Creating 5 fake hero services..."

# batman = User.new(username: "Batman", password: "123456", email: "batman@gmail.com", bio: "Hi, I'm Batman. #{Faker::Movie.quote}", avatar: Faker::LoremFlickr.image(size: "50x60", search_terms: ['sports']))

# file = URI.open("https://images.bfmtv.com/xkFdKHnQ38WvVL1Cr6kmM6mLOR0=/44x3:908x489/640x0/images/Robert-Pattinson-dans-The-Batman-387285.jpg")
# batman.avatar.attach(io: file, filename: "avatar", content_type: "image/jpg")
# batman.save!

# joker = User.create!(username: "The Joker", password: "123456", email: "joker@gmail.com", bio: "Hi, I'm The Joker. #{Faker::Movie.quote}", avatar: Faker::LoremFlickr.image(size: "900x900", search_terms: ['dccomics']))

# fanny = User.create!(username: "Fanny", password: "123456", email: "fanny@gmail.com", bio: "Hi, I'm Fanny. #{Faker::Movie.quote}", avatar: Faker::LoremFlickr.image(size: "900x900", search_terms: ['dccomics']))

# hadrien = User.create!(username: "Hadrien", password: "123456", email: "hadrien@gmail.com", bio: "Hi, I'm Hadrien. #{Faker::Movie.quote}", avatar: Faker::LoremFlickr.image(size: "900x900", search_terms: ['dccomics']))

# magali = User.create!(username: "Magali", password: "123456", email: "magali@gmail.com", bio: "Hi, I'm Magali. #{Faker::Movie.quote}", avatar: Faker::LoremFlickr.image(size: "900x900", search_terms: ['dccomics']))

# puts "users created!"

# puts "Creating 5 fake hero services..."

# help = Service.create!(name: 'Help & rescue', description: "I'll use my #{Faker::Superhero.power} to accomplish the mission", address: "#{Faker::Address.street_address}, #{Faker::Address.city}", photos: Faker::LoremFlickr.image(size: "900x900", search_terms: [Faker::Verb.ing_form]), user_id: batman.id)

# driving = Service.create!(name: 'Driving Stage', description: "I'll use my #{Faker::Superhero.power} to accomplish the mission", address: "#{Faker::Address.street_address}, #{Faker::Address.city}", photos: Faker::LoremFlickr.image(size: "900x900", search_terms: [Faker::Verb.ing_form]), user_id: batman.id)

# fighting = Service.create!(name: 'Learn to fight', description: "I'll use my #{Faker::Superhero.power} to accomplish the mission", address: "#{Faker::Address.street_address}, #{Faker::Address.city}", photos: Faker::LoremFlickr.image(size: "900x900", search_terms: [Faker::Verb.ing_form]), user_id: hadrien.id)

# rid_of = Service.create!(name: 'To rid of someone', description: "I'll use my #{Faker::Superhero.power} to accomplish the mission", address: "#{Faker::Address.street_address}, #{Faker::Address.city}", photos: Faker::LoremFlickr.image(size: "900x900", search_terms: [Faker::Verb.ing_form]), user_id: joker.id)

# escort = Service.create!(name: 'Escort', description: "I'll use my #{Faker::Superhero.power} to accomplish the mission", address: "#{Faker::Address.street_address}, #{Faker::Address.city}", photos: Faker::LoremFlickr.image(size: "900x900", search_terms: [Faker::Verb.ing_form]), user_id: joker.id)

# puts "Finished!"





# ---------------------- COMPLEX SEED -----------------------------

require 'faker'

puts "Deleting all records..."
User.destroy_all
Service.destroy_all

# créer un array de 10 liens de photos
avatar_photo = [
  "https://i.pinimg.com/originals/1b/b0/e8/1bb0e8072b1289f1acd6b80cfc941e59.jpg",
  "https://i.pinimg.com/originals/b4/80/1f/b4801fcc4874f2acfe19d2b75b412924.jpg",
  "https://action.scholastic.com/content/dam/classroom-magazines/action/issues/2019-20/040120/superman-becomes-a-star-superheroes-take-over-the-world/07-ACT-040120-p26-PT-Superman-HR.jpg",
  "https://i.pinimg.com/originals/67/00/1b/67001bbd5a91a08c121580b0579f3182.jpg",
  "https://medias.bangcast.io/podcast_card_cover/hadrien-5eac1b363aca2581817512.jpg"
]

puts "Creating 10 fake user heros..."
5.times do |i|
  username = Faker::DcComics.hero

  user = User.new(
    username: username,
    password: "123456",
    email: "#{username.gsub(/\s+/, "").downcase}@gmail.com",
    bio: "Hi, I'm #{username}. #{Faker::Movie.quote}",
  )

  link = avatar_photo[i]
  p link

  file = URI.open(link)
  user.avatar.attach(io: file, filename: "avatar", content_type: "image/jpg")
  user.save!

  puts "#{user.username} created!"
end

# créer un array de services_photos
service_photos = [
  "https://i.pinimg.com/originals/43/15/cf/4315cf6c20e80b942ed060f18eaab621.jpg",
  "https://i.pinimg.com/originals/a3/c3/b5/a3c3b5bad274ed52946331b45cb28c8f.jpg",
  "https://static.boredpanda.com/blog/wp-content/uploads/2015/07/The-Life-of-the-SuperHeroes-Pop-Art-Illustrations8__700.jpg",
  "https://i.pinimg.com/236x/0b/4a/29/0b4a29e56bf5acbfc5564b169ddcdcbc--disney-pop-art-arte-pop.jpg",
  "https://i.pinimg.com/originals/a2/77/56/a27756c60b63270c97aafd0ed10c7577.jpg",
  "https://assets.awwwards.com/awards/images/2013/06/secret-life-heroes%20(20).jpg",
  "https://i.pinimg.com/236x/24/9d/01/249d016209fbe2347bf8bfcc178a0db5--pop-art-illustration-art-illustrations.jpg",
  "https://static.boredpanda.com/blog/wp-content/uploads/2015/07/The-Life-of-the-SuperHeroes-Pop-Art-Illustrations13__700.jpg",
  "https://static.boredpanda.com/blog/wp-content/uploads/2015/07/The-Life-of-the-SuperHeroes-Pop-Art-Illustrations12__700.jpg",
  "https://www.greg-guillemin.com/images/work/paintings/sloh/fulls/11.jpg"
]

puts "Creating 10 fake hero services..."
10.times do
  user = User.pluck(:id).sample

  service = Service.new(
    name: "#{Faker::Verb.ing_form} service",
    description: "I'll use my #{Faker::Superhero.power} to accomplish the mission",
    address: "#{Faker::Address.street_address}, #{Faker::Address.city}",
    user_id: user
  )

  (1..2).to_a.sample.times do
    service.photos.attach(io: URI.open(service_photos.sample), filename: 'photos', content_type: 'image/png')
  end
  service.save!

  puts "#{service.name} created!"
end

puts "Finished!"





# -------------------------- FIRST SEED -------------------------

# puts "Deleting all records"
# User.destroy_all
# Service.destroy_all

# puts "Seeding users"
# batman = User.create!(username: 'Batman', password: "AZERTY", email: "batman@gmail.com", bio:"I have a great car.")
# tom = User.create!(username: 'Tom', password: "AZERTY", email: "tom@gmail.com", bio:"I love super heroes.")


# puts "Seeding services"
# help = Service.create!(name: 'Help & rescue', description: "To book if you are in danger.", address: "Paris", user_id: batman.id)
# kill = Service.create!(name: 'Kill & destroy', description: "To get rid of someone bad...", address: "Paris", user_id: batman.id)

# puts "Seed finished!"
