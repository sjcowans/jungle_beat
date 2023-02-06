class LinkedList
  attr_reader :last_node
  attr_accessor :head, :next_node, :count, :to_string, :sound

  def initialize
    self.head = nil
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
    sound
  end

    def to_string
      if self.head == nil
        return "" 
      else
        current_node = self.head
        sounds = [current_node.sound]
          while !current_node.next_node.nil?
            current_node = current_node.next_node
            sounds << current_node.sound 
          end
      end
      sounds.join(" ")
    end

    def count
      if(self.head == nil)
        return 0
      else
        node_count = 1
        current_node = self.head
          while !current_node.next_node.nil?
          current_node = current_node.next_node
          node_count += 1 
          end
      end
      node_count
    end
  end