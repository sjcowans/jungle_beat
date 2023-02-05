class LinkedList
  attr_reader :to_string, :last_node
  attr_accessor :head, :next_node, :count

  def initialize
    self.head = nil
    @count = 0
    @to_string = ""
  end

  def append(sound)
    if(self.head.nil?)
      self.head = Node.new(sound, nil)
    else 
      last_node = self.head
      while(!last_node.next_node.nil?)
        last_node = last_node.next_node
      end
      last_node.next_node = Node.new(sound, nil)
    end
    @count += 1
      if @count == 1
        @to_string << "#{sound}"
      else 
        @to_string << " #{sound}"
      end
  end
end