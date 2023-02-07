class JungleBeat
  attr_reader :list
  def initialize 
    @list = LinkedList.new
  end

  def list
    @list
  end

  def append(sounds)
    all_sounds = sounds.split(" ")
    all_sounds.each do |s| 
      list.append(s) 
    end
    sounds
  end

  def count
    list.count
  end

  def play
    `say "#{list.to_string}"`
  end
end
