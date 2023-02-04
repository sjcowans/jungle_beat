require "RSpec"
require "./lib/linked_list"

RSpec.describe LinkedList do
  describe 'initialize' do
    it 'is an instance of LinkedList' do
      list = LinkedList.new
      
      expect(list).to be_instance_of(LinkedList)
    end

    it 'has head' do
      list = LinkedList.new

      expect(list.head).to eq(nil)
    end

    it 'has append' do
      list = LinkedList.new
      list.append("doop")

      expect(list.data).to eq("doop")
    end

    it 'is has attributes' do
      list = LinkedList.new
      list.append("doop")

      expect(list.head).to be_instance_of(Node)
      expect(list.head.data).to eq("doop")
      expect(list.head.next_node).to eq(nil)
    end

    it 'can count' do
      list = LinkedList.new
      list.append("doop")

      expect(list.count).to eq(1)
    end

    it 'has to_string' do
      list = LinkedList.new
      list.append("doop")

      expect(list.to_string).to eq("doop")
    end
  end
end