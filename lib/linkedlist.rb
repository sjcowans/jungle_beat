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

    def prepend(sound)
      previous_head = head
      self.head = Node.new(sound, previous_head)
      #needs to be self.head on line 33 or else the new head variable will stay in this method
    end

    def insert(position, sound)
      if self.head.nil?           
        this_node = Node.new(sound, nil)
        self.head = this_node
      end
      if position == 0 
        this_node = Node.new(sound, self.head)
        self.head = this_node
      end
      if position > 0
        pos = position - 1
        original = self.head
        before_original_node = self.head
        pos.times do
          before_original_node = original.next_node
          #grabs the node before the original node
        end 
        position.times do
          original_node = original.next_node
          #grabs the original node
        end 
        inserted_node = Node.new(sound, nil) 
        original_node_new_spot = before_original_node.next_node
        #sets after_current to the original node
        before_original_node.next_node = inserted_node
        #reassigs the original node to the inserted node
        inserted_node.next_node = original_node_new_spot
        #sets the original node to follow the inserted node
      end
    end

    def find(position, nodes)
      desired_node = self.head
      sounds = []
      position.times {desired_node = desired_node.next_node}
      nodes.times {
        sounds << desired_node.sound
        desired_node = desired_node.next_node
      }
      return sounds.join(" ")
    end

    def includes?(sound)
      current_node = self.head
      sounds = [current_node.sound]
        while !current_node.next_node.nil?
          current_node = current_node.next_node
          sounds << current_node.sound 
        end
      sounds.include? "#{sound}"
    end

    def pop
      second_to_last_node = self.head
      (count - 2).times {second_to_last_node = second_to_last_node.next_node}
      return second_to_last_node.next_node.sound
      second_to_last_node.next_node = nil
    end
  end