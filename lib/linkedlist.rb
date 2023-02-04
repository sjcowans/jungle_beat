class LinkedList
  attr_reader :head, :node, :to_string, :count
  def initialize
    @head = nil
    @to_string = ""
  end

  def count
    if @head == nil
      count = 1
    else 
      current_node = @head
      count = 1
      until current_node.next_node == nil
        current_node = current_node.next_node
        count += 1
      end
      count
    end
  end
  
  def append(data)
    if @head == nil
    @head = Node.new(data)
    else 
    @next_node = Node.new(data)
    data
    end
    if @count == 1
    @to_string << "#{data}"
    else 
    @to_string << " #{data}"
    end
  end
end
