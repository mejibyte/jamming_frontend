require 'rubygems'
require 'sinatra'

get '/' do
  "Hello from Sinatra on Heroku!"
end

get '/chords/:chord' do |chord|
  data = Jamming::Chord.new(chord).to_png(:label => params[:label])
  content_type("image/png")
  data
end
