class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/library" do
    pieces = Piece.all
    pieces.to_json(include: :notes)
  end

  # get "/library/:id" do
  #   Piece.find(params[:id]).to_json(include: :notes)
  # end


  get "/concerts" do
    concerts = Concert.all
    concerts.to_json(include: [:performances, :ensembles])
  end

  # get "/concerts/:id" do
  #   concert = Concert.find(params[:id])
  #   concert.to_json(include: :pieces)
  # end


  
# End of ApplicationController
end
