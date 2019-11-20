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
   expect(todolist.list).to eq "1. testitem1<br>2. testitem2<br>"
 end

 it 'can mark items as complete' do
   todolist = ToDoList.new
   todolist.add("testitem1")
   todolist.complete(1)
   expect(todolist.list).to eq "1. testitem1 - Complete<br>"
 end

 it 'returns an error if the item to complete is not in arry' do
   todolist = ToDoList.new
   todolist.add("testitem1")
   expect{ todolist.complete(2) }.to raise_error("Item not in array")
 end

 it 'returns an error if thr item to complete is already completed' do
   todolist = ToDoList.new
   todolist.add("testitem1")
   todolist.complete(1)
   expect{ todolist.complete(1) }.to raise_error("Item already completed")
 end

end
