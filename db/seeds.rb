puts "🌱 Seeding data..."

# Seeding pieces
Piece.create(title: "The Gilded Cage", composer: "Susan Powell", number_of_players: 4, genre: "drums", difficulty: 3.5)
Piece.create(title: "Under Attack!", composer: "Matt Moore", number_of_players: 4, genre: "drums", difficulty: 4)




puts "✅ Done seeding!"
