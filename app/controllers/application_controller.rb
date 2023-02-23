require 'pry'
class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  #  ******** CRUD for Pieces ******** 
  get "/library" do
    pieces = Piece.all
    pieces.to_json(include: :notes)
  end

  delete "/library/:id" do
    piece = Piece.find(params[:id])
    piece.destroy 
    Piece.all.to_json(include: :notes)
  end

  post "/library" do
    note = Note.create(note: params[:notes])
    new_piece = Piece.create(
      title: params[:title],
      composer: params[:composer], 
      number_of_players: params[:number_of_players],
      genre: params[:genre],
      difficulty: params[:difficulty],
      arranger: params[:arranger],
      reference_recording: params[:reference_recording],
    )
    new_piece.connect_note_to_piece
    new_piece.to_json(include: :notes)
  end

  patch "/library/:id" do
    note = Note.create(note: params[:notes])
    piece = Piece.find(params[:id])
    piece.update(
      reference_recording: params[:reference_recording],
      composer: params[:composer],
      arranger: params[:arranger],
      title: params[:title],
      number_of_players: params[:number_of_players],
      genre: params[:genre],
      difficulty: params[:difficulty]
    )
    piece.connect_note_to_piece
    piece.to_json(include: :notes)
  end

  post "/library/:id" do
    updated_piece = Piece.find(params[:id])
    note = Note.create(
      note: params[:note],
      piece_id: params[:id]
      )
      updated_piece.to_json(include: :notes)
  end

  delete "/library/notes/:id" do 
    note = Note.find(params[:id])
    associated_piece = Piece.find(note.piece_id)
    note.destroy
    associated_piece.to_json(include: :notes)
  end


  #  ******** CRUD for Concerts ******** 

  get "/concerts" do
    concerts = Concert.all
    concerts.to_json(include: [:performances, :ensembles])
  end

  delete "/concerts/:id" do
    target_id = Concert.find(params[:id]).id
    Performance.all.each do |p|
      if p.concert_id == target_id then
        p.destroy
      end
    end
    Concert.find(params[:id]).destroy
    Concert.all.to_json(include: [:performances, :ensembles])
  end

  delete "/concerts/performances/:id" do
    concert = Concert.find(Performance.find(params[:id]).concert_id)
    performance = Performance.find(params[:id])
    performance.destroy
    concert.to_json(include: [:performances, :ensembles])
  end

  post "/concerts" do
    new_concert = Concert.create(
      concert_description: params[:concert_description],
      year: params[:year]
    )
    Concert.all.to_json(include: [:performances, :ensembles])
  end

  patch "/concerts/performance/:id" do
    concert = Concert.find(params[:id])
    performance = Performance.create(
      concert_id: params[:concert],
      piece_id: Piece.find_by(title: params[:performance]).id,
      ensemble_id: Ensemble.find_by(name: params[:ensemble]).id
    )
    concert.to_json(include: [:performances, :ensembles])
  end

  patch "/concerts/:id" do
    concert = Concert.find(params[:id])
    concert.update(
      concert_description: params[:concert_description],
      year: params[:year]
    )
    concert.to_json(include: [:performances, :ensembles])
  end


  #  ******** CRUD for Ensembles ******** 
  get "/ensembles" do
    Ensemble.all.to_json
  end

  post "/ensembles" do
    ens = Ensemble.create(
      name: params[:name],
      grade_level: params[:grade_level]
    )
    ens.to_json
  end


  
# End of ApplicationController
end
