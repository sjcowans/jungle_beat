require "./lib/node"

Rspec.describe Node do
  describe 'initialize' do
    it 'is an instance of node' do
      node = Node.new("plop")

      expect(node.data).to eq("plop")
    end
    
    it 'has next node' do
      node = Node.new("plop")
    
    expect(next_node).to eq (nil)
    end
  end
end
