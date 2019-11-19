require 'todolist'
describe ToDoList do

 it 'can add something into the todolist' do
   todolist = ToDoList.new
   todolist.add("testitem")
   expect(todolist.items).to include "testitem"
 end

 it 'read all the items in the todo list' do
   todolist = ToDoList.new
   todolist.add("testitem1")
   todolist.add("testitem2")
   expect(todolist.list).to eq "1. testitem1\n2. testitem2\n"
 end
 
end
