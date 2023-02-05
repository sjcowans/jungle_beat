class Node
  attr_accessor :sound, :next_node

  def initialize(sound, next_node)
    self.sound = sound
    self.next_node = next_node
  end
end