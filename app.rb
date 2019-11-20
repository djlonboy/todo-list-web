require 'sinatra/base'
require_relative 'lib/todolist'
class ToDoListApp < Sinatra::Base

  #this creates an instance of the todolist
  $todolist = ToDoList.new

  get '/' do
    erb :home
  end

  get '/todolist' do
    @list = $todolist.list
    erb :todos
  end

  get '/add-item' do
    erb :additem
  end

  post '/add-item-do' do
    item = params['item']
    $todolist.add(item)
    redirect('/todolist')
  end

  get '/mark-complete' do
    @list = $todolist.list
    erb :markcomplete
  end

  post '/mark-complete-do' do
    number = params['itemnumber'].to_i
    $returnstring = $todolist.complete(number)
    redirect('/todolist')
  end

  run! if app_file == $0
end
