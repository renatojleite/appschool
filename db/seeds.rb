# Offer.destroy_all
# User.destroy_all
# Category.destroy_all

# categories = ["Primeira Série", "Segunda Série", "Terceira Série", "Quarta Série", "Quinta Série", "Sexta Série", "Camiseta", "Shorts", "Moletom"]
# categories.each do |categorie|
#   Category.create(name: categorie)
# end

# puts "Creating Users...."
# User.create!(email: "contato1@banana.com", password: "123456" )
# User.create!(email: "contato2@banana.com", password: "123456" )
# User.create!(email: "contato3@banana.com", password: "123456" )
# User.create!(email: "contato4@banana.com", password: "123456" )
# puts "You have #{User.count} users"

# puts "Create offers"
# Offer.create(name: "Iniciando com ciências", description: "Livro sobre zoologia", price: "11", category: Category.all.sample, user: User.first )
# Offer.create(name: "Shorts", description: "description2", price: "12", category:Category.all.sample, user: User.first )
# Offer.create(name: "Mundo da Matemática", description: "description3", price: "13", category:Category.all.sample, user: User.first )
