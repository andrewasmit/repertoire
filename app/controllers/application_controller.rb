class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/library" do
    pieces = Piece.all
    pieces.to_json(include: :notes)
  end

  get "/library/:id" do
    Piece.find(params[:id]).to_json(include: :notes)
  end


  get "/concerts" do
    concerts = Concert.all
    concerts.to_json(include: { pieces: { include: :notes } })
  end


# End of ApplicationController
end
