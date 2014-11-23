require "test_helper"
require "services/remove_bookmark"

describe RemoveBookmark do
	it "removes a bookmark" do
		timestamp = Time.now.to_i
		options = { title: "Bookmark #{timestamp}", url: "http://tutsplus.net" }

		create_service = CreateBookmark.new options
		create_service.create

		id = create_service.bookmark.id

		service = RemoveBookmark.new id
		service.remove.must_equal 204
	end
end