#TODO - test drive this model object to have

class ToDoList
  attr_reader :items

  def initialize
    @items = []
  end

  def add(item)
    @items << item
  end

end
