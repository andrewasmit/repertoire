puts "🌱 Seeding data..."

# Clearing all data before seeding
Piece.destroy_all
Ensemble.destroy_all
Note.destroy_all
Performance.destroy_all
Concert.destroy_all

# Seeding pieces
Piece.create(title: "The Gilded Cage", composer: "Susan Powell", number_of_players: 4, genre: "Drums", difficulty: 3, reference_recording:"https://www.youtube.com/watch?v=Q0XJ-TNO66c")
Piece.create(title: "Under Attack!", composer: "Matt Moore", number_of_players: 4, genre: "Drums", difficulty: 4, reference_recording:"https://www.youtube.com/watch?v=UiKHBb745JY")
Piece.create(title: "Stormbreak", composer: "Jim Casella", number_of_players: 8, genre: "Mixed", difficulty: 3, reference_recording:"https://www.youtube.com/watch?v=d1BGRafixgc")
Piece.create(title: "The Final Boss", composer: "Andrew Smit", number_of_players: 8, genre: "Mixed", difficulty: 2, reference_recording:"https://soundcloud.com/tapspacepublications/the-final-boss-andrew-smit")
Piece.create(title: "Festival of the New Sun", composer: "Alan Keown", number_of_players: 6, genre: "Drums", difficulty: 2, reference_recording:"https://soundcloud.com/tapspacepublications/festival-of-the-new-sun-alan")
Piece.create(title: "Overture to Barber of Seville", composer: "Gioachino Rossini", arranger: "Andrew Smit", number_of_players: 10, genre: "Mallets", difficulty: 4, reference_recording:"https://www.youtube.com/watch?v=b7MHZ4at4Ds")
Piece.create(title: "Fanfare", composer: "Jonathan Ovalle", number_of_players: 10, genre: "Mixed", difficulty: 3, reference_recording:"https://www.youtube.com/watch?v=e5MpVhP4K9w")
Piece.create(title: "Shared Space", composer: "Ivan Trevino", number_of_players: 7, genre: "Mixed", difficulty: 3, reference_recording:"https://www.youtube.com/watch?v=RGftfCpkb-A")

# Seeding performances
Performance.create(piece_id: 1, ensemble_id: 1, concert_id: 1)
Performance.create(piece_id: 2, ensemble_id: 1, concert_id: 1)
Performance.create(piece_id: 3, ensemble_id: 1, concert_id: 1)
Performance.create(piece_id: 4, ensemble_id: 3, concert_id: 1)
Performance.create(piece_id: 5, ensemble_id: 2, concert_id: 1)
Performance.create(piece_id: 6, ensemble_id: 1, concert_id: 2)
Performance.create(piece_id: 7, ensemble_id: 2, concert_id: 2)
Performance.create(piece_id: 8, ensemble_id: 1, concert_id: 2)

# Seeding Ensembles
Ensemble.create(name: "Lake Highlands HS Percussion Ensemble", grade_level:"High School")
Ensemble.create(name: "Lake Highlands JH Percussion Ensemble", grade_level:"Junior High")
Ensemble.create(name: "Forest Meadow JH Percussion Ensemble", grade_level:"Junior High")

# Seeding Notes
Note.create(note: "Perc. 1 is more involved than Perc. 4", piece_id: 2)
Note.create(note: "Perc. 2 & 3 need chops!", piece_id: 2)
Note.create(note: "Parts are easy, but ensemble skills are challenging!", piece_id: 3)
Note.create(note: "Parts are not that hard, but there are so many notes!", piece_id: 6)
Note.create(note: "Ensemble skills with lots of ostinati", piece_id: 7)

# Seeding Concert
Concert.create(concert_description: "An Evening of Percussion", year: 2023)
Concert.create(concert_description: "An Evening of Percussion", year: 2022)


puts "✅ DONE!"
