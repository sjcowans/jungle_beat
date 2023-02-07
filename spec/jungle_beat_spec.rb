require "RSpec"
require "./lib/jungle_beat"
require "./lib/linked_list"
require "./lib/node"

RSpec.describe JungleBeat do
  describe 'initialize' do
    it 'is an instance of JungleBeat' do
      jb = JungleBeat.new

      expect(jb).to be_instance_of(JungleBeat)
    end

    it 'can make an instance of LinkeList' do
      jb = JungleBeat.new

      expect(jb.list).to be_instance_of(LinkedList)
    end

    it 'has head set to nil' do
      jb = JungleBeat.new

      expect(jb.list.head).to eq(nil)
    end

    it 'can append' do
      jb = JungleBeat.new
      jb.append("deep doo dill")

      expect(jb.list.head).to eq("deep doo dill")
    end

    it 'has correct linked list' do
      jb = JungleBeat.new
      jb.append("deep doo dill")
      
      expect(jb.list.head.data).to eq("deep")
      expect(jb.list.head.next_node.data).to eq("doo")
    end

    it 'has proper count' do
      jb = JungleBeat.new
      jb.append("deep doo dill")
      jb.append("woo hoo shu")

      expect(jb.count).to eq(6)
    end

   it 'can play sounds' do
      jb = JungleBeat.new
      jb.append("deep doo ditt woo hoo shu")

      expect(jb.list.count).to eq(6)
    end
  end
end
