require 'pry'
class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  #CRUD for Pieces
  get "/library" do
    pieces = Piece.all
    pieces.to_json(include: :notes)
  end

  delete "/library/:id" do
    piece = Piece.find(params[:id])
    piece.destroy 
    piece.to_json
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
    piece.to_json
  end

  post "/library/:id" do
    note = Note.create(
      note: params[:note],
      piece_id: params[:id]
      )
    note.to_json
  end


  # CRUD for Concerts
  get "/concerts" do
    concerts = Concert.all
    concerts.to_json(include: [:performances, :ensembles])
  end

  delete "/concerts/:id" do
    concert = Concert.find(params[:id])
    concert.destroy
    concert.to_json
  end

  post "/concerts" do
    new_concert = Concert.create(
      concert_description: params[:concert_description],
      year: params[:year]
    )
    new_concert.to_json
  end

  patch "/concerts/:id" do
    concert = Concert.find(params[:id])
    concert.update(
      concert_description: params[:concert_description],
      year: params[:year]
    )
    concert.to_json
  end


  
# End of ApplicationController
end
