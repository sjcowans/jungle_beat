require "RSpec"
require "./lib/node"

RSpec.describe Node do
  describe 'initialize' do
    it 'it has node sound' do
      node = Node.new("plop")

      expect(node.sound).to eq("plop")
    end
    
    it 'has next node' do
      node = Node.new("plop")
    
      expect(node.next_node).to eq (nil)
    end
  end
end
