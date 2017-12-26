require 'sinatra'
load 'config.rb'

get '/' do
  @names = NameLogic.new.name_array
  erb :index
end

get '/mad_lib_answers' do
  @dog_name = params[:dog_name]
  erb :mad_lib_answers
end
