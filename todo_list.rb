require "./todo_item"

class TodoList
  attr_reader :name, :todo_items

  def initialize(name)
    @name = name
    @todo_items = []
  end

  def add_item(name)
    todo_items.push(TodoItem.new(name))
  end

  def remove_item(name)
    if index = find_index(name)
      todo_items.delete_at(index)
      return true
    else
      return false
    end
  end

  def mark_complete(name)
    if index = find_index(name)
      todo_items[index].mark_complete!
      return true
    else
      return false
    end
  end

  def find_index(name)
    index = 0
    found = false
    todo_items.each do |todo_item|
      if todo_item.name == name
        found = true
      end
      if found
        break
      else
        index += 1
      end
    end
    if found
      return index
    else
      return nil
    end
  end
end

todo_list = TodoList.new("Groceries")
todo_list.add_item("Milk")
todo_list.add_item("Eggs")
todo_list.add_item("Bread")

if todo_list.remove_item("Eggs")
  puts "Eggs were removed from the list."
end

if todo_list.mark_complete("Milk")
  puts "Milk was marked as complete."
end
puts todo_list.inspect