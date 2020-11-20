# ---------------------- COMPLEX SEED -----------------------------

# require 'faker'

# puts "Deleting all records..."
# User.destroy_all
# Service.destroy_all

# créer un array de 10 liens de photos
# avatar_photo = [
#   "https://i.pinimg.com/originals/1b/b0/e8/1bb0e8072b1289f1acd6b80cfc941e59.jpg",
#   "https://i.pinimg.com/originals/b4/80/1f/b4801fcc4874f2acfe19d2b75b412924.jpg",
#   "https://action.scholastic.com/content/dam/classroom-magazines/action/issues/2019-20/040120/superman-becomes-a-star-superheroes-take-over-the-world/07-ACT-040120-p26-PT-Superman-HR.jpg",
#   "https://i.pinimg.com/originals/67/00/1b/67001bbd5a91a08c121580b0579f3182.jpg",
#   "https://medias.bangcast.io/podcast_card_cover/hadrien-5eac1b363aca2581817512.jpg"
# ]

# puts "Creating 5 fake user heros..."
# 5.times do |i|
#   username = Faker::DcComics.hero

#   user = User.new(
#     username: username,
#     password: "123456",
#     email: "#{username.gsub(/\s+/, "").downcase}@gmail.com",
#     bio: "Hi, I'm #{username}. #{Faker::Movie.quote}",
#   )

#   link = avatar_photo[i]

#   file = URI.open(link)
#   user.avatar.attach(io: file, filename: "avatar", content_type: "image/jpg")
#   user.save!

#   puts "#{user.username} created!"
# end

# créer un array de services_photos
# service_photos = [
#   "https://i.pinimg.com/originals/43/15/cf/4315cf6c20e80b942ed060f18eaab621.jpg",
#   "https://i.pinimg.com/originals/a3/c3/b5/a3c3b5bad274ed52946331b45cb28c8f.jpg",
#   "https://static.boredpanda.com/blog/wp-content/uploads/2015/07/The-Life-of-the-SuperHeroes-Pop-Art-Illustrations8__700.jpg",
#   "https://i.pinimg.com/236x/0b/4a/29/0b4a29e56bf5acbfc5564b169ddcdcbc--disney-pop-art-arte-pop.jpg",
#   "https://i.pinimg.com/originals/a2/77/56/a27756c60b63270c97aafd0ed10c7577.jpg",
#   "https://assets.awwwards.com/awards/images/2013/06/secret-life-heroes%20(20).jpg",
#   "https://i.pinimg.com/236x/24/9d/01/249d016209fbe2347bf8bfcc178a0db5--pop-art-illustration-art-illustrations.jpg",
#   "https://static.boredpanda.com/blog/wp-content/uploads/2015/07/The-Life-of-the-SuperHeroes-Pop-Art-Illustrations13__700.jpg",
#   "https://static.boredpanda.com/blog/wp-content/uploads/2015/07/The-Life-of-the-SuperHeroes-Pop-Art-Illustrations12__700.jpg",
#   "https://www.greg-guillemin.com/images/work/paintings/sloh/fulls/11.jpg"
# ]

# puts "Creating 10 fake hero services..."
# 10.times do |i|
#   user = User.pluck(:id).sample

#   service = Service.new(
#     name: "#{Faker::Verb.ing_form} service",
#     description: "I'll use my #{Faker::Superhero.power} to accomplish the mission",
#     address: "#{Faker::Address.street_address}, #{Faker::Address.city}",
#     user_id: user
#   )

#   link = service_photos[i]

#   file = URI.open(link)
#   service.photos.attach(io: file, filename: "service", content_type: "image/jpg")
#   service.save!

#   puts "#{service.name} created!"
# end

# puts "Finished!"

# (1..2).to_a.sample.times do
#   service.photos.attach(io: URI.open(service_photos.sample), filename: 'photos', content_type: 'image/png')
# end
# service.save!




# -------------------------- FIRST SEED -------------------------

puts "> Deleting all records..."
User.destroy_all
Service.destroy_all

# ------------- HEROES -------------

puts "> Creating heroes..."

# BATMAN
batman = User.new(username: 'Batman', password: "123456", email: "batman@gmail.com", bio:"Dark is my color.")

file = URI.open("https://img.lemde.fr/2012/07/07/15/292.30846792291/465.35839543596/310.23363729625/688/0/60/0/ill_1729361_c0b3_201207071.0.988834193face_batman_ori.jpg")
batman.avatar.attach(io: file, filename: "avatar", content_type: "image/jpg")
batman.save!

puts "#{batman.username} created!"

# SUPERMAN
superman = User.new(username: 'Superman', password: "123456", email: "superman@gmail.com", bio:"Handome man just for you.")

file = URI.open("https://i.pinimg.com/originals/cb/9f/37/cb9f37eaf4205b8335d60c6cb91b0925.jpg")
superman.avatar.attach(io: file, filename: "avatar", content_type: "image/jpg")
superman.save!

puts "#{superman.username} created!"


# CATWOMAN
catwoman = User.new(username: 'Catwoman', password: "123456", email: "catwoman@gmail.com", bio:"Miaouuuuuuuuuuu.")

file = URI.open("https://i.pinimg.com/originals/c7/2a/aa/c72aaa5612c6756020d746ae32fbf980.jpg")
catwoman.avatar.attach(io: file, filename: "avatar", content_type: "image/jpg")
catwoman.save!

puts "#{catwoman.username} created!"

# WONDERWOMAN
wonderwoman = User.new(username: 'Wonderwoman', password: "123456", email: "wonderwoman@gmail.com", bio:"Best woman ever.")

file = URI.open("https://geeko.lesoir.be/wp-content/uploads/sites/58/2019/09/wonder-woman.jpg")
wonderwoman.avatar.attach(io: file, filename: "avatar", content_type: "image/jpg")
wonderwoman.save!

puts "#{wonderwoman.username} created!"

# AQUAMAN
aquaman = User.new(username: 'Aquaman', password: "123456", email: "aquaman@gmail.com", bio:"I swime like no one.")

file = URI.open("https://media.melty.fr/article-3963641-ratio15_720-f5/media.jpg")
aquaman.avatar.attach(io: file, filename: "avatar", content_type: "image/jpg")
aquaman.save!

puts "#{aquaman.username} created!"

# super_paper
super_paper = User.new(username: 'Super Paper', password: "123456", email: "superpaper@gmail.com", bio:"I create wonderfull toilet paper!!")

file = URI.open("https://media.melty.fr/article-3963641-ratio15_720-f5/media.jpg")
super_paper.avatar.attach(io: file, filename: "avatar", content_type: "image/jpg")
super_paper.save!

puts "#{super_paper.username} created!"

# ------------- SERVICES -------------

# puts "> Creating services..."

# photos = [
#   "https://guyhepner.com/wp-content/uploads/2015/06/081-It-Prickles.jpg",
#   "https://creativepool.com/marketing/images/secret-life-heroes-2.jpg",
#   "https://data.whicdn.com/images/301772591/original.jpg",
#   "https://i.pinimg.com/564x/36/65/a5/3665a577c51c0a370c18bf7c9b8a26c1.jpg",
#   "https://i0.wp.com/thaeger.com/wp-content/uploads/2014/07/The-Secret-Life-of-Heroes-Poison-Ivy.jpg",
#   "https://i1.wp.com/thaeger.com/wp-content/uploads/2014/07/The-Secret-Life-of-Heroes-catwoman.jpg",
#   "https://assets.awwwards.com/awards/images/2013/06/secret-life-heroes%20(20).jpg",
#   "https://i.pinimg.com/originals/dd/a7/a1/dda7a11c57f0e0b08e00ccc451cbafb1.jpg",
#   "https://frikilogia.com/wp-content/uploads/2013/02/popartcomic9.jpg",
#   "https://assets.awwwards.com/awards/images/2013/06/secret-life-heroes%20(31).jpg",
#   "https://cultureposters.com/wp-content/uploads/2019/12/secret-life-heroes-27.jpg",
#   "https://cultureposters.com/wp-content/uploads/2019/12/secret-life-heroes-26.jpg",
#   "https://alessioangiolini.files.wordpress.com/2014/02/1a1bfbe0fd6188a87f6bd0815e2ced6c.jpg",
#   "https://i.pinimg.com/originals/9e/79/a1/9e79a127aee66ec1579b1442a52ff165.png",
#   "https://mir-s3-cdn-cf.behance.net/project_modules/disp/df30756678291.5634518b4fdef.jpg",
#   "https://assets.awwwards.com/awards/images/2013/06/secret-life-heroes%20(4).jpg",
#   "https://creativepool.com/marketing/images/secret-life-heroes-33.jpg",
#   "https://assets.awwwards.com/awards/images/2013/06/secret-life-heroes%20(44).jpg",
#   "https://cultureposters.com/wp-content/uploads/2019/12/secret-life-heroes-46.jpg"
# ]



# # SUPER RESCUE (BATMAN)
# super_rescue_1 = Service.new(name: 'Super Rescue', description: "To book if you are in danger!", address: "16 villa Gaudelet, Paris", user_id: batman.id, price: 299)
# super_kicker = Service.new(name: 'Super Kicker', description: "To book if you want I kick some asses!", address: "12 rue Montgrand, Marseille", user_id: wonderwoman.id, price: 59)
# super_uber = Service.new(name: 'Super Uber', description: "To book if you want a cool and badass driver!", address: "17 rue de la République, Marseille", user_id: batman.id, price: 39)
# super_escort_1 = Service.new(name: 'Super Escort', description: "To book if you are single (or not)!", address: "109 rue Saint-Lazare, Paris", user_id: aquaman.id, price: 99)
# super_rescue_2 = Service.new(name: 'Super Rescue', description: "To book if you are in danger!", address: "Place du Dome Centre commercial les 4 Temps, Puteaux", user_id: wonderwoman.id, price: 320)
# super_swimming = Service.new(name: 'Super Swimming', description: "To book if you want to know swimming!", address: "78 Avenue des Champs-Elysées, Paris", user_id: aquaman.id, price: 29)

# [super_rescue_1, super_kicker, super_uber].each do |hero|
#   service_photos = photos.sample(3).map do |photo|
#     URI.open(photo)
#   end
#   service_photos.each do |photo|
#     hero.photos.attach(io: photo, filename: "service", content_type: "image/jpg")
#   end
#   hero.save!
#   puts "#{hero.name} created!"
# end



# SUPER KICKER (WONDERWOMAN)

# service_photos = photos.map do |photo|
#   URI.open(photo)
# end

# service_photos.sample(3).each do |photo|
#   super_kicker.photos.attach(io: photo, filename: "service", content_type: "image/jpg")
# end

# super_kicker.save!

# puts "#{super_kicker.name} created!"

# # SUPER ESCORT (AQUAMAN)

# service_photos = photos.map do |photo|
#   URI.open(photo)
# end

# service_photos.sample(3).each do |photo|
#   super_escort_1.photos.attach(io: photo, filename: "service", content_type: "image/jpg")
# end

# super_escort_1.save!

# puts "#{super_escort_1.name} created!"

# # SUPER UBER (BATMAN)

# service_photos = photos.map do |photo|
#   URI.open(photo)
# end

# service_photos.sample(3).each do |photo|
#   super_uber.photos.attach(io: photo, filename: "service", content_type: "image/jpg")
# end

# super_uber.save!

# puts "#{super_uber.name} created!"

# # SUPER COOKIES (SUPERMAN)
# super_cookies = Service.new(name: 'Super Cookies', description: "To book if you want some delicious cookies!", address: "23 Avenue de Wagram, Paris", user_id: superman.id, price: 16)

# service_photos = photos.map do |photo|
#   URI.open(photo)
# end

# service_photos.sample(3).each do |photo|
#   super_cookies.photos.attach(io: photo, filename: "service", content_type: "image/jpg")
# end

# super_cookies.save!

# puts "#{super_cookies.name} created!"

# # SUPER ESCORT (CATWOMAN)
# super_escort_2 = Service.new(name: 'Super Escort', description: "To book if you are single (or not)!", address: "32 Boulevard Haussmann, Paris", user_id: catwoman.id, price: 189)

# service_photos = photos.map do |photo|
#   URI.open(photo)
# end

# service_photos.sample(3).each do |photo|
#   super_escort_2.photos.attach(io: photo, filename: "service", content_type: "image/jpg")
# end

# super_escort_2.save!

# puts "#{super_escort_2.name} created!"

# # SUPER RESCUE (WONDERWOMAN)

# service_photos = photos.map do |photo|
#   URI.open(photo)
# end

# service_photos.sample(3).each do |photo|
#   super_rescue_2.photos.attach(io: photo, filename: "service", content_type: "image/jpg")
# end

# super_rescue_2.save!

# puts "#{super_rescue_2.name} created!"

# # SUPER SWIMMING (AQUAMAN)

# service_photos = photos.map do |photo|
#   URI.open(photo)
# end

# service_photos.sample(3).each do |photo|
#   super_swimming.photos.attach(io: photo, filename: "service", content_type: "image/jpg")
# end

# super_swimming.save!

# puts "#{super_swimming.name} created!"

# # SUPER SM (CATWOMAN)
# super_sm = Service.new(name: 'Super SM', description: "To book if you want... eumh, you know...", address: "33 voie des Sculpteurs, Puteaux", user_id: catwoman.id, price: 699)
# super_rescue_3 = Service.new(name: 'Super Rescue', description: "To book if you are in danger!", address: "26 Avenue de l'Opéra, Paris", user_id: superman.id, price: 149)

# service_photos = photos.map do |photo|
#   URI.open(photo)
# end

# service_photos.sample(3).each do |photo|
#   super_sm.photos.attach(io: photo, filename: "service", content_type: "image/jpg")
# end

# super_sm.save!

# puts "#{super_sm.name} created!"

# # SUPER RESCUE (SUPERMAN)

# service_photos = photos.map do |photo|
#   URI.open(photo)
# end

# service_photos.sample(3).each do |photo|
#   super_rescue_3.photos.attach(io: photo, filename: "service", content_type: "image/jpg")
# end

# super_rescue_3.save!

# puts "#{super_rescue_3.name} created!"

# puts "Finished!"
