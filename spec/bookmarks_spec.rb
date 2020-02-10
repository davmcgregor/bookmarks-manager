require 'bookmarks'

describe Bookmarks do 
  describe "#all" do 
    it 'should show all bookmarks' do 
      expect(Bookmarks.all).to be_an Array
    end 
  end 
end   