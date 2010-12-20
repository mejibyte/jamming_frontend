require 'rubygems'
require 'sinatra'

get '/' do
  "Hello from Sinatra on Heroku!"
end

get '/chords/:chord' do |chord|
  # data = Jamming::Chord.new(chord).to_png(:label => params[:label])
  # send_data data, :type => "image/png", :disposition => "inline"
  "Why is this giving a 404?"
end
