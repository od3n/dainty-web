require "test_helper"
require "bookmark"
require "services/base"
require "services/list_bookmarks"

describe ListBookmarks do
	it "retrieves a list of bookmarks" do
		ListBookmarks.new.list.must_be_kind_of Array
	end

	it "retrieves bookmark" do
		ListBookmarks.new.list.first.must_be_kind_of Bookmark
	end
end