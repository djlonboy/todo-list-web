require 'todolist'
describe ToDoList do

 it 'can add something into the todolist' do
   todolist = ToDoList.new
   todolist.add("testitem")
   expect(todolist.items).to include("testitem")
 end

 it 'read all the items in the todo list' do
   todolist = ToDoList.new
 end
end
