require 'sinatra'
require 'sinatra/contrib/all'
require 'pry'

require_relative('./models/film')
also_reload('.models/*')

get '/film_all' do
  @result = Film.all
  erb(:index)
end

get '/film_detail/:id' do
  @film = Film.find(params[:id].to_i)
  erb(:detail)
end
