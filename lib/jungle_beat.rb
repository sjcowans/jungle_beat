class JungleBeat
  attr_reader :list
  def initialize 
    self.head = nil
  end

  def list
    list = LinkedList.new
  end

  def append(sound)
    list.append(sound)
  end
end