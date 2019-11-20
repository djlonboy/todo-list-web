#TODO - test drive this model object to have

class ToDoList
  attr_reader :items

  def initialize
    @items = []
  end

  def add(item)
    @items << item
  end

  def list
    output = ""
    index = 1
    @items.each do |item|
      output += "#{index}. #{item}"+"<br>"
      index += 1
    end
    output
  end

  def complete(itemnumber)
    indexnumber = itemnumber - 1
    @items[indexnumber] += " - Complete"
  end

end
