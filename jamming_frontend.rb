require 'rubygems'
require 'sinatra'

get '/' do
  "See http://github.com/andmej/jamming_frontend for usage."
end

get '/chords/:chord' do |chord|
  data = Jamming::Chord.new(chord).to_png(:label => params[:label])
  content_type("image/png")
  data
end
