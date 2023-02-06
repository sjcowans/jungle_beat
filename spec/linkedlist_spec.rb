require "RSpec"
require "./lib/linkedlist"
require "./lib/node"

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

      expect(list.head.sound).to eq("doop")
    end

    it 'is has attributes' do
      list = LinkedList.new
      list.append("doop")

      expect(list.head).to be_instance_of(Node)
      expect(list.head.sound).to eq("doop")
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

    it 'can append new node' do
      list = LinkedList.new

      expect(list.append("deep")).to eq("deep")
    end

    it 'can go to next node' do
      list = LinkedList.new
      list.append("doop")
      list.append("deep")

      expect(list.head.next_node).to be_instance_of(Node)
      expect(list.head.next_node.sound).to eq("deep")
      expect(list.head.next_node.next_node).to eq(nil)
    end

    it 'can count multiple nodes' do
      list = LinkedList.new
      list.append("doop")
      list.append("deep")

      expect(list.count).to eq(2)
    end 
    
    it 'can list.to_string multiple nodes' do
      list = LinkedList.new
      list.append("doop")
      list.append("deep")

      expect(list.to_string).to eq("doop deep")
      expect(list.head.next_node.sound).to eq("deep")
    end

    it 'has working prepend' do
      list = LinkedList.new
      list.append("plop")
      list.append("suu")
      list.prepend("dop")

      expect(list.to_string).to eq("dop plop suu")
      expect(list.count).to eq(3)
    end
  end

  it 'has working insert' do
    list = LinkedList.new
    list.append("plop")
    list.append("suu")
    list.prepend("dop")
    list.insert(1, "woo")

    expect(list.to_string).to eq("dop woo plop suu")
  end
end
