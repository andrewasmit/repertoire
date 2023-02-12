puts "🌱 Seeding data..."

# Seeding pieces
Piece.create(title: "The Gilded Cage", composer: "Susan Powell", number_of_players: 4, genre: "drums", difficulty: 3.5)
Piece.create(title: "Under Attack!", composer: "Matt Moore", number_of_players: 4, genre: "drums", difficulty: 4)
Piece.create(title: "Stormbreak", composer: "Jim Casella", number_of_players: 8, genre: "mixed", difficulty: 3)
Piece.create(title: "The Final Boss", composer: "Andrew Smit", number_of_players: 8, genre: "mixed", difficulty: 2.5)
Piece.create(title: "Festival of the New Sun", composer: "Alan Keown", number_of_players: 6, genre: "drums", difficulty: 2)

# Seeding performances
Performance.new(piece_id: 1, ensemble_id: 1, concert_id: 1)
Performance.create(piece_id: 2, ensemble_id: 1, concert_id: 1)
Performance.create(piece_id: 3, ensemble_id: 1, concert_id: 1)
Performance.create(piece_id: 4, ensemble_id: 3, concert_id: 1)
Performance.create(piece_id: 5, ensemble_id: 2, concert_id: 1)

# Seeding Ensembles
Ensemble.create(name: "Lake Highlands HS Percussion Ensemble", grade_level:"High School")
Ensemble.create(name: "Lake Highlands JH Percussion Ensemble", grade_level:"Junior High")
Ensemble.create(name: "Forest Meadow JH Percussion Ensemble", grade_level:"Junior High")

# Seeding Notes
Note.create(note: "Perc. 1 is more involved than Perc. 4", piece_id: 2)
Note.create(note: "Perc. 2 & 3 need chops!", piece_id: 2)
Note.create(note: "Parts are easy, but ensemble skills are challenging!", piece_id: 3)

# Seeding Concert
Concert.create(concert_description: "An Evening of Percussion", year: 2023)



puts "✅ Done seeding!"
