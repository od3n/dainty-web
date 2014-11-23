require "test_helper"

describe "List bookmarks" do
	it "prints the list of bookmarks" do
		visit "/"

		page.must_have_selector "li.bookmark"
	end
end