require 'bookmarks'

describe Bookmarks do 
  describe "#all" do 
    it 'should show all bookmarks' do 
      expect(Bookmarks.all).to include("http://www.makersacademy.com")
    end 
  end 
end   